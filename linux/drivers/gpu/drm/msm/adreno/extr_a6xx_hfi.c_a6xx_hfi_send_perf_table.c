
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct a6xx_hfi_msg_perf_table {int num_gpu_levels; int num_gmu_levels; TYPE_2__* cx_votes; TYPE_1__* gx_votes; int member_0; } ;
struct a6xx_gmu {int nr_gpu_freqs; int nr_gmu_freqs; int* gpu_freqs; int* gmu_freqs; int * cx_arc_votes; int * gx_arc_votes; } ;
typedef int msg ;
struct TYPE_4__ {int freq; int vote; } ;
struct TYPE_3__ {int freq; int vote; } ;


 int HFI_H2F_MSG_PERF_TABLE ;
 int a6xx_hfi_send_msg (struct a6xx_gmu*,int ,struct a6xx_hfi_msg_perf_table*,int,int *,int ) ;

__attribute__((used)) static int a6xx_hfi_send_perf_table(struct a6xx_gmu *gmu)
{
 struct a6xx_hfi_msg_perf_table msg = { 0 };
 int i;

 msg.num_gpu_levels = gmu->nr_gpu_freqs;
 msg.num_gmu_levels = gmu->nr_gmu_freqs;

 for (i = 0; i < gmu->nr_gpu_freqs; i++) {
  msg.gx_votes[i].vote = gmu->gx_arc_votes[i];
  msg.gx_votes[i].freq = gmu->gpu_freqs[i] / 1000;
 }

 for (i = 0; i < gmu->nr_gmu_freqs; i++) {
  msg.cx_votes[i].vote = gmu->cx_arc_votes[i];
  msg.cx_votes[i].freq = gmu->gmu_freqs[i] / 1000;
 }

 return a6xx_hfi_send_msg(gmu, HFI_H2F_MSG_PERF_TABLE, &msg, sizeof(msg),
  ((void*)0), 0);
}
