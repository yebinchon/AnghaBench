
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hfi1_pportdata {int dummy; } ;


 size_t ARRAY_SIZE (char**) ;
 char** state_complete_reasons ;

__attribute__((used)) static const char *state_complete_reason_code_string(struct hfi1_pportdata *ppd,
           u32 code)
{
 const char *str = ((void*)0);

 if (code < ARRAY_SIZE(state_complete_reasons))
  str = state_complete_reasons[code];

 if (str)
  return str;
 return "Reserved";
}
