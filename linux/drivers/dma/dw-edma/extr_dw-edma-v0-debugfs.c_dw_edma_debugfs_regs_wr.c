
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct debugfs_entries {int dummy; } ;
typedef int name ;
struct TYPE_12__ {scalar_t__ mode; int wr_ch_cnt; } ;
struct TYPE_11__ {int * end; int * start; } ;
struct TYPE_8__ {TYPE_1__* ch; } ;
struct TYPE_9__ {TYPE_2__ unroll; } ;
struct TYPE_10__ {TYPE_3__ type; } ;
struct TYPE_7__ {int * padding_1; int wr; } ;


 int ARRAY_SIZE (struct debugfs_entries const*) ;
 char* CHANNEL_STR ;
 scalar_t__ EDMA_MODE_UNROLL ;
 char* WRITE_STR ;
 struct debugfs_entries const WR_REGISTER (int ) ;
 struct debugfs_entries const WR_REGISTER_UNROLL (int ) ;
 int abort_imwr_high ;
 int abort_imwr_low ;
 int ch01_imwr_data ;
 int ch0_pwr_en ;
 int ch1_pwr_en ;
 int ch23_imwr_data ;
 int ch2_pwr_en ;
 int ch3_pwr_en ;
 int ch45_imwr_data ;
 int ch4_pwr_en ;
 int ch5_pwr_en ;
 int ch67_imwr_data ;
 int ch6_pwr_en ;
 int ch7_pwr_en ;
 int ch_arb_weight_high ;
 int ch_arb_weight_low ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int done_imwr_high ;
 int done_imwr_low ;
 int doorbell ;
 TYPE_6__* dw ;
 int dw_edma_debugfs_create_x32 (struct debugfs_entries const*,int,struct dentry*) ;
 int dw_edma_debugfs_regs_ch (int *,struct dentry*) ;
 int engine_chgroup ;
 int engine_en ;
 int engine_hshake_cnt_high ;
 int engine_hshake_cnt_low ;
 int err_status ;
 int int_clear ;
 int int_mask ;
 int int_status ;
 TYPE_5__** lim ;
 int linked_list_err_en ;
 TYPE_4__* regs ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static void dw_edma_debugfs_regs_wr(struct dentry *dir)
{
 const struct debugfs_entries debugfs_regs[] = {

  WR_REGISTER(engine_en),
  WR_REGISTER(doorbell),
  WR_REGISTER(ch_arb_weight_low),
  WR_REGISTER(ch_arb_weight_high),

  WR_REGISTER(int_status),
  WR_REGISTER(int_mask),
  WR_REGISTER(int_clear),
  WR_REGISTER(err_status),
  WR_REGISTER(done_imwr_low),
  WR_REGISTER(done_imwr_high),
  WR_REGISTER(abort_imwr_low),
  WR_REGISTER(abort_imwr_high),
  WR_REGISTER(ch01_imwr_data),
  WR_REGISTER(ch23_imwr_data),
  WR_REGISTER(ch45_imwr_data),
  WR_REGISTER(ch67_imwr_data),
  WR_REGISTER(linked_list_err_en),
 };
 const struct debugfs_entries debugfs_unroll_regs[] = {

  WR_REGISTER_UNROLL(engine_chgroup),
  WR_REGISTER_UNROLL(engine_hshake_cnt_low),
  WR_REGISTER_UNROLL(engine_hshake_cnt_high),
  WR_REGISTER_UNROLL(ch0_pwr_en),
  WR_REGISTER_UNROLL(ch1_pwr_en),
  WR_REGISTER_UNROLL(ch2_pwr_en),
  WR_REGISTER_UNROLL(ch3_pwr_en),
  WR_REGISTER_UNROLL(ch4_pwr_en),
  WR_REGISTER_UNROLL(ch5_pwr_en),
  WR_REGISTER_UNROLL(ch6_pwr_en),
  WR_REGISTER_UNROLL(ch7_pwr_en),
 };
 struct dentry *regs_dir, *ch_dir;
 int nr_entries, i;
 char name[16];

 regs_dir = debugfs_create_dir(WRITE_STR, dir);
 if (!regs_dir)
  return;

 nr_entries = ARRAY_SIZE(debugfs_regs);
 dw_edma_debugfs_create_x32(debugfs_regs, nr_entries, regs_dir);

 if (dw->mode == EDMA_MODE_UNROLL) {
  nr_entries = ARRAY_SIZE(debugfs_unroll_regs);
  dw_edma_debugfs_create_x32(debugfs_unroll_regs, nr_entries,
        regs_dir);
 }

 for (i = 0; i < dw->wr_ch_cnt; i++) {
  snprintf(name, sizeof(name), "%s:%d", CHANNEL_STR, i);

  ch_dir = debugfs_create_dir(name, regs_dir);
  if (!ch_dir)
   return;

  dw_edma_debugfs_regs_ch(&regs->type.unroll.ch[i].wr, ch_dir);

  lim[0][i].start = &regs->type.unroll.ch[i].wr;
  lim[0][i].end = &regs->type.unroll.ch[i].padding_1[0];
 }
}
