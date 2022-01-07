
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct intel_plane {int dummy; } ;



__attribute__((used)) static unsigned int
i845_cursor_max_stride(struct intel_plane *plane,
         u32 pixel_format, u64 modifier,
         unsigned int rotation)
{
 return 2048;
}
