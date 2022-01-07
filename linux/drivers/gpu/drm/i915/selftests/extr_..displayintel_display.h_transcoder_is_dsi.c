
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int TRANSCODER_DSI_A ;
 int TRANSCODER_DSI_C ;

__attribute__((used)) static inline bool transcoder_is_dsi(enum transcoder transcoder)
{
 return transcoder == TRANSCODER_DSI_A || transcoder == TRANSCODER_DSI_C;
}
