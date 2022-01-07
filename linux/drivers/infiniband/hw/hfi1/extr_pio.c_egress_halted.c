
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SEND_EGRESS_CTXT_STATUS_CTXT_EGRESS_HALT_STATUS_SMASK ;

__attribute__((used)) static bool egress_halted(u64 reg)
{
 return !!(reg & SEND_EGRESS_CTXT_STATUS_CTXT_EGRESS_HALT_STATUS_SMASK);
}
