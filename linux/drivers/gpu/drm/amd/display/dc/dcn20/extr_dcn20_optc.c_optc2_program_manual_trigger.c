
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_TRIGA_MANUAL_TRIG ;
 int REG_SET (int ,int ,int ,int) ;

void optc2_program_manual_trigger(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_SET(OTG_TRIGA_MANUAL_TRIG, 0,
   OTG_TRIGA_MANUAL_TRIG, 1);
}
