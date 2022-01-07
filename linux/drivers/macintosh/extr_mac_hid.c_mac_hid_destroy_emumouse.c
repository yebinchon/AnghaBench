
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int input_unregister_device (int *) ;
 int * mac_hid_emumouse_dev ;

__attribute__((used)) static void mac_hid_destroy_emumouse(void)
{
 input_unregister_device(mac_hid_emumouse_dev);
 mac_hid_emumouse_dev = ((void*)0);
}
