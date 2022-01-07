
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_cl_data {int num_hid_devices; TYPE_1__** hid_sensor_hubs; } ;
struct TYPE_2__ {int driver_data; } ;


 int hid_destroy_device (TYPE_1__*) ;
 int kfree (int ) ;

void ishtp_hid_remove(struct ishtp_cl_data *client_data)
{
 int i;

 for (i = 0; i < client_data->num_hid_devices; ++i) {
  if (client_data->hid_sensor_hubs[i]) {
   kfree(client_data->hid_sensor_hubs[i]->driver_data);
   hid_destroy_device(client_data->hid_sensor_hubs[i]);
   client_data->hid_sensor_hubs[i] = ((void*)0);
  }
 }
}
