
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_engine_hangcheck_action { ____Placeholder_intel_engine_hangcheck_action } intel_engine_hangcheck_action ;
__attribute__((used)) static inline const char *
hangcheck_action_to_str(const enum intel_engine_hangcheck_action a)
{
 switch (a) {
 case 130:
  return "idle";
 case 129:
  return "wait";
 case 133:
  return "active seqno";
 case 134:
  return "active head";
 case 132:
  return "active subunits";
 case 128:
  return "wait kick";
 case 131:
  return "dead";
 }

 return "unknown";
}
