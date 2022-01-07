
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int operation; } ;
struct hv_kvp_msg {TYPE_1__ kvp_hdr; } ;


 int EINVAL ;


 int dm_reg_value ;
 int kvp_register (int) ;
 int pr_debug (char*,int) ;
 int pr_info (char*,...) ;

__attribute__((used)) static int kvp_handle_handshake(struct hv_kvp_msg *msg)
{
 switch (msg->kvp_hdr.operation) {
 case 129:
  dm_reg_value = 129;
  pr_info("KVP: IP injection functionality not available\n");
  pr_info("KVP: Upgrade the KVP daemon\n");
  break;
 case 128:
  dm_reg_value = 128;
  break;
 default:
  pr_info("KVP: incompatible daemon\n");
  pr_info("KVP: KVP version: %d, Daemon version: %d\n",
   128, msg->kvp_hdr.operation);
  return -EINVAL;
 }




 pr_debug("KVP: userspace daemon ver. %d connected\n",
   msg->kvp_hdr.operation);
 kvp_register(dm_reg_value);

 return 0;
}
