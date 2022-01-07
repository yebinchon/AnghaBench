
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_MASTER_UPDATE_LOCK ;
 int OTG_MASTER_UPDATE_LOCK_VUPDATE_KEEPOUT_EN ;
 int OTG_VUPDATE_KEEPOUT ;
 int REG_SET (int ,int ,int ,int ) ;

void optc2_triplebuffer_unlock(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_SET(OTG_MASTER_UPDATE_LOCK, 0,
  OTG_MASTER_UPDATE_LOCK, 0);

 REG_SET(OTG_VUPDATE_KEEPOUT, 0,
  OTG_MASTER_UPDATE_LOCK_VUPDATE_KEEPOUT_EN, 0);

}
