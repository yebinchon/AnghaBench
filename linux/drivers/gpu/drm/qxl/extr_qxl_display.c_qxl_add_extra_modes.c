
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_connector {int dummy; } ;
struct TYPE_3__ {int h; int w; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* extra_modes ;
 scalar_t__ qxl_add_mode (struct drm_connector*,int ,int ,int) ;

__attribute__((used)) static int qxl_add_extra_modes(struct drm_connector *connector)
{
 int i, ret = 0;

 for (i = 0; i < ARRAY_SIZE(extra_modes); i++)
  ret += qxl_add_mode(connector,
        extra_modes[i].w,
        extra_modes[i].h,
        0);
 return ret;
}
