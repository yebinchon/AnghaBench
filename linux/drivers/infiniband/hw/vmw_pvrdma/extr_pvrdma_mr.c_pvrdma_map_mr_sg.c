
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct pvrdma_user_mr {scalar_t__ npages; } ;
struct pvrdma_dev {TYPE_1__* pdev; } ;
struct ib_mr {int device; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*) ;
 int ib_sg_to_pages (struct ib_mr*,struct scatterlist*,int,unsigned int*,int ) ;
 int pvrdma_set_page ;
 struct pvrdma_dev* to_vdev (int ) ;
 struct pvrdma_user_mr* to_vmr (struct ib_mr*) ;

int pvrdma_map_mr_sg(struct ib_mr *ibmr, struct scatterlist *sg, int sg_nents,
       unsigned int *sg_offset)
{
 struct pvrdma_user_mr *mr = to_vmr(ibmr);
 struct pvrdma_dev *dev = to_vdev(ibmr->device);
 int ret;

 mr->npages = 0;

 ret = ib_sg_to_pages(ibmr, sg, sg_nents, sg_offset, pvrdma_set_page);
 if (ret < 0)
  dev_warn(&dev->pdev->dev, "could not map sg to pages\n");

 return ret;
}
