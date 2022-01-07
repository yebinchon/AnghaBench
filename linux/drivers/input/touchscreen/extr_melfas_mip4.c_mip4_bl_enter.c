
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mip4_ts {int dummy; } ;


 int MIP4_BOOT_MODE_BOOT ;
 int mip4_bl_change_mode (struct mip4_ts*,int ) ;

__attribute__((used)) static int mip4_bl_enter(struct mip4_ts *ts)
{
 return mip4_bl_change_mode(ts, MIP4_BOOT_MODE_BOOT);
}
