
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_vgpu_ppgtt_spt {int dummy; } ;
struct intel_vgpu_page_track {struct intel_vgpu_ppgtt_spt* priv_data; } ;


 int EINVAL ;
 int ppgtt_handle_guest_write_page_table_bytes (struct intel_vgpu_ppgtt_spt*,int ,void*,int) ;

__attribute__((used)) static int ppgtt_write_protection_handler(
  struct intel_vgpu_page_track *page_track,
  u64 gpa, void *data, int bytes)
{
 struct intel_vgpu_ppgtt_spt *spt = page_track->priv_data;

 int ret;

 if (bytes != 4 && bytes != 8)
  return -EINVAL;

 ret = ppgtt_handle_guest_write_page_table_bytes(spt, gpa, data, bytes);
 if (ret)
  return ret;
 return ret;
}
