
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hactive; int hsync_len; int hback_porch; int hfront_porch; int vactive; int vsync_len; int vback_porch; int vfront_porch; } ;
struct ipu_di_signal_cfg {TYPE_1__ mode; } ;
struct ipu_di {int dummy; } ;
struct di_sync_config {int run_count; int run_src; int cnt_polarity_gen_en; int cnt_polarity_trigger_src; int cnt_down; int offset_count; int offset_src; int repeat_count; int cnt_clr_src; } ;


 int ARRAY_SIZE (struct di_sync_config*) ;
 int DI_SCR_CONF ;
 int DI_SYNC_CLK ;
 int DI_SYNC_CNT1 ;
 int DI_SYNC_CNT4 ;
 int DI_SYNC_CNT5 ;
 int DI_SYNC_HSYNC ;
 int ipu_di_sync_config (struct ipu_di*,struct di_sync_config*,int ,int ) ;
 int ipu_di_write (struct ipu_di*,int,int ) ;

__attribute__((used)) static void ipu_di_sync_config_interlaced(struct ipu_di *di,
  struct ipu_di_signal_cfg *sig)
{
 u32 h_total = sig->mode.hactive + sig->mode.hsync_len +
  sig->mode.hback_porch + sig->mode.hfront_porch;
 u32 v_total = sig->mode.vactive + sig->mode.vsync_len +
  sig->mode.vback_porch + sig->mode.vfront_porch;
 struct di_sync_config cfg[] = {
  {

   .run_count = v_total * 2 - 1,
   .run_src = 3,
  }, {

   .run_count = h_total - 1,
   .run_src = DI_SYNC_CLK,
   .cnt_polarity_gen_en = 1,
   .cnt_polarity_trigger_src = DI_SYNC_CLK,
   .cnt_down = sig->mode.hsync_len * 2,
  }, {

   .run_count = v_total - 1,
   .run_src = 4,
   .cnt_polarity_gen_en = 1,
   .cnt_polarity_trigger_src = 4,
   .cnt_down = sig->mode.vsync_len * 2,
   .cnt_clr_src = DI_SYNC_CNT1,
  }, {

   .run_count = v_total / 2,
   .run_src = DI_SYNC_HSYNC,
   .offset_count = h_total / 2,
   .offset_src = DI_SYNC_CLK,
   .repeat_count = 2,
   .cnt_clr_src = DI_SYNC_CNT1,
  }, {

   .run_src = DI_SYNC_HSYNC,
   .offset_count = (sig->mode.vsync_len +
      sig->mode.vback_porch) / 2,
   .offset_src = DI_SYNC_HSYNC,
   .repeat_count = sig->mode.vactive / 2,
   .cnt_clr_src = DI_SYNC_CNT4,
  }, {

   .run_src = DI_SYNC_CLK,
   .offset_count = sig->mode.hsync_len +
     sig->mode.hback_porch,
   .offset_src = DI_SYNC_CLK,
   .repeat_count = sig->mode.hactive,
   .cnt_clr_src = DI_SYNC_CNT5,
  }, {

   .run_count = h_total / 2 - 1,
   .run_src = DI_SYNC_CLK,
  }
 };

 ipu_di_sync_config(di, cfg, 0, ARRAY_SIZE(cfg));

 ipu_di_write(di, v_total / 2 - 1, DI_SCR_CONF);
}
