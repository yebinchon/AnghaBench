
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cros_ec_extcon_info {int ec; } ;
struct cros_ec_command {unsigned int version; unsigned int command; unsigned int outsize; unsigned int insize; void* data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cros_ec_cmd_xfer_status (int ,struct cros_ec_command*) ;
 int kfree (struct cros_ec_command*) ;
 struct cros_ec_command* kzalloc (scalar_t__,int ) ;
 scalar_t__ max (unsigned int,unsigned int) ;
 int memcpy (void*,void*,unsigned int) ;

__attribute__((used)) static int cros_ec_pd_command(struct cros_ec_extcon_info *info,
         unsigned int command,
         unsigned int version,
         void *outdata,
         unsigned int outsize,
         void *indata,
         unsigned int insize)
{
 struct cros_ec_command *msg;
 int ret;

 msg = kzalloc(sizeof(*msg) + max(outsize, insize), GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 msg->version = version;
 msg->command = command;
 msg->outsize = outsize;
 msg->insize = insize;

 if (outsize)
  memcpy(msg->data, outdata, outsize);

 ret = cros_ec_cmd_xfer_status(info->ec, msg);
 if (ret >= 0 && insize)
  memcpy(indata, msg->data, insize);

 kfree(msg);
 return ret;
}
