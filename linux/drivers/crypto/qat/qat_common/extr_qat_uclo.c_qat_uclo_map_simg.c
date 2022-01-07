
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_suof_objhdr {int img_length; } ;
struct icp_qat_suof_img_hdr {unsigned long simg_name; unsigned long appmeta_data; int fw_type; int ae_mask; scalar_t__ css_simg; scalar_t__ css_signature; scalar_t__ css_key; scalar_t__ css_header; scalar_t__ simg_buf; int simg_len; } ;
struct icp_qat_suof_handle {scalar_t__ suof_buf; } ;
struct icp_qat_suof_chunk_hdr {scalar_t__ offset; } ;
struct icp_qat_simg_ae_mode {int fw_type; int appmeta_data; int simg_name; int ae_mask; } ;
struct icp_qat_css_hdr {int dummy; } ;


 scalar_t__ ICP_QAT_CSS_FWSK_EXPONENT_LEN ;
 scalar_t__ ICP_QAT_CSS_FWSK_MODULUS_LEN ;
 scalar_t__ ICP_QAT_CSS_SIGNATURE_LEN ;

__attribute__((used)) static void qat_uclo_map_simg(struct icp_qat_suof_handle *suof_handle,
         struct icp_qat_suof_img_hdr *suof_img_hdr,
         struct icp_qat_suof_chunk_hdr *suof_chunk_hdr)
{
 struct icp_qat_simg_ae_mode *ae_mode;
 struct icp_qat_suof_objhdr *suof_objhdr;

 suof_img_hdr->simg_buf = (suof_handle->suof_buf +
       suof_chunk_hdr->offset +
       sizeof(*suof_objhdr));
 suof_img_hdr->simg_len = ((struct icp_qat_suof_objhdr *)(uintptr_t)
      (suof_handle->suof_buf +
       suof_chunk_hdr->offset))->img_length;

 suof_img_hdr->css_header = suof_img_hdr->simg_buf;
 suof_img_hdr->css_key = (suof_img_hdr->css_header +
     sizeof(struct icp_qat_css_hdr));
 suof_img_hdr->css_signature = suof_img_hdr->css_key +
          ICP_QAT_CSS_FWSK_MODULUS_LEN +
          ICP_QAT_CSS_FWSK_EXPONENT_LEN;
 suof_img_hdr->css_simg = suof_img_hdr->css_signature +
     ICP_QAT_CSS_SIGNATURE_LEN;

 ae_mode = (struct icp_qat_simg_ae_mode *)(suof_img_hdr->css_simg);
 suof_img_hdr->ae_mask = ae_mode->ae_mask;
 suof_img_hdr->simg_name = (unsigned long)&ae_mode->simg_name;
 suof_img_hdr->appmeta_data = (unsigned long)&ae_mode->appmeta_data;
 suof_img_hdr->fw_type = ae_mode->fw_type;
}
