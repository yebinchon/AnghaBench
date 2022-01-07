
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; int * elements; } ;
union acpi_object {scalar_t__ type; TYPE_1__ package; } ;
struct soc_button_info {int acpi_index; char* name; int wakeup; int autorepeat; int event_code; int event_type; } ;
struct device {int dummy; } ;


 scalar_t__ ACPI_TYPE_PACKAGE ;
 int ENODEV ;
 int EV_KEY ;
 int EV_SW ;
 int KEY_LEFTMETA ;
 int KEY_POWER ;
 int KEY_RESERVED ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int SW_ROTATE_LOCK ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,int,int,int) ;
 int soc_button_get_acpi_object_int (int *) ;

__attribute__((used)) static int soc_button_parse_btn_desc(struct device *dev,
         const union acpi_object *desc,
         int collection_uid,
         struct soc_button_info *info)
{
 int upage, usage;

 if (desc->type != ACPI_TYPE_PACKAGE ||
     desc->package.count != 5 ||

     soc_button_get_acpi_object_int(&desc->package.elements[0]) != 1 ||

     soc_button_get_acpi_object_int(&desc->package.elements[2]) !=
           collection_uid) {
  dev_err(dev, "Invalid ACPI Button Descriptor\n");
  return -ENODEV;
 }

 info->event_type = EV_KEY;
 info->acpi_index =
  soc_button_get_acpi_object_int(&desc->package.elements[1]);
 upage = soc_button_get_acpi_object_int(&desc->package.elements[3]);
 usage = soc_button_get_acpi_object_int(&desc->package.elements[4]);
 if (upage == 0x01 && usage == 0x81) {
  info->name = "power";
  info->event_code = KEY_POWER;
  info->wakeup = 1;
 } else if (upage == 0x01 && usage == 0xca) {
  info->name = "rotation lock switch";
  info->event_type = EV_SW;
  info->event_code = SW_ROTATE_LOCK;
 } else if (upage == 0x07 && usage == 0xe3) {
  info->name = "home";
  info->event_code = KEY_LEFTMETA;
  info->wakeup = 1;
 } else if (upage == 0x0c && usage == 0xe9) {
  info->name = "volume_up";
  info->event_code = KEY_VOLUMEUP;
  info->autorepeat = 1;
 } else if (upage == 0x0c && usage == 0xea) {
  info->name = "volume_down";
  info->event_code = KEY_VOLUMEDOWN;
  info->autorepeat = 1;
 } else {
  dev_warn(dev, "Unknown button index %d upage %02x usage %02x, ignoring\n",
    info->acpi_index, upage, usage);
  info->name = "unknown";
  info->event_code = KEY_RESERVED;
 }

 return 0;
}
