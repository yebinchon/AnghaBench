
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef enum smi_action { ____Placeholder_smi_action } smi_action ;


 int IB_SMI_DISCARD ;
 int IB_SMI_HANDLE ;
 size_t IB_SMP_MAX_PATH_HOPS ;

__attribute__((used)) static enum smi_action __smi_handle_dr_smp_recv(bool is_switch, int port_num,
      int phys_port_cnt,
      u8 *hop_ptr, u8 hop_cnt,
      const u8 *initial_path,
      u8 *return_path,
      u8 direction,
      bool dr_dlid_is_permissive,
      bool dr_slid_is_permissive)
{


 if (hop_cnt >= IB_SMP_MAX_PATH_HOPS)
  return IB_SMI_DISCARD;

 if (!direction) {

  if (hop_cnt && *hop_ptr == 0)
   return IB_SMI_DISCARD;


  if (*hop_ptr && *hop_ptr < hop_cnt) {
   if (!is_switch)
    return IB_SMI_DISCARD;

   return_path[*hop_ptr] = port_num;

   return (initial_path[*hop_ptr+1] <= phys_port_cnt ?
    IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (*hop_ptr == hop_cnt) {
   if (hop_cnt)
    return_path[*hop_ptr] = port_num;


   return (is_switch ||
    dr_dlid_is_permissive ?
    IB_SMI_HANDLE : IB_SMI_DISCARD);
  }



  return (*hop_ptr == hop_cnt + 1 ? IB_SMI_HANDLE : IB_SMI_DISCARD);

 } else {


  if (hop_cnt && *hop_ptr == hop_cnt + 1) {
   (*hop_ptr)--;
   return (return_path[*hop_ptr] ==
    port_num ? IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (2 <= *hop_ptr && *hop_ptr <= hop_cnt) {
   if (!is_switch)
    return IB_SMI_DISCARD;


   return (return_path[*hop_ptr-1] <= phys_port_cnt ?
    IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (*hop_ptr == 1) {
   if (dr_slid_is_permissive) {

    (*hop_ptr)--;
    return IB_SMI_HANDLE;
   }

   return (is_switch ? IB_SMI_HANDLE : IB_SMI_DISCARD);
  }



  return (*hop_ptr == 0 ? IB_SMI_HANDLE : IB_SMI_DISCARD);
 }
}
