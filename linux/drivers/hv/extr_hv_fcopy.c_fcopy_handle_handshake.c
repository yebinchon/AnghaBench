
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int our_ver ;


 int EFAULT ;
 int EINVAL ;
 int FCOPY_CURRENT_VERSION ;


 int dm_reg_value ;
 int fcopy_register_done ;
 int hvt ;
 int hvutil_transport_send (int ,int*,int,int ) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int fcopy_handle_handshake(u32 version)
{
 u32 our_ver = FCOPY_CURRENT_VERSION;

 switch (version) {
 case 129:

  dm_reg_value = version;
  break;
 case 128:

  if (hvutil_transport_send(hvt, &our_ver, sizeof(our_ver),
      fcopy_register_done))
   return -EFAULT;
  dm_reg_value = version;
  break;
 default:






  return -EINVAL;
 }
 pr_debug("FCP: userspace daemon ver. %d connected\n", version);
 return 0;
}
