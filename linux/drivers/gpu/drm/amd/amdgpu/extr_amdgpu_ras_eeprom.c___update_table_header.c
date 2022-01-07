
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct amdgpu_ras_eeprom_control {int eeprom_accessor; int tbl_hdr; } ;


 int DRM_ERROR (char*,int) ;
 int EEPROM_ADDRESS_SIZE ;
 int EEPROM_HDR_START ;
 int EEPROM_I2C_TARGET_ADDR ;
 int EEPROM_TABLE_HEADER_SIZE ;
 int __encode_table_header_to_buff (int *,unsigned char*) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static int __update_table_header(struct amdgpu_ras_eeprom_control *control,
     unsigned char *buff)
{
 int ret = 0;
 struct i2c_msg msg = {
   .addr = EEPROM_I2C_TARGET_ADDR,
   .flags = 0,
   .len = EEPROM_ADDRESS_SIZE + EEPROM_TABLE_HEADER_SIZE,
   .buf = buff,
 };


 *(uint16_t *)buff = EEPROM_HDR_START;
 __encode_table_header_to_buff(&control->tbl_hdr, buff + EEPROM_ADDRESS_SIZE);

 ret = i2c_transfer(&control->eeprom_accessor, &msg, 1);
 if (ret < 1)
  DRM_ERROR("Failed to write EEPROM table header, ret:%d", ret);

 return ret;
}
