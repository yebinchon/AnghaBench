
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int dev_id; } ;


 int GFP_KERNEL ;
 int dma_ida ;
 int ida_alloc (int *,int ) ;

__attribute__((used)) static int get_dma_id(struct dma_device *device)
{
 int rc = ida_alloc(&dma_ida, GFP_KERNEL);

 if (rc < 0)
  return rc;
 device->dev_id = rc;
 return 0;
}
