
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct intel_plane {TYPE_3__ base; } ;
struct TYPE_4__ {int cursor_width; } ;
struct TYPE_5__ {TYPE_1__ mode_config; } ;



__attribute__((used)) static unsigned int
i9xx_cursor_max_stride(struct intel_plane *plane,
         u32 pixel_format, u64 modifier,
         unsigned int rotation)
{
 return plane->base.dev->mode_config.cursor_width * 4;
}
