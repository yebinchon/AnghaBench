
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct a6xx_hfi_queue_table_header {int size; int qhdr0_offset; int qhdr_size; int num_queues; int active_queues; scalar_t__ version; } ;
struct a6xx_hfi_queue_header {int size; int qhdr0_offset; int qhdr_size; int num_queues; int active_queues; scalar_t__ version; } ;
struct a6xx_gmu_bo {int iova; struct a6xx_hfi_queue_table_header* virt; } ;
struct a6xx_gmu {int * queues; struct a6xx_gmu_bo* hfi; } ;


 int ARRAY_SIZE (int *) ;
 int SZ_4K ;
 int a6xx_hfi_queue_init (int *,struct a6xx_hfi_queue_table_header*,struct a6xx_hfi_queue_table_header*,int,int) ;

void a6xx_hfi_init(struct a6xx_gmu *gmu)
{
 struct a6xx_gmu_bo *hfi = gmu->hfi;
 struct a6xx_hfi_queue_table_header *table = hfi->virt;
 struct a6xx_hfi_queue_header *headers = hfi->virt + sizeof(*table);
 u64 offset;
 int table_size;





 table_size = sizeof(*table);
 table_size += (ARRAY_SIZE(gmu->queues) *
  sizeof(struct a6xx_hfi_queue_header));

 table->version = 0;
 table->size = table_size;

 table->qhdr0_offset = sizeof(*table) >> 2;
 table->qhdr_size = sizeof(struct a6xx_hfi_queue_header) >> 2;
 table->num_queues = ARRAY_SIZE(gmu->queues);
 table->active_queues = ARRAY_SIZE(gmu->queues);


 offset = SZ_4K;
 a6xx_hfi_queue_init(&gmu->queues[0], &headers[0], hfi->virt + offset,
  hfi->iova + offset, 0);


 offset += SZ_4K;
 a6xx_hfi_queue_init(&gmu->queues[1], &headers[1], hfi->virt + offset,
  hfi->iova + offset, 4);
}
