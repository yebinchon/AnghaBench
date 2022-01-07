
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {size_t ib_size; int chain; int valid; int process_cnt; scalar_t__ offload_polling; } ;
struct TYPE_5__ {int u32All; } ;
struct pm4_mes_runlist {int ib_base_hi; int ordinal2; TYPE_3__ bitfields4; TYPE_2__ header; } ;
struct packet_manager {TYPE_1__* dqm; } ;
struct kfd_dev {int max_proc_per_quantum; } ;
struct TYPE_4__ {int processes_count; struct kfd_dev* dev; } ;


 int IT_RUN_LIST ;
 int lower_32_bits (int ) ;
 int memset (int *,int ,int) ;
 int min (int ,int ) ;
 int pm_build_pm4_header (int ,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int pm_runlist_v10(struct packet_manager *pm, uint32_t *buffer,
   uint64_t ib, size_t ib_size_in_dwords, bool chain)
{
 struct pm4_mes_runlist *packet;

 int concurrent_proc_cnt = 0;
 struct kfd_dev *kfd = pm->dqm->dev;
 concurrent_proc_cnt = min(pm->dqm->processes_count,
   kfd->max_proc_per_quantum);


 packet = (struct pm4_mes_runlist *)buffer;

 memset(buffer, 0, sizeof(struct pm4_mes_runlist));
 packet->header.u32All = pm_build_pm4_header(IT_RUN_LIST,
      sizeof(struct pm4_mes_runlist));

 packet->bitfields4.ib_size = ib_size_in_dwords;
 packet->bitfields4.chain = chain ? 1 : 0;
 packet->bitfields4.offload_polling = 0;
 packet->bitfields4.valid = 1;
 packet->bitfields4.process_cnt = concurrent_proc_cnt;
 packet->ordinal2 = lower_32_bits(ib);
 packet->ib_base_hi = upper_32_bits(ib);

 return 0;
}
