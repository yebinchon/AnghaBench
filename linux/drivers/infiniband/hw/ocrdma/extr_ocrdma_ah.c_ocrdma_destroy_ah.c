
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocrdma_dev {int dummy; } ;
struct ocrdma_ah {int dummy; } ;
struct ib_ah {int device; } ;


 struct ocrdma_ah* get_ocrdma_ah (struct ib_ah*) ;
 struct ocrdma_dev* get_ocrdma_dev (int ) ;
 int ocrdma_free_av (struct ocrdma_dev*,struct ocrdma_ah*) ;

void ocrdma_destroy_ah(struct ib_ah *ibah, u32 flags)
{
 struct ocrdma_ah *ah = get_ocrdma_ah(ibah);
 struct ocrdma_dev *dev = get_ocrdma_dev(ibah->device);

 ocrdma_free_av(dev, ah);
}
