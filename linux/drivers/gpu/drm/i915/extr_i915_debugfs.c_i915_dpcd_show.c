
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct seq_file {struct drm_connector* private; } ;
struct intel_dp {int aux; } ;
struct drm_connector {scalar_t__ status; scalar_t__ connector_type; } ;
struct dpcd_block {int end; int offset; size_t size; scalar_t__ edp; } ;
typedef scalar_t__ ssize_t ;
typedef int buf ;
struct TYPE_2__ {int base; } ;


 int ARRAY_SIZE (struct dpcd_block*) ;
 scalar_t__ DRM_MODE_CONNECTOR_eDP ;
 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ connector_status_connected ;
 scalar_t__ drm_dp_dpcd_read (int *,int,int *,size_t) ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 struct dpcd_block* i915_dpcd_debug ;
 TYPE_1__* intel_attached_encoder (struct drm_connector*) ;
 int seq_printf (struct seq_file*,char*,int,int,...) ;

__attribute__((used)) static int i915_dpcd_show(struct seq_file *m, void *data)
{
 struct drm_connector *connector = m->private;
 struct intel_dp *intel_dp =
  enc_to_intel_dp(&intel_attached_encoder(connector)->base);
 u8 buf[16];
 ssize_t err;
 int i;

 if (connector->status != connector_status_connected)
  return -ENODEV;

 for (i = 0; i < ARRAY_SIZE(i915_dpcd_debug); i++) {
  const struct dpcd_block *b = &i915_dpcd_debug[i];
  size_t size = b->end ? b->end - b->offset + 1 : (b->size ?: 1);

  if (b->edp &&
      connector->connector_type != DRM_MODE_CONNECTOR_eDP)
   continue;


  if (WARN_ON(size > sizeof(buf)))
   continue;

  err = drm_dp_dpcd_read(&intel_dp->aux, b->offset, buf, size);
  if (err < 0)
   seq_printf(m, "%04x: ERROR %d\n", b->offset, (int)err);
  else
   seq_printf(m, "%04x: %*ph\n", b->offset, (int)err, buf);
 }

 return 0;
}
