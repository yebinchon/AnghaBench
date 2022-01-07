
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pm_qos; int c3_disable_latency; int work; } ;
struct drm_i915_private {TYPE_1__ i945gm_vblank; } ;


 int INIT_WORK (int *,int ) ;
 int PM_QOS_CPU_DMA_LATENCY ;
 int PM_QOS_DEFAULT_VALUE ;
 int cstate_disable_latency (char*) ;
 int i945gm_vblank_work_func ;
 int pm_qos_add_request (int *,int ,int ) ;

__attribute__((used)) static void i945gm_vblank_work_init(struct drm_i915_private *dev_priv)
{
 INIT_WORK(&dev_priv->i945gm_vblank.work,
    i945gm_vblank_work_func);

 dev_priv->i945gm_vblank.c3_disable_latency =
  cstate_disable_latency("C3");
 pm_qos_add_request(&dev_priv->i945gm_vblank.pm_qos,
      PM_QOS_CPU_DMA_LATENCY,
      PM_QOS_DEFAULT_VALUE);
}
