
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int operation; } ;
struct hv_vss_msg {TYPE_1__ vss_hdr; } ;
typedef int our_ver ;


 int EFAULT ;
 int EINVAL ;


 int dm_reg_value ;
 int hvt ;
 int hvutil_transport_send (int ,int*,int,int ) ;
 int pr_info (char*,int) ;
 int vss_register_done ;

__attribute__((used)) static int vss_handle_handshake(struct hv_vss_msg *vss_msg)
{
 u32 our_ver = 128;

 switch (vss_msg->vss_hdr.operation) {
 case 129:

  dm_reg_value = 129;
  break;
 case 128:

  if (hvutil_transport_send(hvt, &our_ver, sizeof(our_ver),
       vss_register_done))
   return -EFAULT;
  dm_reg_value = 128;
  break;
 default:
  return -EINVAL;
 }
 pr_info("VSS: userspace daemon ver. %d connected\n", dm_reg_value);
 return 0;
}
