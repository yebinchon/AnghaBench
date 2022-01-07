
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int input_unregister_handler (int *) ;
 int mac_hid_destroy_emumouse () ;
 int mac_hid_emumouse_handler ;

__attribute__((used)) static void mac_hid_stop_emulation(void)
{
 input_unregister_handler(&mac_hid_emumouse_handler);
 mac_hid_destroy_emumouse();
}
