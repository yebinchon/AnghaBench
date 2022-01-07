
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_device {TYPE_2__* pdev; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_9__ {TYPE_3__* algo_data; int name; TYPE_1__ dev; int class; int owner; } ;
struct TYPE_8__ {int udelay; int timeout; int getscl; int getsda; int setscl; int setsda; struct ast_i2c_chan* data; } ;
struct ast_i2c_chan {TYPE_4__ adapter; TYPE_3__ bit; struct drm_device* dev; } ;
struct TYPE_7__ {int dev; } ;


 int DRM_ERROR (char*) ;
 int GFP_KERNEL ;
 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 int get_clock ;
 int get_data ;
 int i2c_bit_add_bus (TYPE_4__*) ;
 int i2c_set_adapdata (TYPE_4__*,struct ast_i2c_chan*) ;
 int kfree (struct ast_i2c_chan*) ;
 struct ast_i2c_chan* kzalloc (int,int ) ;
 int set_clock ;
 int set_data ;
 int snprintf (int ,int,char*) ;

__attribute__((used)) static struct ast_i2c_chan *ast_i2c_create(struct drm_device *dev)
{
 struct ast_i2c_chan *i2c;
 int ret;

 i2c = kzalloc(sizeof(struct ast_i2c_chan), GFP_KERNEL);
 if (!i2c)
  return ((void*)0);

 i2c->adapter.owner = THIS_MODULE;
 i2c->adapter.class = I2C_CLASS_DDC;
 i2c->adapter.dev.parent = &dev->pdev->dev;
 i2c->dev = dev;
 i2c_set_adapdata(&i2c->adapter, i2c);
 snprintf(i2c->adapter.name, sizeof(i2c->adapter.name),
   "AST i2c bit bus");
 i2c->adapter.algo_data = &i2c->bit;

 i2c->bit.udelay = 20;
 i2c->bit.timeout = 2;
 i2c->bit.data = i2c;
 i2c->bit.setsda = set_data;
 i2c->bit.setscl = set_clock;
 i2c->bit.getsda = get_data;
 i2c->bit.getscl = get_clock;
 ret = i2c_bit_add_bus(&i2c->adapter);
 if (ret) {
  DRM_ERROR("Failed to register bit i2c\n");
  goto out_free;
 }

 return i2c;
out_free:
 kfree(i2c);
 return ((void*)0);
}
