
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_controller {int device; } ;


 int device_for_each_child (int *,int *,int ) ;
 int device_unregister (int *) ;
 int hsi_remove_port ;

void hsi_unregister_controller(struct hsi_controller *hsi)
{
 device_for_each_child(&hsi->device, ((void*)0), hsi_remove_port);
 device_unregister(&hsi->device);
}
