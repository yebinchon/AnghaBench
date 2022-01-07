
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
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
 int OTG_H_BLANK_START ;
 int OTG_H_BLANK_START_END ;
 int OTG_V_BLANK_START ;
 int OTG_V_BLANK_START_END ;
 int REG_GET (int ,int ,int*) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;

void optc2_lock_doublebuffer_enable(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);
 uint32_t v_blank_start = 0;
 uint32_t h_blank_start = 0;

 REG_UPDATE(OTG_GLOBAL_CONTROL1, MASTER_UPDATE_LOCK_DB_EN, 1);

 REG_UPDATE_2(OTG_GLOBAL_CONTROL2, GLOBAL_UPDATE_LOCK_EN, 1,
   DIG_UPDATE_LOCATION, 20);

 REG_GET(OTG_V_BLANK_START_END, OTG_V_BLANK_START, &v_blank_start);

 REG_GET(OTG_H_BLANK_START_END, OTG_H_BLANK_START, &h_blank_start);

 REG_UPDATE_2(OTG_GLOBAL_CONTROL1,
   MASTER_UPDATE_LOCK_DB_X,
   h_blank_start - 200 - 1,
   MASTER_UPDATE_LOCK_DB_Y,
   v_blank_start - 1);
}
