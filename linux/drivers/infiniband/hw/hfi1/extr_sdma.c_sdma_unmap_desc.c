
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_desc {int dummy; } ;
struct hfi1_devdata {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;


 int dma_unmap_page (int *,int ,int ,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int sdma_mapping_addr (struct sdma_desc*) ;
 int sdma_mapping_len (struct sdma_desc*) ;
 int sdma_mapping_type (struct sdma_desc*) ;

__attribute__((used)) static inline void sdma_unmap_desc(
 struct hfi1_devdata *dd,
 struct sdma_desc *descp)
{
 switch (sdma_mapping_type(descp)) {
 case 128:
  dma_unmap_single(
   &dd->pcidev->dev,
   sdma_mapping_addr(descp),
   sdma_mapping_len(descp),
   DMA_TO_DEVICE);
  break;
 case 129:
  dma_unmap_page(
   &dd->pcidev->dev,
   sdma_mapping_addr(descp),
   sdma_mapping_len(descp),
   DMA_TO_DEVICE);
  break;
 }
}
