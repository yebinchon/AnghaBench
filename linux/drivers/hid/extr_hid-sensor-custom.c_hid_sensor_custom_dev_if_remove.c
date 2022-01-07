
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_sensor_custom {int data_fifo; int custom_dev; int wait; } ;


 int kfifo_free (int *) ;
 int misc_deregister (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void hid_sensor_custom_dev_if_remove(struct hid_sensor_custom
        *sensor_inst)
{
 wake_up(&sensor_inst->wait);
 misc_deregister(&sensor_inst->custom_dev);
 kfifo_free(&sensor_inst->data_fifo);

}
