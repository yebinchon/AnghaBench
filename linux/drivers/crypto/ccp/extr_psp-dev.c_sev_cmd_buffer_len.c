
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sev_user_data_status {int dummy; } ;
struct sev_data_send_update_vmsa {int dummy; } ;
struct sev_data_send_update_data {int dummy; } ;
struct sev_data_send_start {int dummy; } ;
struct sev_data_send_finish {int dummy; } ;
struct sev_data_receive_update_vmsa {int dummy; } ;
struct sev_data_receive_update_data {int dummy; } ;
struct sev_data_receive_start {int dummy; } ;
struct sev_data_receive_finish {int dummy; } ;
struct sev_data_pek_csr {int dummy; } ;
struct sev_data_pek_cert_import {int dummy; } ;
struct sev_data_pdh_cert_export {int dummy; } ;
struct sev_data_launch_update_vmsa {int dummy; } ;
struct sev_data_launch_update_data {int dummy; } ;
struct sev_data_launch_start {int dummy; } ;
struct sev_data_launch_secret {int dummy; } ;
struct sev_data_launch_measure {int dummy; } ;
struct sev_data_launch_finish {int dummy; } ;
struct sev_data_init {int dummy; } ;
struct sev_data_guest_status {int dummy; } ;
struct sev_data_get_id {int dummy; } ;
struct sev_data_download_firmware {int dummy; } ;
struct sev_data_decommission {int dummy; } ;
struct sev_data_deactivate {int dummy; } ;
struct sev_data_dbg {int dummy; } ;
struct sev_data_activate {int dummy; } ;
__attribute__((used)) static int sev_cmd_buffer_len(int cmd)
{
 switch (cmd) {
 case 146: return sizeof(struct sev_data_init);
 case 136: return sizeof(struct sev_user_data_status);
 case 137: return sizeof(struct sev_data_pek_csr);
 case 138: return sizeof(struct sev_data_pek_cert_import);
 case 139: return sizeof(struct sev_data_pdh_cert_export);
 case 143: return sizeof(struct sev_data_launch_start);
 case 142: return sizeof(struct sev_data_launch_update_data);
 case 140: return sizeof(struct sev_data_launch_update_vmsa);
 case 145: return sizeof(struct sev_data_launch_finish);
 case 144: return sizeof(struct sev_data_launch_measure);
 case 154: return sizeof(struct sev_data_activate);
 case 151: return sizeof(struct sev_data_deactivate);
 case 150: return sizeof(struct sev_data_decommission);
 case 147: return sizeof(struct sev_data_guest_status);
 case 153: return sizeof(struct sev_data_dbg);
 case 152: return sizeof(struct sev_data_dbg);
 case 130: return sizeof(struct sev_data_send_start);
 case 129: return sizeof(struct sev_data_send_update_data);
 case 128: return sizeof(struct sev_data_send_update_vmsa);
 case 131: return sizeof(struct sev_data_send_finish);
 case 134: return sizeof(struct sev_data_receive_start);
 case 135: return sizeof(struct sev_data_receive_finish);
 case 133: return sizeof(struct sev_data_receive_update_data);
 case 132: return sizeof(struct sev_data_receive_update_vmsa);
 case 141: return sizeof(struct sev_data_launch_secret);
 case 149: return sizeof(struct sev_data_download_firmware);
 case 148: return sizeof(struct sev_data_get_id);
 default: return 0;
 }

 return 0;
}
