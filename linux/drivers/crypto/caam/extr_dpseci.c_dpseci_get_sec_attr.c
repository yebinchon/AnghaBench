
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpseci_sec_attr {int ptha_acc_num; int ccha_acc_num; int aes_acc_num; int des_acc_num; int arc4_acc_num; int md_acc_num; int rng_acc_num; int kasumi_acc_num; int pk_acc_num; int crc_acc_num; int snow_f9_acc_num; int snow_f8_acc_num; int zuc_enc_acc_num; int zuc_auth_acc_num; int deco_num; int era; int minor_rev; int major_rev; int ip_id; } ;
struct dpseci_rsp_get_sec_attr {int ptha_acc_num; int ccha_acc_num; int aes_acc_num; int des_acc_num; int arc4_acc_num; int md_acc_num; int rng_acc_num; int kasumi_acc_num; int pk_acc_num; int crc_acc_num; int snow_f9_acc_num; int snow_f8_acc_num; int zuc_enc_acc_num; int zuc_auth_acc_num; int deco_num; int era; int minor_rev; int major_rev; int ip_id; } ;


 int DPSECI_CMDID_GET_SEC_ATTR ;
 int le16_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpseci_get_sec_attr(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
   struct dpseci_sec_attr *attr)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpseci_rsp_get_sec_attr *rsp_params;
 int err;

 cmd.header = mc_encode_cmd_header(DPSECI_CMDID_GET_SEC_ATTR,
       cmd_flags,
       token);
 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;

 rsp_params = (struct dpseci_rsp_get_sec_attr *)cmd.params;
 attr->ip_id = le16_to_cpu(rsp_params->ip_id);
 attr->major_rev = rsp_params->major_rev;
 attr->minor_rev = rsp_params->minor_rev;
 attr->era = rsp_params->era;
 attr->deco_num = rsp_params->deco_num;
 attr->zuc_auth_acc_num = rsp_params->zuc_auth_acc_num;
 attr->zuc_enc_acc_num = rsp_params->zuc_enc_acc_num;
 attr->snow_f8_acc_num = rsp_params->snow_f8_acc_num;
 attr->snow_f9_acc_num = rsp_params->snow_f9_acc_num;
 attr->crc_acc_num = rsp_params->crc_acc_num;
 attr->pk_acc_num = rsp_params->pk_acc_num;
 attr->kasumi_acc_num = rsp_params->kasumi_acc_num;
 attr->rng_acc_num = rsp_params->rng_acc_num;
 attr->md_acc_num = rsp_params->md_acc_num;
 attr->arc4_acc_num = rsp_params->arc4_acc_num;
 attr->des_acc_num = rsp_params->des_acc_num;
 attr->aes_acc_num = rsp_params->aes_acc_num;
 attr->ccha_acc_num = rsp_params->ccha_acc_num;
 attr->ptha_acc_num = rsp_params->ptha_acc_num;

 return 0;
}
