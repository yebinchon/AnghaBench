
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct smscore_device_t {scalar_t__ mode; int fw_version; int ir_init_done; int gpio_get_level_done; int gpio_get_res; int gpio_set_level_done; int gpio_configuration_done; int resume_done; int trigger_done; int data_download_done; int data_validity_done; int reload_start_done; int init_device_done; int version_ex_done; int modes_supported; } ;
struct smscore_client_t {int (* onresponse_handler ) (int ,struct smscore_buffer_t*) ;int context; } ;
struct smscore_buffer_t {int offset; scalar_t__ size; scalar_t__ p; } ;
struct sms_version_res {int firmware_id; int rom_ver_major; int rom_ver_minor; int supported_protocols; } ;
struct sms_msg_hdr {int msg_type; scalar_t__ msg_length; int msg_dst_id; } ;
struct sms_msg_data {int * msg_data; } ;


 scalar_t__ DEVICE_MODE_DVBT_BDA ;
 int DEVICE_MODE_NONE ;
 int DVBT_BDA_CONTROL_MSG_ID ;
 int EBUSY ;







 int MSG_SMS_HO_PER_SLICES_IND ;
 int MSG_SMS_TRANSMISSION_IND ;


 int complete (int *) ;
 int jiffies ;
 unsigned long jiffies_to_msecs (int ) ;
 int pr_debug (char*,int,...) ;
 int sms_ir_event (struct smscore_device_t*,char const*,int) ;
 struct smscore_client_t* smscore_find_client (struct smscore_device_t*,int,int ) ;
 int smscore_putbuffer (struct smscore_device_t*,struct smscore_buffer_t*) ;
 int smscore_translate_msg (int) ;
 int stub1 (int ,struct smscore_buffer_t*) ;

void smscore_onresponse(struct smscore_device_t *coredev,
  struct smscore_buffer_t *cb) {
 struct sms_msg_hdr *phdr = (struct sms_msg_hdr *) ((u8 *) cb->p
   + cb->offset);
 struct smscore_client_t *client;
 int rc = -EBUSY;
 static unsigned long last_sample_time;
 static int data_total;
 unsigned long time_now = jiffies_to_msecs(jiffies);

 if (!last_sample_time)
  last_sample_time = time_now;

 if (time_now - last_sample_time > 10000) {
  pr_debug("data rate %d bytes/secs\n",
     (int)((data_total * 1000) /
    (time_now - last_sample_time)));

  last_sample_time = time_now;
  data_total = 0;
 }

 data_total += cb->size;

 if ((phdr->msg_type == MSG_SMS_HO_PER_SLICES_IND) ||
   (phdr->msg_type == MSG_SMS_TRANSMISSION_IND)) {
  if (coredev->mode == DEVICE_MODE_DVBT_BDA)
   phdr->msg_dst_id = DVBT_BDA_CONTROL_MSG_ID;
 }


 client = smscore_find_client(coredev, phdr->msg_type, phdr->msg_dst_id);



 if (client)
  rc = client->onresponse_handler(client->context, cb);

 if (rc < 0) {
  switch (phdr->msg_type) {
  case 137:
   break;
  case 135:
   break;
  case 134:
   break;
  case 136:
   break;
  case 132:
   break;
  case 140:
   break;
  case 139:
   break;
  case 145:
  {
   struct sms_version_res *ver =
    (struct sms_version_res *) phdr;
   pr_debug("Firmware id %d prots 0x%x ver %d.%d\n",
      ver->firmware_id, ver->supported_protocols,
      ver->rom_ver_major, ver->rom_ver_minor);

   coredev->mode = ver->firmware_id == 255 ?
    DEVICE_MODE_NONE : ver->firmware_id;
   coredev->modes_supported = ver->supported_protocols;
   coredev->fw_version = ver->rom_ver_major << 8 |
           ver->rom_ver_minor;

   complete(&coredev->version_ex_done);
   break;
  }
  case 141:
   complete(&coredev->init_device_done);
   break;
  case 128:
   complete(&coredev->reload_start_done);
   break;
  case 147:
  {
   struct sms_msg_data *validity = (struct sms_msg_data *) phdr;

   pr_debug("MSG_SMS_DATA_VALIDITY_RES, checksum = 0x%x\n",
    validity->msg_data[0]);
   complete(&coredev->data_validity_done);
   break;
  }
  case 148:
   complete(&coredev->data_download_done);
   break;
  case 129:
   break;
  case 130:
   complete(&coredev->trigger_done);
   break;
  case 133:
   complete(&coredev->resume_done);
   break;
  case 144:
   complete(&coredev->gpio_configuration_done);
   break;
  case 142:
   complete(&coredev->gpio_set_level_done);
   break;
  case 143:
  {
   u32 *msgdata = (u32 *) phdr;
   coredev->gpio_get_res = msgdata[1];
   pr_debug("gpio level %d\n",
     coredev->gpio_get_res);
   complete(&coredev->gpio_get_level_done);
   break;
  }
  case 131:
   complete(&coredev->ir_init_done);
   break;
  case 138:
   sms_ir_event(coredev,
    (const char *)
    ((char *)phdr
    + sizeof(struct sms_msg_hdr)),
    (int)phdr->msg_length
    - sizeof(struct sms_msg_hdr));
   break;

  case 146:






   break;

  default:
   pr_debug("message %s(%d) not handled.\n",
      smscore_translate_msg(phdr->msg_type),
      phdr->msg_type);
   break;
  }
  smscore_putbuffer(coredev, cb);
 }
}
