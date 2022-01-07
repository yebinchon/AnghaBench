
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct drm_device {TYPE_2__* pdev; } ;
struct TYPE_7__ {int * parent; } ;
struct TYPE_10__ {TYPE_3__* algo_data; int name; int * algo; TYPE_1__ dev; int class; int owner; } ;
struct TYPE_9__ {int udelay; struct amdgpu_i2c_chan* data; int timeout; int getscl; int getsda; int setscl; int setsda; int post_xfer; int pre_xfer; } ;
struct amdgpu_i2c_bus_rec {scalar_t__ hw_capable; scalar_t__ mm_i2c; } ;
struct amdgpu_i2c_chan {TYPE_4__ adapter; TYPE_3__ bit; int mutex; struct drm_device* dev; struct amdgpu_i2c_bus_rec rec; } ;
struct TYPE_8__ {int dev; } ;


 int DRM_ERROR (char*,char const*) ;
 int GFP_KERNEL ;
 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 int amdgpu_atombios_i2c_algo ;
 scalar_t__ amdgpu_hw_i2c ;
 int amdgpu_i2c_get_clock ;
 int amdgpu_i2c_get_data ;
 int amdgpu_i2c_post_xfer ;
 int amdgpu_i2c_pre_xfer ;
 int amdgpu_i2c_set_clock ;
 int amdgpu_i2c_set_data ;
 int i2c_add_adapter (TYPE_4__*) ;
 int i2c_bit_add_bus (TYPE_4__*) ;
 int i2c_set_adapdata (TYPE_4__*,struct amdgpu_i2c_chan*) ;
 int kfree (struct amdgpu_i2c_chan*) ;
 struct amdgpu_i2c_chan* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,char const*) ;
 int usecs_to_jiffies (int) ;

struct amdgpu_i2c_chan *amdgpu_i2c_create(struct drm_device *dev,
       const struct amdgpu_i2c_bus_rec *rec,
       const char *name)
{
 struct amdgpu_i2c_chan *i2c;
 int ret;


 if (rec->mm_i2c && (amdgpu_hw_i2c == 0))
  return ((void*)0);

 i2c = kzalloc(sizeof(struct amdgpu_i2c_chan), GFP_KERNEL);
 if (i2c == ((void*)0))
  return ((void*)0);

 i2c->rec = *rec;
 i2c->adapter.owner = THIS_MODULE;
 i2c->adapter.class = I2C_CLASS_DDC;
 i2c->adapter.dev.parent = &dev->pdev->dev;
 i2c->dev = dev;
 i2c_set_adapdata(&i2c->adapter, i2c);
 mutex_init(&i2c->mutex);
 if (rec->hw_capable &&
     amdgpu_hw_i2c) {

  snprintf(i2c->adapter.name, sizeof(i2c->adapter.name),
    "AMDGPU i2c hw bus %s", name);
  i2c->adapter.algo = &amdgpu_atombios_i2c_algo;
  ret = i2c_add_adapter(&i2c->adapter);
  if (ret)
   goto out_free;
 } else {

  snprintf(i2c->adapter.name, sizeof(i2c->adapter.name),
    "AMDGPU i2c bit bus %s", name);
  i2c->adapter.algo_data = &i2c->bit;
  i2c->bit.pre_xfer = amdgpu_i2c_pre_xfer;
  i2c->bit.post_xfer = amdgpu_i2c_post_xfer;
  i2c->bit.setsda = amdgpu_i2c_set_data;
  i2c->bit.setscl = amdgpu_i2c_set_clock;
  i2c->bit.getsda = amdgpu_i2c_get_data;
  i2c->bit.getscl = amdgpu_i2c_get_clock;
  i2c->bit.udelay = 10;
  i2c->bit.timeout = usecs_to_jiffies(2200);
  i2c->bit.data = i2c;
  ret = i2c_bit_add_bus(&i2c->adapter);
  if (ret) {
   DRM_ERROR("Failed to register bit i2c %s\n", name);
   goto out_free;
  }
 }

 return i2c;
out_free:
 kfree(i2c);
 return ((void*)0);

}
