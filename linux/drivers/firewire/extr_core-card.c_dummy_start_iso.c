
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_iso_context {int dummy; } ;
typedef int s32 ;


 int ENODEV ;

__attribute__((used)) static int dummy_start_iso(struct fw_iso_context *ctx,
      s32 cycle, u32 sync, u32 tags)
{
 return -ENODEV;
}
