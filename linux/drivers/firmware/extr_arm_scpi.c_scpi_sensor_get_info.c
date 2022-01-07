
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scpi_sensor_info {int sensor_id; } ;
struct _scpi_sensor_info {int sensor_id; } ;
typedef int id ;
typedef int _info ;
typedef int __le16 ;


 int CMD_SENSOR_INFO ;
 int cpu_to_le16 (int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (struct scpi_sensor_info*,struct _scpi_sensor_info*,int) ;
 int scpi_send_message (int ,int *,int,struct _scpi_sensor_info*,int) ;

__attribute__((used)) static int scpi_sensor_get_info(u16 sensor_id, struct scpi_sensor_info *info)
{
 __le16 id = cpu_to_le16(sensor_id);
 struct _scpi_sensor_info _info;
 int ret;

 ret = scpi_send_message(CMD_SENSOR_INFO, &id, sizeof(id),
    &_info, sizeof(_info));
 if (!ret) {
  memcpy(info, &_info, sizeof(*info));
  info->sensor_id = le16_to_cpu(_info.sensor_id);
 }

 return ret;
}
