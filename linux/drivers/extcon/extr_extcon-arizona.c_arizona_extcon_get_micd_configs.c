
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct device {int dummy; } ;
struct arizona_micd_config {void* gpio; void* bias; int src; } ;
struct TYPE_2__ {int num_micd_configs; struct arizona_micd_config* micd_configs; } ;
struct arizona {TYPE_1__ pdata; int dev; } ;


 int ARIZONA_ACCDET_SRC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int device_property_count_u32 (int ,char const* const) ;
 int device_property_read_u32_array (int ,char const* const,void**,int) ;
 struct arizona_micd_config* devm_kcalloc (struct device*,int,int,int ) ;
 void** kcalloc (int,int,int ) ;
 int kfree (void**) ;

__attribute__((used)) static int arizona_extcon_get_micd_configs(struct device *dev,
        struct arizona *arizona)
{
 const char * const prop = "wlf,micd-configs";
 const int entries_per_config = 3;
 struct arizona_micd_config *micd_configs;
 int nconfs, ret;
 int i, j;
 u32 *vals;

 nconfs = device_property_count_u32(arizona->dev, prop);
 if (nconfs <= 0)
  return 0;

 vals = kcalloc(nconfs, sizeof(u32), GFP_KERNEL);
 if (!vals)
  return -ENOMEM;

 ret = device_property_read_u32_array(arizona->dev, prop, vals, nconfs);
 if (ret < 0)
  goto out;

 nconfs /= entries_per_config;
 micd_configs = devm_kcalloc(dev, nconfs, sizeof(*micd_configs),
        GFP_KERNEL);
 if (!micd_configs) {
  ret = -ENOMEM;
  goto out;
 }

 for (i = 0, j = 0; i < nconfs; ++i) {
  micd_configs[i].src = vals[j++] ? ARIZONA_ACCDET_SRC : 0;
  micd_configs[i].bias = vals[j++];
  micd_configs[i].gpio = vals[j++];
 }

 arizona->pdata.micd_configs = micd_configs;
 arizona->pdata.num_micd_configs = nconfs;

out:
 kfree(vals);
 return ret;
}
