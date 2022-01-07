
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int format; int colorspace; } ;
struct TYPE_7__ {TYPE_2__* fb; } ;
struct nv50_wndw_atom {TYPE_4__ image; TYPE_3__ state; } ;
struct TYPE_6__ {TYPE_1__* format; } ;
struct TYPE_5__ {int format; } ;




 int EINVAL ;
 int WARN_ON (int) ;

__attribute__((used)) static int
nv50_wndw_atomic_check_acquire_yuv(struct nv50_wndw_atom *asyw)
{
 switch (asyw->state.fb->format->format) {
 case 128: asyw->image.format = 0x28; break;
 case 129: asyw->image.format = 0x29; break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }
 asyw->image.colorspace = 1;
 return 0;
}
