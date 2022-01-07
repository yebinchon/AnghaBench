
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MDP5_IRQ_INTF0_UNDER_RUN ;
 int MDP5_IRQ_INTF1_UNDER_RUN ;
 int MDP5_IRQ_INTF2_UNDER_RUN ;
 int MDP5_IRQ_INTF3_UNDER_RUN ;

__attribute__((used)) static inline uint32_t intf2err(int intf_num)
{
 switch (intf_num) {
 case 0: return MDP5_IRQ_INTF0_UNDER_RUN;
 case 1: return MDP5_IRQ_INTF1_UNDER_RUN;
 case 2: return MDP5_IRQ_INTF2_UNDER_RUN;
 case 3: return MDP5_IRQ_INTF3_UNDER_RUN;
 default: return 0;
 }
}
