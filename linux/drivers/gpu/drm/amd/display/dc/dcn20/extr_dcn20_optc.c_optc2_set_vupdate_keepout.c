
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vupdate_keepout_params {int enable; int end_offset; int start_offset; } ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int MASTER_UPDATE_LOCK_VUPDATE_KEEPOUT_END_OFFSET ;
 int MASTER_UPDATE_LOCK_VUPDATE_KEEPOUT_START_OFFSET ;
 int OTG_MASTER_UPDATE_LOCK_VUPDATE_KEEPOUT_EN ;
 int OTG_VUPDATE_KEEPOUT ;
 int REG_SET_3 (int ,int ,int ,int ,int ,int ,int ,int ) ;

void optc2_set_vupdate_keepout(struct timing_generator *optc,
     const struct vupdate_keepout_params *params)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_SET_3(OTG_VUPDATE_KEEPOUT, 0,
  MASTER_UPDATE_LOCK_VUPDATE_KEEPOUT_START_OFFSET, params->start_offset,
  MASTER_UPDATE_LOCK_VUPDATE_KEEPOUT_END_OFFSET, params->end_offset,
  OTG_MASTER_UPDATE_LOCK_VUPDATE_KEEPOUT_EN, params->enable);
}
