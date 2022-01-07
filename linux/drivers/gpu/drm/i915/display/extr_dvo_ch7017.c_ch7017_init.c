
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int slave_addr; struct ch7017_priv* dev_priv; struct i2c_adapter* i2c_bus; } ;
struct i2c_adapter {int name; } ;
struct ch7017_priv {int dummy; } ;


 int CH7017_DEVICE_ID ;



 int DRM_DEBUG_KMS (char*,...) ;
 int GFP_KERNEL ;
 int ch7017_read (struct intel_dvo_device*,int ,int*) ;
 int kfree (struct ch7017_priv*) ;
 struct ch7017_priv* kzalloc (int,int ) ;

__attribute__((used)) static bool ch7017_init(struct intel_dvo_device *dvo,
   struct i2c_adapter *adapter)
{
 struct ch7017_priv *priv;
 const char *str;
 u8 val;

 priv = kzalloc(sizeof(struct ch7017_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return 0;

 dvo->i2c_bus = adapter;
 dvo->dev_priv = priv;

 if (!ch7017_read(dvo, CH7017_DEVICE_ID, &val))
  goto fail;

 switch (val) {
 case 130:
  str = "ch7017";
  break;
 case 129:
  str = "ch7018";
  break;
 case 128:
  str = "ch7019";
  break;
 default:
  DRM_DEBUG_KMS("ch701x not detected, got %d: from %s "
         "slave %d.\n",
         val, adapter->name, dvo->slave_addr);
  goto fail;
 }

 DRM_DEBUG_KMS("%s detected on %s, addr %d\n",
        str, adapter->name, dvo->slave_addr);
 return 1;

fail:
 kfree(priv);
 return 0;
}
