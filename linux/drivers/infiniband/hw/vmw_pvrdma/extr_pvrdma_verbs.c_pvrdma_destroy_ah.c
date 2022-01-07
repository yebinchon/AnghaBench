
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvrdma_dev {int num_ahs; } ;
struct ib_ah {int device; } ;


 int atomic_dec (int *) ;
 struct pvrdma_dev* to_vdev (int ) ;

void pvrdma_destroy_ah(struct ib_ah *ah, u32 flags)
{
 struct pvrdma_dev *dev = to_vdev(ah->device);

 atomic_dec(&dev->num_ahs);
}
