
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char CPL_TX_TLS_SFO_TYPE_ALERT ;
 unsigned char CPL_TX_TLS_SFO_TYPE_CCS ;
 unsigned char CPL_TX_TLS_SFO_TYPE_DATA ;
 unsigned char CPL_TX_TLS_SFO_TYPE_HANDSHAKE ;
 unsigned char CPL_TX_TLS_SFO_TYPE_HEARTBEAT ;





__attribute__((used)) static unsigned char tls_content_type(unsigned char content_type)
{
 switch (content_type) {
 case 130:
  return CPL_TX_TLS_SFO_TYPE_CCS;
 case 131:
  return CPL_TX_TLS_SFO_TYPE_ALERT;
 case 129:
  return CPL_TX_TLS_SFO_TYPE_HANDSHAKE;
 case 128:
  return CPL_TX_TLS_SFO_TYPE_HEARTBEAT;
 }
 return CPL_TX_TLS_SFO_TYPE_DATA;
}
