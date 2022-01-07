
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
__attribute__((used)) static inline const char *transcoder_name(enum transcoder transcoder)
{
 switch (transcoder) {
 case 134:
  return "A";
 case 133:
  return "B";
 case 132:
  return "C";
 case 131:
  return "D";
 case 128:
  return "EDP";
 case 130:
  return "DSI A";
 case 129:
  return "DSI C";
 default:
  return "<invalid>";
 }
}
