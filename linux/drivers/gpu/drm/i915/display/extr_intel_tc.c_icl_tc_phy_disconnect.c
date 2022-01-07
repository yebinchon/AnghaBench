
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {int tc_mode; } ;


 int MISSING_CASE (int) ;



 int icl_tc_phy_set_safe_mode (struct intel_digital_port*,int) ;

__attribute__((used)) static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
{
 switch (dig_port->tc_mode) {
 case 129:

  break;
 case 130:
  icl_tc_phy_set_safe_mode(dig_port, 1);
  dig_port->tc_mode = 128;
  break;
 case 128:

  break;
 default:
  MISSING_CASE(dig_port->tc_mode);
 }
}
