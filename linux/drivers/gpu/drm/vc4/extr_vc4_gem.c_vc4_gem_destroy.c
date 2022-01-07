
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc4_dev {scalar_t__ emit_seqno; scalar_t__ finished_seqno; scalar_t__ hang_state; TYPE_2__* bin_bo; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int WARN_ON (int) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_free_hang_state (struct drm_device*,scalar_t__) ;

void
vc4_gem_destroy(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);




 WARN_ON(vc4->emit_seqno != vc4->finished_seqno);




 if (vc4->bin_bo) {
  drm_gem_object_put_unlocked(&vc4->bin_bo->base.base);
  vc4->bin_bo = ((void*)0);
 }

 if (vc4->hang_state)
  vc4_free_hang_state(dev, vc4->hang_state);
}
