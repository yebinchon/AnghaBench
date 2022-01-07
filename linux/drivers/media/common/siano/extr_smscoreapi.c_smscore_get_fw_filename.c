
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smscore_device_t {int devpath; } ;
typedef enum sms_device_type_st { ____Placeholder_sms_device_type_st } sms_device_type_st ;
struct TYPE_2__ {char** fw; } ;


 int DEVICE_MODE_MAX ;
 int DEVICE_MODE_NONE ;
 int SMS_NUM_OF_DEVICE_TYPES ;
 int SMS_UNKNOWN_TYPE ;
 int pr_debug (char*,int,int) ;
 TYPE_1__* sms_get_board (int) ;
 char*** smscore_fw_lkup ;
 int smscore_get_board_id (struct smscore_device_t*) ;
 int smscore_registry_gettype (int ) ;

__attribute__((used)) static char *smscore_get_fw_filename(struct smscore_device_t *coredev,
         int mode)
{
 char **fw;
 int board_id = smscore_get_board_id(coredev);
 enum sms_device_type_st type;

 type = smscore_registry_gettype(coredev->devpath);


 if (type <= SMS_UNKNOWN_TYPE || type >= SMS_NUM_OF_DEVICE_TYPES)
  return ((void*)0);
 if (mode <= DEVICE_MODE_NONE || mode >= DEVICE_MODE_MAX)
  return ((void*)0);

 pr_debug("trying to get fw name from sms_boards board_id %d mode %d\n",
    board_id, mode);
 fw = sms_get_board(board_id)->fw;
 if (!fw || !fw[mode]) {
  pr_debug("cannot find fw name in sms_boards, getting from lookup table mode %d type %d\n",
     mode, type);
  return smscore_fw_lkup[type][mode];
 }

 return fw[mode];
}
