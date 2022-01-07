
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DR_HOST ;
 unsigned int DR_NONE ;

__attribute__((used)) static const char *cros_ec_usb_role_string(unsigned int role)
{
 return role == DR_NONE ? "DISCONNECTED" :
  (role == DR_HOST ? "DFP" : "UFP");
}
