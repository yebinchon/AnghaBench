
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct TYPE_8__ {int kdev; } ;
struct gma_connector {TYPE_3__ base; } ;
struct TYPE_7__ {int parent; } ;
struct TYPE_9__ {char* name; TYPE_2__ dev; TYPE_1__* algo_data; int class; int owner; } ;
struct TYPE_6__ {int running; int aux_ch; scalar_t__ address; } ;
struct cdv_intel_dp {TYPE_4__ adapter; TYPE_1__ algo; } ;


 int DRM_DEBUG_KMS (char*,char const*) ;
 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 int cdv_intel_dp_i2c_aux_ch ;
 int cdv_intel_edp_panel_vdd_off (struct gma_encoder*) ;
 int cdv_intel_edp_panel_vdd_on (struct gma_encoder*) ;
 int i2c_dp_aux_add_bus (TYPE_4__*) ;
 scalar_t__ is_edp (struct gma_encoder*) ;
 int memset (TYPE_4__*,char,int) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int
cdv_intel_dp_i2c_init(struct gma_connector *connector,
        struct gma_encoder *encoder, const char *name)
{
 struct cdv_intel_dp *intel_dp = encoder->dev_priv;
 int ret;

 DRM_DEBUG_KMS("i2c_init %s\n", name);

 intel_dp->algo.running = 0;
 intel_dp->algo.address = 0;
 intel_dp->algo.aux_ch = cdv_intel_dp_i2c_aux_ch;

 memset(&intel_dp->adapter, '\0', sizeof (intel_dp->adapter));
 intel_dp->adapter.owner = THIS_MODULE;
 intel_dp->adapter.class = I2C_CLASS_DDC;
 strncpy (intel_dp->adapter.name, name, sizeof(intel_dp->adapter.name) - 1);
 intel_dp->adapter.name[sizeof(intel_dp->adapter.name) - 1] = '\0';
 intel_dp->adapter.algo_data = &intel_dp->algo;
 intel_dp->adapter.dev.parent = connector->base.kdev;

 if (is_edp(encoder))
  cdv_intel_edp_panel_vdd_on(encoder);
 ret = i2c_dp_aux_add_bus(&intel_dp->adapter);
 if (is_edp(encoder))
  cdv_intel_edp_panel_vdd_off(encoder);

 return ret;
}
