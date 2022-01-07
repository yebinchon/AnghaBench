
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kfd_mem_obj {unsigned int range_start; unsigned int range_end; int cpu_ptr; scalar_t__ gpu_addr; } ;
struct kfd_dev {unsigned int gtt_sa_num_of_chunks; unsigned int gtt_sa_chunk_size; int gtt_sa_lock; int gtt_sa_bitmap; int gtt_start_cpu_ptr; int gtt_start_gpu_addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* find_next_zero_bit (int ,unsigned int,unsigned int) ;
 int kfd_gtt_sa_calc_cpu_addr (int ,unsigned int,unsigned int) ;
 scalar_t__ kfd_gtt_sa_calc_gpu_addr (int ,unsigned int,unsigned int) ;
 int kfree (struct kfd_mem_obj**) ;
 struct kfd_mem_obj* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,...) ;
 int set_bit (unsigned int,int ) ;

int kfd_gtt_sa_allocate(struct kfd_dev *kfd, unsigned int size,
   struct kfd_mem_obj **mem_obj)
{
 unsigned int found, start_search, cur_size;

 if (size == 0)
  return -EINVAL;

 if (size > kfd->gtt_sa_num_of_chunks * kfd->gtt_sa_chunk_size)
  return -ENOMEM;

 *mem_obj = kzalloc(sizeof(struct kfd_mem_obj), GFP_KERNEL);
 if (!(*mem_obj))
  return -ENOMEM;

 pr_debug("Allocated mem_obj = %p for size = %d\n", *mem_obj, size);

 start_search = 0;

 mutex_lock(&kfd->gtt_sa_lock);

kfd_gtt_restart_search:

 found = find_next_zero_bit(kfd->gtt_sa_bitmap,
     kfd->gtt_sa_num_of_chunks,
     start_search);

 pr_debug("Found = %d\n", found);


 if (found == kfd->gtt_sa_num_of_chunks)
  goto kfd_gtt_no_free_chunk;


 (*mem_obj)->range_start = found;
 (*mem_obj)->range_end = found;
 (*mem_obj)->gpu_addr = kfd_gtt_sa_calc_gpu_addr(
     kfd->gtt_start_gpu_addr,
     found,
     kfd->gtt_sa_chunk_size);
 (*mem_obj)->cpu_ptr = kfd_gtt_sa_calc_cpu_addr(
     kfd->gtt_start_cpu_ptr,
     found,
     kfd->gtt_sa_chunk_size);

 pr_debug("gpu_addr = %p, cpu_addr = %p\n",
   (uint64_t *) (*mem_obj)->gpu_addr, (*mem_obj)->cpu_ptr);


 if (size <= kfd->gtt_sa_chunk_size) {
  pr_debug("Single bit\n");
  set_bit(found, kfd->gtt_sa_bitmap);
  goto kfd_gtt_out;
 }


 cur_size = size - kfd->gtt_sa_chunk_size;
 do {
  (*mem_obj)->range_end =
   find_next_zero_bit(kfd->gtt_sa_bitmap,
     kfd->gtt_sa_num_of_chunks, ++found);





  if ((*mem_obj)->range_end != found) {
   start_search = found;
   goto kfd_gtt_restart_search;
  }




  if (found == kfd->gtt_sa_num_of_chunks)
   goto kfd_gtt_no_free_chunk;


  if (cur_size <= kfd->gtt_sa_chunk_size)
   cur_size = 0;
  else
   cur_size -= kfd->gtt_sa_chunk_size;

 } while (cur_size > 0);

 pr_debug("range_start = %d, range_end = %d\n",
  (*mem_obj)->range_start, (*mem_obj)->range_end);


 for (found = (*mem_obj)->range_start;
  found <= (*mem_obj)->range_end;
  found++)
  set_bit(found, kfd->gtt_sa_bitmap);

kfd_gtt_out:
 mutex_unlock(&kfd->gtt_sa_lock);
 return 0;

kfd_gtt_no_free_chunk:
 pr_debug("Allocation failed with mem_obj = %p\n", mem_obj);
 mutex_unlock(&kfd->gtt_sa_lock);
 kfree(mem_obj);
 return -ENOMEM;
}
