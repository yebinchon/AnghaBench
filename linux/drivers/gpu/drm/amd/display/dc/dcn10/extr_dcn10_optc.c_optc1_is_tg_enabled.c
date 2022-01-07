
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_CONTROL ;
 int OTG_MASTER_EN ;
 int REG_GET (int ,int ,scalar_t__*) ;

bool optc1_is_tg_enabled(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);
 uint32_t otg_enabled = 0;

 REG_GET(OTG_CONTROL, OTG_MASTER_EN, &otg_enabled);

 return (otg_enabled != 0);

}
