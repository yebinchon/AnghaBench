
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct v3d_dev {int ver; int dev; } ;
struct seq_file {scalar_t__ private; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 int V3D_CORE_READ (int,int ) ;
 int V3D_CORE_WRITE (int,int ,int) ;
 int V3D_PCTR_0_PCTR0 ;
 int V3D_PCTR_CYCLE_COUNT ;
 int V3D_PCTR_S0 ;
 int V3D_SET_FIELD (int,int ) ;
 int V3D_V3_PCTR_0_CLR ;
 int V3D_V3_PCTR_0_EN ;
 int V3D_V3_PCTR_0_EN_ENABLE ;
 int V3D_V3_PCTR_0_PCTRS0 ;
 int V3D_V4_PCTR_0_CLR ;
 int V3D_V4_PCTR_0_EN ;
 int V3D_V4_PCTR_0_SRC_0_3 ;
 int msleep (int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int seq_printf (struct seq_file*,char*,int,int,int) ;
 struct v3d_dev* to_v3d_dev (struct drm_device*) ;

__attribute__((used)) static int v3d_measure_clock(struct seq_file *m, void *unused)
{
 struct drm_info_node *node = (struct drm_info_node *)m->private;
 struct drm_device *dev = node->minor->dev;
 struct v3d_dev *v3d = to_v3d_dev(dev);
 uint32_t cycles;
 int core = 0;
 int measure_ms = 1000;
 int ret;

 ret = pm_runtime_get_sync(v3d->dev);
 if (ret < 0)
  return ret;

 if (v3d->ver >= 40) {
  V3D_CORE_WRITE(core, V3D_V4_PCTR_0_SRC_0_3,
          V3D_SET_FIELD(V3D_PCTR_CYCLE_COUNT,
          V3D_PCTR_S0));
  V3D_CORE_WRITE(core, V3D_V4_PCTR_0_CLR, 1);
  V3D_CORE_WRITE(core, V3D_V4_PCTR_0_EN, 1);
 } else {
  V3D_CORE_WRITE(core, V3D_V3_PCTR_0_PCTRS0,
          V3D_PCTR_CYCLE_COUNT);
  V3D_CORE_WRITE(core, V3D_V3_PCTR_0_CLR, 1);
  V3D_CORE_WRITE(core, V3D_V3_PCTR_0_EN,
          V3D_V3_PCTR_0_EN_ENABLE |
          1);
 }
 msleep(measure_ms);
 cycles = V3D_CORE_READ(core, V3D_PCTR_0_PCTR0);

 seq_printf(m, "cycles: %d (%d.%d Mhz)\n",
     cycles,
     cycles / (measure_ms * 1000),
     (cycles / (measure_ms * 100)) % 10);

 pm_runtime_mark_last_busy(v3d->dev);
 pm_runtime_put_autosuspend(v3d->dev);

 return 0;
}
