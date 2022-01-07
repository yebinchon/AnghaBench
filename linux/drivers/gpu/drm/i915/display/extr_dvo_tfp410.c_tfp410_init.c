
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfp410_priv {int quiet; } ;
struct intel_dvo_device {int slave_addr; struct tfp410_priv* dev_priv; struct i2c_adapter* i2c_bus; } ;
struct i2c_adapter {int name; } ;


 int DRM_DEBUG_KMS (char*,int,int ,int ) ;
 int GFP_KERNEL ;
 int TFP410_DID ;
 int TFP410_DID_LO ;
 int TFP410_VID ;
 int TFP410_VID_LO ;
 int kfree (struct tfp410_priv*) ;
 struct tfp410_priv* kzalloc (int,int ) ;
 int tfp410_getid (struct intel_dvo_device*,int ) ;

__attribute__((used)) static bool tfp410_init(struct intel_dvo_device *dvo,
   struct i2c_adapter *adapter)
{

 struct tfp410_priv *tfp;
 int id;

 tfp = kzalloc(sizeof(struct tfp410_priv), GFP_KERNEL);
 if (tfp == ((void*)0))
  return 0;

 dvo->i2c_bus = adapter;
 dvo->dev_priv = tfp;
 tfp->quiet = 1;

 if ((id = tfp410_getid(dvo, TFP410_VID_LO)) != TFP410_VID) {
  DRM_DEBUG_KMS("tfp410 not detected got VID %X: from %s "
    "Slave %d.\n",
     id, adapter->name, dvo->slave_addr);
  goto out;
 }

 if ((id = tfp410_getid(dvo, TFP410_DID_LO)) != TFP410_DID) {
  DRM_DEBUG_KMS("tfp410 not detected got DID %X: from %s "
    "Slave %d.\n",
     id, adapter->name, dvo->slave_addr);
  goto out;
 }
 tfp->quiet = 0;
 return 1;
out:
 kfree(tfp);
 return 0;
}
