
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum port { ____Placeholder_port } port ;


 int PORT_A ;
 int TRANSCODER_DSI_0 ;
 int TRANSCODER_DSI_1 ;

__attribute__((used)) static enum transcoder dsi_port_to_transcoder(enum port port)
{
 if (port == PORT_A)
  return TRANSCODER_DSI_0;
 else
  return TRANSCODER_DSI_1;
}
