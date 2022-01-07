
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {int dummy; } ;
struct hid_report {int dummy; } ;



__attribute__((used)) static inline void picolcd_init_devfs(struct picolcd_data *data,
  struct hid_report *eeprom_r, struct hid_report *eeprom_w,
  struct hid_report *flash_r, struct hid_report *flash_w,
  struct hid_report *reset)
{
}
