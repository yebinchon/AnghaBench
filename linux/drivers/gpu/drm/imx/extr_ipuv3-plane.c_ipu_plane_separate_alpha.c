
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* state; } ;
struct ipu_plane {TYPE_4__ base; } ;
struct TYPE_7__ {TYPE_2__* fb; } ;
struct TYPE_6__ {TYPE_1__* format; } ;
struct TYPE_5__ {int format; } ;
__attribute__((used)) static bool ipu_plane_separate_alpha(struct ipu_plane *ipu_plane)
{
 switch (ipu_plane->base.state->fb->format->format) {
 case 130:
 case 133:
 case 129:
 case 132:
 case 128:
 case 131:
  return 1;
 default:
  return 0;
 }
}
