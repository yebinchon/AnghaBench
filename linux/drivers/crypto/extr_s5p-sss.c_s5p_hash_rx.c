
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_aes_dev {scalar_t__ hash_sg_cnt; int hash_flags; int hash_sg_iter; } ;


 int HASH_FLAGS_DMA_READY ;
 int HASH_FLAGS_FINAL ;
 int set_bit (int ,int *) ;
 int sg_next (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int s5p_hash_rx(struct s5p_aes_dev *dev)
{
 if (dev->hash_sg_cnt > 0) {
  dev->hash_sg_iter = sg_next(dev->hash_sg_iter);
  return 1;
 }

 set_bit(HASH_FLAGS_DMA_READY, &dev->hash_flags);
 if (test_bit(HASH_FLAGS_FINAL, &dev->hash_flags))
  return 0;

 return 2;
}
