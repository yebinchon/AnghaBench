
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_3D_STRUCTURE_CONTROL ;
 int OTG_3D_STRUCTURE_EN ;
 int OTG_3D_STRUCTURE_STEREO_SEL_OVR ;
 int OTG_STEREO_CONTROL ;
 int OTG_STEREO_EN ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void optc1_disable_stereo(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_SET(OTG_STEREO_CONTROL, 0,
  OTG_STEREO_EN, 0);

 REG_SET_2(OTG_3D_STRUCTURE_CONTROL, 0,
  OTG_3D_STRUCTURE_EN, 0,
  OTG_3D_STRUCTURE_STEREO_SEL_OVR, 0);
}
