
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;





__attribute__((used)) static inline const char *guc_ct_buffer_type_to_str(u32 type)
{
 switch (type) {
 case 128:
  return "SEND";
 case 129:
  return "RECV";
 default:
  return "<invalid>";
 }
}
