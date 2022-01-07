
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* enable_metric_set; int disable_metric_set; int * is_valid_flex_reg; int is_valid_mux_reg; void* is_valid_b_counter_reg; int oa_hw_tail_read; int read; int oa_disable; int oa_enable; } ;
struct TYPE_5__ {int ctx_oactxctrl_offset; int ctx_flexeu0_offset; int initialized; int spurious_report_rs; int metrics_idr; int metrics_lock; int sysctl_header; int lock; int streams; TYPE_1__ ops; void* gen8_valid_ctx_bit; int oa_formats; } ;
struct drm_i915_private {TYPE_2__ perf; } ;
struct TYPE_6__ {int cs_timestamp_frequency_khz; } ;


 void* BIT (int) ;
 scalar_t__ HAS_LOGICAL_RING_CONTEXTS (struct drm_i915_private*) ;
 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int RATELIMIT_MSG_ON_RELEASE ;
 TYPE_3__* RUNTIME_INFO (struct drm_i915_private*) ;
 int chv_is_valid_mux_addr ;
 int dev_root ;
 int gen10_disable_metric_set ;
 int gen10_is_valid_mux_addr ;
 void* gen7_is_valid_b_counter_addr ;
 int gen7_oa_disable ;
 int gen7_oa_enable ;
 int gen7_oa_hw_tail_read ;
 int gen7_oa_read ;
 int gen8_disable_metric_set ;
 void* gen8_enable_metric_set ;
 void* gen8_is_valid_flex_addr ;
 int gen8_is_valid_mux_addr ;
 int gen8_oa_disable ;
 int gen8_oa_enable ;
 int gen8_oa_hw_tail_read ;
 int gen8_oa_read ;
 int gen8_plus_oa_formats ;
 int hsw_disable_metric_set ;
 void* hsw_enable_metric_set ;
 int hsw_is_valid_mux_addr ;
 int hsw_oa_formats ;
 int idr_init (int *) ;
 int mutex_init (int *) ;
 int oa_sample_rate_hard_limit ;
 int ratelimit_set_flags (int *,int ) ;
 int ratelimit_state_init (int *,int,int) ;
 int register_sysctl_table (int ) ;

void i915_perf_init(struct drm_i915_private *dev_priv)
{
 if (IS_HASWELL(dev_priv)) {
  dev_priv->perf.ops.is_valid_b_counter_reg =
   gen7_is_valid_b_counter_addr;
  dev_priv->perf.ops.is_valid_mux_reg =
   hsw_is_valid_mux_addr;
  dev_priv->perf.ops.is_valid_flex_reg = ((void*)0);
  dev_priv->perf.ops.enable_metric_set = hsw_enable_metric_set;
  dev_priv->perf.ops.disable_metric_set = hsw_disable_metric_set;
  dev_priv->perf.ops.oa_enable = gen7_oa_enable;
  dev_priv->perf.ops.oa_disable = gen7_oa_disable;
  dev_priv->perf.ops.read = gen7_oa_read;
  dev_priv->perf.ops.oa_hw_tail_read =
   gen7_oa_hw_tail_read;

  dev_priv->perf.oa_formats = hsw_oa_formats;
 } else if (HAS_LOGICAL_RING_CONTEXTS(dev_priv)) {






  dev_priv->perf.oa_formats = gen8_plus_oa_formats;

  dev_priv->perf.ops.oa_enable = gen8_oa_enable;
  dev_priv->perf.ops.oa_disable = gen8_oa_disable;
  dev_priv->perf.ops.read = gen8_oa_read;
  dev_priv->perf.ops.oa_hw_tail_read = gen8_oa_hw_tail_read;

  if (IS_GEN_RANGE(dev_priv, 8, 9)) {
   dev_priv->perf.ops.is_valid_b_counter_reg =
    gen7_is_valid_b_counter_addr;
   dev_priv->perf.ops.is_valid_mux_reg =
    gen8_is_valid_mux_addr;
   dev_priv->perf.ops.is_valid_flex_reg =
    gen8_is_valid_flex_addr;

   if (IS_CHERRYVIEW(dev_priv)) {
    dev_priv->perf.ops.is_valid_mux_reg =
     chv_is_valid_mux_addr;
   }

   dev_priv->perf.ops.enable_metric_set = gen8_enable_metric_set;
   dev_priv->perf.ops.disable_metric_set = gen8_disable_metric_set;

   if (IS_GEN(dev_priv, 8)) {
    dev_priv->perf.ctx_oactxctrl_offset = 0x120;
    dev_priv->perf.ctx_flexeu0_offset = 0x2ce;

    dev_priv->perf.gen8_valid_ctx_bit = BIT(25);
   } else {
    dev_priv->perf.ctx_oactxctrl_offset = 0x128;
    dev_priv->perf.ctx_flexeu0_offset = 0x3de;

    dev_priv->perf.gen8_valid_ctx_bit = BIT(16);
   }
  } else if (IS_GEN_RANGE(dev_priv, 10, 11)) {
   dev_priv->perf.ops.is_valid_b_counter_reg =
    gen7_is_valid_b_counter_addr;
   dev_priv->perf.ops.is_valid_mux_reg =
    gen10_is_valid_mux_addr;
   dev_priv->perf.ops.is_valid_flex_reg =
    gen8_is_valid_flex_addr;

   dev_priv->perf.ops.enable_metric_set = gen8_enable_metric_set;
   dev_priv->perf.ops.disable_metric_set = gen10_disable_metric_set;

   if (IS_GEN(dev_priv, 10)) {
    dev_priv->perf.ctx_oactxctrl_offset = 0x128;
    dev_priv->perf.ctx_flexeu0_offset = 0x3de;
   } else {
    dev_priv->perf.ctx_oactxctrl_offset = 0x124;
    dev_priv->perf.ctx_flexeu0_offset = 0x78e;
   }
   dev_priv->perf.gen8_valid_ctx_bit = BIT(16);
  }
 }

 if (dev_priv->perf.ops.enable_metric_set) {
  INIT_LIST_HEAD(&dev_priv->perf.streams);
  mutex_init(&dev_priv->perf.lock);

  oa_sample_rate_hard_limit = 1000 *
   (RUNTIME_INFO(dev_priv)->cs_timestamp_frequency_khz / 2);
  dev_priv->perf.sysctl_header = register_sysctl_table(dev_root);

  mutex_init(&dev_priv->perf.metrics_lock);
  idr_init(&dev_priv->perf.metrics_idr);
  ratelimit_state_init(&dev_priv->perf.spurious_report_rs,
         5 * HZ, 10);




  ratelimit_set_flags(&dev_priv->perf.spurious_report_rs,
        RATELIMIT_MSG_ON_RELEASE);

  dev_priv->perf.initialized = 1;
 }
}
