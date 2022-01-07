
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t ARRAY_SIZE (char const* const*) ;

__attribute__((used)) static const char *state_completed_string(u32 completed)
{
 static const char * const state_completed[] = {
  "EstablishComm",
  "OptimizeEQ",
  "VerifyCap"
 };

 if (completed < ARRAY_SIZE(state_completed))
  return state_completed[completed];

 return "unknown";
}
