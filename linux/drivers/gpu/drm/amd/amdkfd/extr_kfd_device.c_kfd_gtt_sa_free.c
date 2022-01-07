
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_mem_obj {unsigned int range_start; unsigned int range_end; } ;
struct kfd_dev {int gtt_sa_lock; int gtt_sa_bitmap; } ;


 int clear_bit (unsigned int,int ) ;
 int kfree (struct kfd_mem_obj*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,struct kfd_mem_obj*,unsigned int,unsigned int) ;

int kfd_gtt_sa_free(struct kfd_dev *kfd, struct kfd_mem_obj *mem_obj)
{
 unsigned int bit;


 if (!mem_obj)
  return 0;

 pr_debug("Free mem_obj = %p, range_start = %d, range_end = %d\n",
   mem_obj, mem_obj->range_start, mem_obj->range_end);

 mutex_lock(&kfd->gtt_sa_lock);


 for (bit = mem_obj->range_start;
  bit <= mem_obj->range_end;
  bit++)
  clear_bit(bit, kfd->gtt_sa_bitmap);

 mutex_unlock(&kfd->gtt_sa_lock);

 kfree(mem_obj);
 return 0;
}
