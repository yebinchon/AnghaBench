
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_device {int dummy; } ;


 int ioat_dma_self_test (struct ioatdma_device*) ;
 int ioat_xor_val_self_test (struct ioatdma_device*) ;

__attribute__((used)) static int ioat3_dma_self_test(struct ioatdma_device *ioat_dma)
{
 int rc;

 rc = ioat_dma_self_test(ioat_dma);
 if (rc)
  return rc;

 rc = ioat_xor_val_self_test(ioat_dma);

 return rc;
}
