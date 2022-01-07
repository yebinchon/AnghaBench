
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_hid_desc_override {unsigned int hid_report_desc_size; char* hid_report_desc; int i2c_name; } ;
struct dmi_system_id {struct i2c_hid_desc_override* driver_data; } ;


 struct dmi_system_id* dmi_first_match (int ) ;
 int i2c_hid_dmi_desc_override_table ;
 scalar_t__ strcmp (int ,int *) ;

char *i2c_hid_get_dmi_hid_report_desc_override(uint8_t *i2c_name,
            unsigned int *size)
{
 struct i2c_hid_desc_override *override;
 const struct dmi_system_id *system_id;

 system_id = dmi_first_match(i2c_hid_dmi_desc_override_table);
 if (!system_id)
  return ((void*)0);

 override = system_id->driver_data;
 if (strcmp(override->i2c_name, i2c_name))
  return ((void*)0);

 *size = override->hid_report_desc_size;
 return override->hid_report_desc;
}
