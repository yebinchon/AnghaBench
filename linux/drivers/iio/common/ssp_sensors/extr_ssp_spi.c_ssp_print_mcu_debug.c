
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPROTO ;
 int ssp_dbg (char*,...) ;

__attribute__((used)) static int ssp_print_mcu_debug(char *data_frame, int *data_index,
          int received_len)
{
 int length = data_frame[(*data_index)++];

 if (length > received_len - *data_index || length <= 0) {
  ssp_dbg("[SSP]: MSG From MCU-invalid debug length(%d/%d)\n",
   length, received_len);
  return length ? length : -EPROTO;
 }

 ssp_dbg("[SSP]: MSG From MCU - %s\n", &data_frame[*data_index]);

 *data_index += length;

 return 0;
}
