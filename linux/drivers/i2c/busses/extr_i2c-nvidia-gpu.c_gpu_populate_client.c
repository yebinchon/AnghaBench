
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gpu_i2c_dev {int ccgx_client; TYPE_1__* gpu_ccgx_ucsi; int adapter; int dev; } ;
struct TYPE_3__ {int addr; int irq; int properties; int type; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ccgx_props ;
 TYPE_1__* devm_kzalloc (int ,int,int ) ;
 int i2c_new_device (int *,TYPE_1__*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int gpu_populate_client(struct gpu_i2c_dev *i2cd, int irq)
{
 i2cd->gpu_ccgx_ucsi = devm_kzalloc(i2cd->dev,
        sizeof(*i2cd->gpu_ccgx_ucsi),
        GFP_KERNEL);
 if (!i2cd->gpu_ccgx_ucsi)
  return -ENOMEM;

 strlcpy(i2cd->gpu_ccgx_ucsi->type, "ccgx-ucsi",
  sizeof(i2cd->gpu_ccgx_ucsi->type));
 i2cd->gpu_ccgx_ucsi->addr = 0x8;
 i2cd->gpu_ccgx_ucsi->irq = irq;
 i2cd->gpu_ccgx_ucsi->properties = ccgx_props;
 i2cd->ccgx_client = i2c_new_device(&i2cd->adapter, i2cd->gpu_ccgx_ucsi);
 if (!i2cd->ccgx_client)
  return -ENODEV;

 return 0;
}
