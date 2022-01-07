
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_STEREO_CURRENT_EYE ;
 int OTG_STEREO_STATUS ;
 int REG_GET (int ,int ,int*) ;

bool optc1_is_stereo_left_eye(struct timing_generator *optc)
{
 bool ret = 0;
 uint32_t left_eye = 0;
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_GET(OTG_STEREO_STATUS,
  OTG_STEREO_CURRENT_EYE, &left_eye);
 if (left_eye == 1)
  ret = 1;
 else
  ret = 0;

 return ret;
}
