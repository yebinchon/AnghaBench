
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sil164_priv {int quiet; } ;
struct intel_dvo_device {int slave_addr; struct sil164_priv* dev_priv; struct i2c_adapter* i2c_bus; } ;
struct i2c_adapter {int name; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int GFP_KERNEL ;
 int SIL164_DID ;
 int SIL164_DID_LO ;
 int SIL164_VID ;
 int SIL164_VID_LO ;
 int kfree (struct sil164_priv*) ;
 struct sil164_priv* kzalloc (int,int ) ;
 int sil164_readb (struct intel_dvo_device*,int ,unsigned char*) ;

__attribute__((used)) static bool sil164_init(struct intel_dvo_device *dvo,
   struct i2c_adapter *adapter)
{

 struct sil164_priv *sil;
 unsigned char ch;

 sil = kzalloc(sizeof(struct sil164_priv), GFP_KERNEL);
 if (sil == ((void*)0))
  return 0;

 dvo->i2c_bus = adapter;
 dvo->dev_priv = sil;
 sil->quiet = 1;

 if (!sil164_readb(dvo, SIL164_VID_LO, &ch))
  goto out;

 if (ch != (SIL164_VID & 0xff)) {
  DRM_DEBUG_KMS("sil164 not detected got %d: from %s Slave %d.\n",
     ch, adapter->name, dvo->slave_addr);
  goto out;
 }

 if (!sil164_readb(dvo, SIL164_DID_LO, &ch))
  goto out;

 if (ch != (SIL164_DID & 0xff)) {
  DRM_DEBUG_KMS("sil164 not detected got %d: from %s Slave %d.\n",
     ch, adapter->name, dvo->slave_addr);
  goto out;
 }
 sil->quiet = 0;

 DRM_DEBUG_KMS("init sil164 dvo controller successfully!\n");
 return 1;

out:
 kfree(sil);
 return 0;
}
