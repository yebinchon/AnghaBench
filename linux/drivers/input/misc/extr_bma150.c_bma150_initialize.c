
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bma150_data {TYPE_1__* client; } ;
struct bma150_cfg {int lg_thres; int lg_dur; int lg_hyst; int lg_int; int hg_thres; int hg_dur; int hg_hyst; int hg_int; int any_motion_thres; int any_motion_dur; int any_motion_int; int range; int bandwidth; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int BMA150_MODE_SLEEP ;
 int bma150_set_any_motion_interrupt (struct bma150_data*,int ,int ,int ) ;
 int bma150_set_bandwidth (struct bma150_data*,int ) ;
 int bma150_set_high_g_interrupt (struct bma150_data*,int ,int ,int ,int ) ;
 int bma150_set_low_g_interrupt (struct bma150_data*,int ,int ,int ,int ) ;
 int bma150_set_mode (struct bma150_data*,int ) ;
 int bma150_set_range (struct bma150_data*,int ) ;
 int bma150_soft_reset (struct bma150_data*) ;

__attribute__((used)) static int bma150_initialize(struct bma150_data *bma150,
           const struct bma150_cfg *cfg)
{
 int error;

 error = bma150_soft_reset(bma150);
 if (error)
  return error;

 error = bma150_set_bandwidth(bma150, cfg->bandwidth);
 if (error)
  return error;

 error = bma150_set_range(bma150, cfg->range);
 if (error)
  return error;

 if (bma150->client->irq) {
  error = bma150_set_any_motion_interrupt(bma150,
     cfg->any_motion_int,
     cfg->any_motion_dur,
     cfg->any_motion_thres);
  if (error)
   return error;

  error = bma150_set_high_g_interrupt(bma150,
     cfg->hg_int, cfg->hg_hyst,
     cfg->hg_dur, cfg->hg_thres);
  if (error)
   return error;

  error = bma150_set_low_g_interrupt(bma150,
     cfg->lg_int, cfg->lg_hyst,
     cfg->lg_dur, cfg->lg_thres);
  if (error)
   return error;
 }

 return bma150_set_mode(bma150, BMA150_MODE_SLEEP);
}
