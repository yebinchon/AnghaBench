
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_pportdata {int linkinit_reason; } ;


 scalar_t__ HLS_UP_INIT ;






__attribute__((used)) static const char *link_state_reason_name(struct hfi1_pportdata *ppd, u32 state)
{
 if (state == HLS_UP_INIT) {
  switch (ppd->linkinit_reason) {
  case 128:
   return "(LINKUP)";
  case 129:
   return "(FLAPPING)";
  case 131:
   return "(OUTSIDE_POLICY)";
  case 130:
   return "(QUARANTINED)";
  case 132:
   return "(INSUFIC_CAPABILITY)";
  default:
   break;
  }
 }
 return "";
}
