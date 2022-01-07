
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_falcon {scalar_t__ debug; } ;
struct hsf_fw_header {int patch_loc; int patch_sig; int sig_dbg_offset; int sig_dbg_size; int sig_prod_offset; int sig_prod_size; } ;
struct fw_bin_header {int header_offset; int data_offset; } ;


 int memcpy (void*,void*,int) ;

__attribute__((used)) static void
hs_ucode_patch_signature(const struct nvkm_falcon *falcon, void *acr_image,
    bool new_format)
{
 struct fw_bin_header *hsbin_hdr = acr_image;
 struct hsf_fw_header *fw_hdr = acr_image + hsbin_hdr->header_offset;
 void *hs_data = acr_image + hsbin_hdr->data_offset;
 void *sig;
 u32 sig_size;
 u32 patch_loc, patch_sig;






 if (new_format) {
  patch_loc = fw_hdr->patch_loc;
  patch_sig = fw_hdr->patch_sig;
 } else {
  patch_loc = *(u32 *)(acr_image + fw_hdr->patch_loc);
  patch_sig = *(u32 *)(acr_image + fw_hdr->patch_sig);
 }


 if (falcon->debug) {
  sig = acr_image + fw_hdr->sig_dbg_offset;
  sig_size = fw_hdr->sig_dbg_size;
 } else {
  sig = acr_image + fw_hdr->sig_prod_offset;
  sig_size = fw_hdr->sig_prod_size;
 }


 memcpy(hs_data + patch_loc, sig + patch_sig, sig_size);
}
