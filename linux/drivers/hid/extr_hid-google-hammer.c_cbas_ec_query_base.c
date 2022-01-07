
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ec_params_mkbp_info {int event_type; int info_type; } ;
struct cros_ec_device {int dev; } ;
struct cros_ec_command {int version; int outsize; int insize; scalar_t__ data; int command; } ;


 int EC_CMD_MKBP_INFO ;
 int EC_MKBP_EVENT_SWITCH ;
 int EC_MKBP_INFO_CURRENT ;
 int EC_MKBP_INFO_SUPPORTED ;
 int ENOMEM ;
 int EPROTO ;
 int GFP_KERNEL ;
 int cbas_parse_base_state (scalar_t__) ;
 int cros_ec_cmd_xfer_status (struct cros_ec_device*,struct cros_ec_command*) ;
 int dev_warn (int ,char*,int,int) ;
 int kfree (struct cros_ec_command*) ;
 struct cros_ec_command* kzalloc (scalar_t__,int ) ;
 scalar_t__ max (int,int) ;

__attribute__((used)) static int cbas_ec_query_base(struct cros_ec_device *ec_dev, bool get_state,
      bool *state)
{
 struct ec_params_mkbp_info *params;
 struct cros_ec_command *msg;
 int ret;

 msg = kzalloc(sizeof(*msg) + max(sizeof(u32), sizeof(*params)),
        GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 msg->command = EC_CMD_MKBP_INFO;
 msg->version = 1;
 msg->outsize = sizeof(*params);
 msg->insize = sizeof(u32);
 params = (struct ec_params_mkbp_info *)msg->data;
 params->info_type = get_state ?
  EC_MKBP_INFO_CURRENT : EC_MKBP_INFO_SUPPORTED;
 params->event_type = EC_MKBP_EVENT_SWITCH;

 ret = cros_ec_cmd_xfer_status(ec_dev, msg);
 if (ret >= 0) {
  if (ret != sizeof(u32)) {
   dev_warn(ec_dev->dev, "wrong result size: %d != %zu\n",
     ret, sizeof(u32));
   ret = -EPROTO;
  } else {
   *state = cbas_parse_base_state(msg->data);
   ret = 0;
  }
 }

 kfree(msg);

 return ret;
}
