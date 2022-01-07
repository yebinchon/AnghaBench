
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int DIG_UPDATE_LOCATION ;
 int GLOBAL_UPDATE_LOCK_EN ;
 int MASTER_UPDATE_LOCK_DB_EN ;
 int MASTER_UPDATE_LOCK_DB_X ;
 int MASTER_UPDATE_LOCK_DB_Y ;
 int OTG_GLOBAL_CONTROL1 ;
 int OTG_GLOBAL_CONTROL2 ;
 int REG_UPDATE (int ,int ,int ) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int ) ;

void optc2_lock_doublebuffer_disable(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_UPDATE_2(OTG_GLOBAL_CONTROL1,
    MASTER_UPDATE_LOCK_DB_X,
    0,
    MASTER_UPDATE_LOCK_DB_Y,
    0);

 REG_UPDATE_2(OTG_GLOBAL_CONTROL2, GLOBAL_UPDATE_LOCK_EN, 0,
    DIG_UPDATE_LOCATION, 0);

 REG_UPDATE(OTG_GLOBAL_CONTROL1, MASTER_UPDATE_LOCK_DB_EN, 0);
}
