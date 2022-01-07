
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dvbv3_emulation_type { ____Placeholder_dvbv3_emulation_type } dvbv3_emulation_type ;


 int DVBV3_ATSC ;
 int DVBV3_OFDM ;
 int DVBV3_QAM ;
 int DVBV3_QPSK ;
 int DVBV3_UNKNOWN ;
__attribute__((used)) static enum dvbv3_emulation_type dvbv3_type(u32 delivery_system)
{
 switch (delivery_system) {
 case 140:
 case 138:
  return DVBV3_QAM;
 case 136:
 case 135:
 case 129:
 case 131:
 case 142:
  return DVBV3_QPSK;
 case 134:
 case 133:
 case 130:
 case 141:
  return DVBV3_OFDM;
 case 145:
 case 144:
 case 139:
  return DVBV3_ATSC;
 case 128:
 case 132:
 case 137:
 case 143:
 default:






  return DVBV3_UNKNOWN;
 }
}
