
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cyapa {int platform_ver; int fw_maj_ver; int fw_min_ver; int electrodes_x; int electrodes_y; int physical_size_x; int physical_size_y; int max_abs_x; int max_abs_y; int max_z; int x_origin; int y_origin; int btn_capability; char* product_id; int electrodes_rx; unsigned int aligned_electrodes_rx; } ;
typedef int resp_data ;


 int CAPABILITY_BTN_MASK ;
 int EINVAL ;
 int EIO ;
 int PIP_BL_PLATFORM_VER_MASK ;
 int PIP_BL_PLATFORM_VER_SHIFT ;
 int PIP_PRODUCT_FAMILY_MASK ;
 int PIP_PRODUCT_FAMILY_TRACKPAD ;
 int PIP_READ_SYS_INFO_CMD_LENGTH ;
 int PIP_READ_SYS_INFO_RESP_LENGTH ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int ,int ,int*,int*,int,int ,int) ;
 int cyapa_pip_sort_system_info_data ;
 int get_unaligned_le16 (int*) ;
 int memcpy (char*,int*,int) ;
 int pip_read_sys_info ;

__attribute__((used)) static int cyapa_gen6_read_sys_info(struct cyapa *cyapa)
{
 u8 resp_data[PIP_READ_SYS_INFO_RESP_LENGTH];
 int resp_len;
 u16 product_family;
 u8 rotat_align;
 int error;


 resp_len = sizeof(resp_data);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa,
   pip_read_sys_info, PIP_READ_SYS_INFO_CMD_LENGTH,
   resp_data, &resp_len,
   2000, cyapa_pip_sort_system_info_data, 0);
 if (error || resp_len < sizeof(resp_data))
  return error ? error : -EIO;

 product_family = get_unaligned_le16(&resp_data[7]);
 if ((product_family & PIP_PRODUCT_FAMILY_MASK) !=
  PIP_PRODUCT_FAMILY_TRACKPAD)
  return -EINVAL;

 cyapa->platform_ver = (resp_data[67] >> PIP_BL_PLATFORM_VER_SHIFT) &
         PIP_BL_PLATFORM_VER_MASK;
 cyapa->fw_maj_ver = resp_data[9];
 cyapa->fw_min_ver = resp_data[10];

 cyapa->electrodes_x = resp_data[33];
 cyapa->electrodes_y = resp_data[34];

 cyapa->physical_size_x = get_unaligned_le16(&resp_data[35]) / 100;
 cyapa->physical_size_y = get_unaligned_le16(&resp_data[37]) / 100;

 cyapa->max_abs_x = get_unaligned_le16(&resp_data[39]);
 cyapa->max_abs_y = get_unaligned_le16(&resp_data[41]);

 cyapa->max_z = get_unaligned_le16(&resp_data[43]);

 cyapa->x_origin = resp_data[45] & 0x01;
 cyapa->y_origin = resp_data[46] & 0x01;

 cyapa->btn_capability = (resp_data[70] << 3) & CAPABILITY_BTN_MASK;

 memcpy(&cyapa->product_id[0], &resp_data[51], 5);
 cyapa->product_id[5] = '-';
 memcpy(&cyapa->product_id[6], &resp_data[56], 6);
 cyapa->product_id[12] = '-';
 memcpy(&cyapa->product_id[13], &resp_data[62], 2);
 cyapa->product_id[15] = '\0';


 rotat_align = resp_data[68];
 cyapa->electrodes_rx =
  rotat_align ? cyapa->electrodes_y : cyapa->electrodes_x;
 cyapa->aligned_electrodes_rx = (cyapa->electrodes_rx + 3) & ~3u;

 if (!cyapa->electrodes_x || !cyapa->electrodes_y ||
  !cyapa->physical_size_x || !cyapa->physical_size_y ||
  !cyapa->max_abs_x || !cyapa->max_abs_y || !cyapa->max_z)
  return -EINVAL;

 return 0;
}
