
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
typedef enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;


 int BUG () ;
 int DPIO_PHY0 ;
 int DPIO_PHY1 ;




__attribute__((used)) static inline enum dpio_phy
vlv_dport_to_phy(struct intel_digital_port *dport)
{
 switch (dport->base.port) {
 case 130:
 case 129:
  return DPIO_PHY0;
 case 128:
  return DPIO_PHY1;
 default:
  BUG();
 }
}
