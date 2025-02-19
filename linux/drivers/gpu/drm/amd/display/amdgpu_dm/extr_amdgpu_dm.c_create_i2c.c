
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ddc_service {TYPE_5__* ddc_pin; TYPE_1__* ctx; } ;
struct TYPE_8__ {int * parent; } ;
struct TYPE_12__ {int name; int * algo; TYPE_2__ dev; int class; int owner; } ;
struct amdgpu_i2c_adapter {struct ddc_service* ddc_service; TYPE_6__ base; } ;
struct amdgpu_device {TYPE_3__* pdev; } ;
struct TYPE_10__ {int ddc_channel; } ;
struct TYPE_11__ {TYPE_4__ hw_info; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_7__ {struct amdgpu_device* driver_context; } ;


 int GFP_KERNEL ;
 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 int amdgpu_dm_i2c_algo ;
 int i2c_set_adapdata (TYPE_6__*,struct amdgpu_i2c_adapter*) ;
 struct amdgpu_i2c_adapter* kzalloc (int,int ) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static struct amdgpu_i2c_adapter *
create_i2c(struct ddc_service *ddc_service,
    int link_index,
    int *res)
{
 struct amdgpu_device *adev = ddc_service->ctx->driver_context;
 struct amdgpu_i2c_adapter *i2c;

 i2c = kzalloc(sizeof(struct amdgpu_i2c_adapter), GFP_KERNEL);
 if (!i2c)
  return ((void*)0);
 i2c->base.owner = THIS_MODULE;
 i2c->base.class = I2C_CLASS_DDC;
 i2c->base.dev.parent = &adev->pdev->dev;
 i2c->base.algo = &amdgpu_dm_i2c_algo;
 snprintf(i2c->base.name, sizeof(i2c->base.name), "AMDGPU DM i2c hw bus %d", link_index);
 i2c_set_adapdata(&i2c->base, i2c);
 i2c->ddc_service = ddc_service;
 i2c->ddc_service->ddc_pin->hw_info.ddc_channel = link_index;

 return i2c;
}
