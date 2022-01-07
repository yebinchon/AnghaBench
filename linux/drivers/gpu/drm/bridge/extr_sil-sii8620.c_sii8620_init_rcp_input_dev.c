
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sii8620 {int error; struct rc_dev* rc_dev; int dev; } ;
struct TYPE_2__ {int bustype; } ;
struct rc_dev {char* input_phys; char* driver_name; char* device_name; int allowed_protocols; int map_name; TYPE_1__ input_id; } ;


 int BUS_VIRTUAL ;
 int ENOMEM ;
 int RC_DRIVER_SCANCODE ;
 int RC_MAP_CEC ;
 int RC_PROTO_BIT_CEC ;
 int dev_err (int ,char*) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;

__attribute__((used)) static void sii8620_init_rcp_input_dev(struct sii8620 *ctx)
{
 struct rc_dev *rc_dev;
 int ret;

 rc_dev = rc_allocate_device(RC_DRIVER_SCANCODE);
 if (!rc_dev) {
  dev_err(ctx->dev, "Failed to allocate RC device\n");
  ctx->error = -ENOMEM;
  return;
 }

 rc_dev->input_phys = "sii8620/input0";
 rc_dev->input_id.bustype = BUS_VIRTUAL;
 rc_dev->map_name = RC_MAP_CEC;
 rc_dev->allowed_protocols = RC_PROTO_BIT_CEC;
 rc_dev->driver_name = "sii8620";
 rc_dev->device_name = "sii8620";

 ret = rc_register_device(rc_dev);

 if (ret) {
  dev_err(ctx->dev, "Failed to register RC device\n");
  ctx->error = ret;
  rc_free_device(ctx->rc_dev);
  return;
 }
 ctx->rc_dev = rc_dev;
}
