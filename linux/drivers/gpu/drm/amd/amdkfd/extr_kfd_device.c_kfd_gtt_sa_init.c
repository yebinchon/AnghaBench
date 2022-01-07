
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {unsigned int gtt_sa_chunk_size; unsigned int gtt_sa_num_of_chunks; int gtt_sa_lock; int gtt_sa_bitmap; } ;


 int BITS_PER_LONG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int kcalloc (unsigned int,int,int ) ;
 int mutex_init (int *) ;
 int pr_debug (char*,int,int ) ;

__attribute__((used)) static int kfd_gtt_sa_init(struct kfd_dev *kfd, unsigned int buf_size,
    unsigned int chunk_size)
{
 unsigned int num_of_longs;

 if (WARN_ON(buf_size < chunk_size))
  return -EINVAL;
 if (WARN_ON(buf_size == 0))
  return -EINVAL;
 if (WARN_ON(chunk_size == 0))
  return -EINVAL;

 kfd->gtt_sa_chunk_size = chunk_size;
 kfd->gtt_sa_num_of_chunks = buf_size / chunk_size;

 num_of_longs = (kfd->gtt_sa_num_of_chunks + BITS_PER_LONG - 1) /
  BITS_PER_LONG;

 kfd->gtt_sa_bitmap = kcalloc(num_of_longs, sizeof(long), GFP_KERNEL);

 if (!kfd->gtt_sa_bitmap)
  return -ENOMEM;

 pr_debug("gtt_sa_num_of_chunks = %d, gtt_sa_bitmap = %p\n",
   kfd->gtt_sa_num_of_chunks, kfd->gtt_sa_bitmap);

 mutex_init(&kfd->gtt_sa_lock);

 return 0;

}
