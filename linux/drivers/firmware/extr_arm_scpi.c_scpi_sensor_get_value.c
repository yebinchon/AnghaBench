
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value ;
typedef int u64 ;
typedef int u16 ;
typedef int id ;
typedef int __le64 ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_2__ {scalar_t__ is_legacy; } ;


 int CMD_SENSOR_VALUE ;
 int cpu_to_le16 (int ) ;
 int le32_to_cpup (int *) ;
 int le64_to_cpu (int ) ;
 TYPE_1__* scpi_info ;
 int scpi_send_message (int ,int *,int,int *,int) ;

__attribute__((used)) static int scpi_sensor_get_value(u16 sensor, u64 *val)
{
 __le16 id = cpu_to_le16(sensor);
 __le64 value;
 int ret;

 ret = scpi_send_message(CMD_SENSOR_VALUE, &id, sizeof(id),
    &value, sizeof(value));
 if (ret)
  return ret;

 if (scpi_info->is_legacy)

  *val = le32_to_cpup((__le32 *)&value);
 else
  *val = le64_to_cpu(value);

 return 0;
}
