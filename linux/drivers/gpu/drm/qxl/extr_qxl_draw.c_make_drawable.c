
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct qxl_release {int dummy; } ;
struct qxl_rect {int dummy; } ;
struct TYPE_5__ {int type; } ;
struct TYPE_4__ {scalar_t__ right; scalar_t__ bottom; scalar_t__ left; scalar_t__ top; } ;
struct qxl_drawable {int surface_id; int* surfaces_dest; int release_info; int mm_time; struct qxl_rect bbox; TYPE_2__ clip; TYPE_1__ self_bitmap_area; scalar_t__ self_bitmap; int effect; int type; } ;
struct qxl_device {TYPE_3__* rom; } ;
struct TYPE_6__ {int mm_clock; } ;


 int ENOMEM ;
 int QXL_EFFECT_OPAQUE ;
 int SPICE_CLIP_TYPE_NONE ;
 scalar_t__ qxl_release_map (struct qxl_device*,struct qxl_release*) ;
 int qxl_release_unmap (struct qxl_device*,struct qxl_release*,int *) ;

__attribute__((used)) static int
make_drawable(struct qxl_device *qdev, int surface, uint8_t type,
       const struct qxl_rect *rect,
       struct qxl_release *release)
{
 struct qxl_drawable *drawable;
 int i;

 drawable = (struct qxl_drawable *)qxl_release_map(qdev, release);
 if (!drawable)
  return -ENOMEM;

 drawable->type = type;

 drawable->surface_id = surface;
 drawable->effect = QXL_EFFECT_OPAQUE;
 drawable->self_bitmap = 0;
 drawable->self_bitmap_area.top = 0;
 drawable->self_bitmap_area.left = 0;
 drawable->self_bitmap_area.bottom = 0;
 drawable->self_bitmap_area.right = 0;

 drawable->clip.type = SPICE_CLIP_TYPE_NONE;







 for (i = 0; i < 3; ++i)
  drawable->surfaces_dest[i] = -1;

 if (rect)
  drawable->bbox = *rect;

 drawable->mm_time = qdev->rom->mm_clock;
 qxl_release_unmap(qdev, release, &drawable->release_info);
 return 0;
}
