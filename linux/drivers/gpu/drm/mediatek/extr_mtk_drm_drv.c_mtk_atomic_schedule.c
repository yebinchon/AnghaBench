
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; struct drm_atomic_state* state; } ;
struct mtk_drm_private {TYPE_1__ commit; } ;
struct drm_atomic_state {int dummy; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void mtk_atomic_schedule(struct mtk_drm_private *private,
    struct drm_atomic_state *state)
{
 private->commit.state = state;
 schedule_work(&private->commit.work);
}
