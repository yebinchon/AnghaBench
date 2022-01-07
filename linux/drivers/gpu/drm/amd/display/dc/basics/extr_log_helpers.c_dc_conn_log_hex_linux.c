
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DC_LOG_DEBUG (char*,int const) ;

void dc_conn_log_hex_linux(const uint8_t *hex_data, int hex_data_count)
{
 int i;

 if (hex_data)
  for (i = 0; i < hex_data_count; i++)
   DC_LOG_DEBUG("%2.2X ", hex_data[i]);
}
