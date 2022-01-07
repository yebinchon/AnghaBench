
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int FW_FLOWC_MNEM_TCPSTATE_CLOSEWAIT ;
 int FW_FLOWC_MNEM_TCPSTATE_CLOSING ;
 int FW_FLOWC_MNEM_TCPSTATE_ESTABLISHED ;
 int FW_FLOWC_MNEM_TCPSTATE_FINWAIT1 ;
 int FW_FLOWC_MNEM_TCPSTATE_FINWAIT2 ;
 int FW_FLOWC_MNEM_TCPSTATE_LASTACK ;







__attribute__((used)) static u8 tcp_state_to_flowc_state(u8 state)
{
 switch (state) {
 case 131:
  return FW_FLOWC_MNEM_TCPSTATE_ESTABLISHED;
 case 133:
  return FW_FLOWC_MNEM_TCPSTATE_CLOSEWAIT;
 case 130:
  return FW_FLOWC_MNEM_TCPSTATE_FINWAIT1;
 case 132:
  return FW_FLOWC_MNEM_TCPSTATE_CLOSING;
 case 128:
  return FW_FLOWC_MNEM_TCPSTATE_LASTACK;
 case 129:
  return FW_FLOWC_MNEM_TCPSTATE_FINWAIT2;
 }

 return FW_FLOWC_MNEM_TCPSTATE_ESTABLISHED;
}
