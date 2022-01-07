
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atmel_i2c_cmd {int count; } ;
typedef int __le16 ;


 int CRC_SIZE ;
 int bitrev16 (int ) ;
 int cpu_to_le16 (int ) ;
 int crc16 (int ,int *,size_t) ;

__attribute__((used)) static void atmel_i2c_checksum(struct atmel_i2c_cmd *cmd)
{
 u8 *data = &cmd->count;
 size_t len = cmd->count - CRC_SIZE;
 __le16 *__crc16 = (__le16 *)(data + len);

 *__crc16 = cpu_to_le16(bitrev16(crc16(0, data, len)));
}
