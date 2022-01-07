
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int GENERAL_CONFIG ;
 int MISC_STATUS ;
 int STS_FM_VERSION_MAJOR_MASK ;
 int STS_FM_VERSION_MAJOR_SHIFT ;
 int STS_FM_VERSION_MINOR_MASK ;
 int STS_FM_VERSION_MINOR_SHIFT ;
 int STS_FM_VERSION_PATCH_MASK ;
 int STS_FM_VERSION_PATCH_SHIFT ;
 int VERSION_PATCH ;
 int read_8051_config (struct hfi1_devdata*,int ,int ,int*) ;

void read_misc_status(struct hfi1_devdata *dd, u8 *ver_major, u8 *ver_minor,
        u8 *ver_patch)
{
 u32 frame;

 read_8051_config(dd, MISC_STATUS, GENERAL_CONFIG, &frame);
 *ver_major = (frame >> STS_FM_VERSION_MAJOR_SHIFT) &
  STS_FM_VERSION_MAJOR_MASK;
 *ver_minor = (frame >> STS_FM_VERSION_MINOR_SHIFT) &
  STS_FM_VERSION_MINOR_MASK;

 read_8051_config(dd, VERSION_PATCH, GENERAL_CONFIG, &frame);
 *ver_patch = (frame >> STS_FM_VERSION_PATCH_SHIFT) &
  STS_FM_VERSION_PATCH_MASK;
}
