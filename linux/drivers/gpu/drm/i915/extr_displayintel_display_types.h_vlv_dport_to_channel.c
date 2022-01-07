
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
typedef enum dpio_channel { ____Placeholder_dpio_channel } dpio_channel ;


 int BUG () ;
 int DPIO_CH0 ;
 int DPIO_CH1 ;




__attribute__((used)) static inline enum dpio_channel
vlv_dport_to_channel(struct intel_digital_port *dport)
{
 switch (dport->base.port) {
 case 130:
 case 128:
  return DPIO_CH0;
 case 129:
  return DPIO_CH1;
 default:
  BUG();
 }
}
