
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fw_iso_context {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int dummy_set_iso_channels(struct fw_iso_context *ctx, u64 *channels)
{
 return -ENODEV;
}
