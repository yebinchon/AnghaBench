
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roce_hem_item {int count; int dma_addr; int addr; } ;
struct hns_roce_dev {int dev; } ;


 int BA_BYTE_LEN ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int kfree (struct roce_hem_item*) ;

__attribute__((used)) static void hem_list_free_item(struct hns_roce_dev *hr_dev,
          struct roce_hem_item *hem, bool exist_bt)
{
 if (exist_bt)
  dma_free_coherent(hr_dev->dev, hem->count * BA_BYTE_LEN,
      hem->addr, hem->dma_addr);
 kfree(hem);
}
