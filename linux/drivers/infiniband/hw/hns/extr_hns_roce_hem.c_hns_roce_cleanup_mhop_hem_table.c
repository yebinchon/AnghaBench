
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hns_roce_hem_table {scalar_t__ type; int num_hem; int obj_size; scalar_t__* bt_l0_dma_addr; scalar_t__* bt_l0; scalar_t__* bt_l1_dma_addr; scalar_t__* bt_l1; scalar_t__* hem; } ;
struct hns_roce_hem_mhop {int buf_chunk_size; int bt_chunk_size; } ;
struct hns_roce_dev {int dummy; } ;


 scalar_t__ HEM_TYPE_MTT ;
 scalar_t__ hns_roce_calc_hem_mhop (struct hns_roce_dev*,struct hns_roce_hem_table*,int *,struct hns_roce_hem_mhop*) ;
 int hns_roce_table_mhop_put (struct hns_roce_dev*,struct hns_roce_hem_table*,int,int ) ;
 int kfree (scalar_t__*) ;

__attribute__((used)) static void hns_roce_cleanup_mhop_hem_table(struct hns_roce_dev *hr_dev,
         struct hns_roce_hem_table *table)
{
 struct hns_roce_hem_mhop mhop;
 u32 buf_chunk_size;
 int i;
 u64 obj;

 if (hns_roce_calc_hem_mhop(hr_dev, table, ((void*)0), &mhop))
  return;
 buf_chunk_size = table->type < HEM_TYPE_MTT ? mhop.buf_chunk_size :
     mhop.bt_chunk_size;

 for (i = 0; i < table->num_hem; ++i) {
  obj = i * buf_chunk_size / table->obj_size;
  if (table->hem[i])
   hns_roce_table_mhop_put(hr_dev, table, obj, 0);
 }

 kfree(table->hem);
 table->hem = ((void*)0);
 kfree(table->bt_l1);
 table->bt_l1 = ((void*)0);
 kfree(table->bt_l1_dma_addr);
 table->bt_l1_dma_addr = ((void*)0);
 kfree(table->bt_l0);
 table->bt_l0 = ((void*)0);
 kfree(table->bt_l0_dma_addr);
 table->bt_l0_dma_addr = ((void*)0);
}
