
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 int CONTROL ;
 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_BUSY ;
 int OTG_CLOCK_CONTROL ;
 int OTG_CONTROL ;
 int OTG_DISABLE_POINT_CNTL ;
 int OTG_MASTER_EN ;
 int REG_UPDATE (int ,int ,int ) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int ) ;
 int REG_WAIT (int ,int ,int ,int,int) ;
 int VTG0_ENABLE ;

bool optc1_disable_crtc(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);




 REG_UPDATE_2(OTG_CONTROL,
   OTG_DISABLE_POINT_CNTL, 3,
   OTG_MASTER_EN, 0);

 REG_UPDATE(CONTROL,
   VTG0_ENABLE, 0);


 REG_WAIT(OTG_CLOCK_CONTROL,
   OTG_BUSY, 0,
   1, 100000);

 return 1;
}
