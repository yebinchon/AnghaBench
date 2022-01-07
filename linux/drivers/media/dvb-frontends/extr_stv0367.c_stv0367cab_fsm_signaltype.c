
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum stv0367_cab_signal_type { ____Placeholder_stv0367_cab_signal_type } stv0367_cab_signal_type ;


 int FE_CAB_BLINDOK ;
 int FE_CAB_CARRIEROK ;
 int FE_CAB_DEMODOK ;
 int FE_CAB_NOAGC ;
 int FE_CAB_NOBLIND ;
 int FE_CAB_NOCARRIER ;
 int FE_CAB_NODEMOD ;
 int FE_CAB_NOSIGNAL ;
 int FE_CAB_NOTIMING ;
 int FE_CAB_TIMINGOK ;

__attribute__((used)) static
enum stv0367_cab_signal_type stv0367cab_fsm_signaltype(u32 qam_fsm_status)
{
 enum stv0367_cab_signal_type signaltype = FE_CAB_NOAGC;

 switch (qam_fsm_status) {
 case 1:
  signaltype = FE_CAB_NOAGC;
  break;
 case 2:
  signaltype = FE_CAB_NOTIMING;
  break;
 case 3:
  signaltype = FE_CAB_TIMINGOK;
  break;
 case 4:
  signaltype = FE_CAB_NOCARRIER;
  break;
 case 5:
  signaltype = FE_CAB_CARRIEROK;
  break;
 case 7:
  signaltype = FE_CAB_NOBLIND;
  break;
 case 8:
  signaltype = FE_CAB_BLINDOK;
  break;
 case 10:
  signaltype = FE_CAB_NODEMOD;
  break;
 case 11:
  signaltype = FE_CAB_DEMODOK;
  break;
 case 12:
  signaltype = FE_CAB_DEMODOK;
  break;
 case 13:
  signaltype = FE_CAB_NODEMOD;
  break;
 case 14:
  signaltype = FE_CAB_NOBLIND;
  break;
 case 15:
  signaltype = FE_CAB_NOSIGNAL;
  break;
 default:
  break;
 }

 return signaltype;
}
