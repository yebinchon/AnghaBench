
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int input_register_handler (int *) ;
 int mac_hid_create_emumouse () ;
 int mac_hid_destroy_emumouse () ;
 int mac_hid_emumouse_handler ;

__attribute__((used)) static int mac_hid_start_emulation(void)
{
 int err;

 err = mac_hid_create_emumouse();
 if (err)
  return err;

 err = input_register_handler(&mac_hid_emumouse_handler);
 if (err) {
  mac_hid_destroy_emumouse();
  return err;
 }

 return 0;
}
