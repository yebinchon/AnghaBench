
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int cap ;
typedef int __le16 ;


 int CMD_SENSOR_CAPABILITIES ;
 int le16_to_cpu (int ) ;
 int scpi_send_message (int ,int *,int ,int *,int) ;

__attribute__((used)) static int scpi_sensor_get_capability(u16 *sensors)
{
 __le16 cap;
 int ret;

 ret = scpi_send_message(CMD_SENSOR_CAPABILITIES, ((void*)0), 0, &cap,
    sizeof(cap));
 if (!ret)
  *sensors = le16_to_cpu(cap);

 return ret;
}
