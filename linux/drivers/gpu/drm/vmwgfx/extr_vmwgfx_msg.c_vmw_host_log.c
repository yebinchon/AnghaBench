
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_channel {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RPCI_PROTOCOL_NUM ;
 char* kasprintf (int ,char*,char const*) ;
 int kfree (char*) ;
 int vmw_close_channel (struct rpc_channel*) ;
 int vmw_msg_enabled ;
 scalar_t__ vmw_open_channel (struct rpc_channel*,int ) ;
 scalar_t__ vmw_send_msg (struct rpc_channel*,char*) ;

int vmw_host_log(const char *log)
{
 struct rpc_channel channel;
 char *msg;
 int ret = 0;


 if (!vmw_msg_enabled)
  return -ENODEV;

 if (!log)
  return ret;

 msg = kasprintf(GFP_KERNEL, "log %s", log);
 if (!msg) {
  DRM_ERROR("Cannot allocate memory for host log message.\n");
  return -ENOMEM;
 }

 if (vmw_open_channel(&channel, RPCI_PROTOCOL_NUM))
  goto out_open;

 if (vmw_send_msg(&channel, msg))
  goto out_msg;

 vmw_close_channel(&channel);
 kfree(msg);

 return 0;

out_msg:
 vmw_close_channel(&channel);
out_open:
 kfree(msg);
 DRM_ERROR("Failed to send host log message.\n");

 return -EINVAL;
}
