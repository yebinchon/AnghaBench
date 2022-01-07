
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdc100x_data {int config; } ;


 int HDC100X_REG_CONFIG_HEATER_EN ;

__attribute__((used)) static int hdc100x_get_heater_status(struct hdc100x_data *data)
{
 return !!(data->config & HDC100X_REG_CONFIG_HEATER_EN);
}
