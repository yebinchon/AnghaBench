
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sync_state { ____Placeholder_sync_state } sync_state ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 scalar_t__ __within_range (int,int ,scalar_t__) ;

__attribute__((used)) static const char *sync_str(enum sync_state state)
{

 static const char *sync_strs[] = {
  "frozen",
  "reshape",
  "resync",
  "check",
  "repair",
  "recover",
  "idle"
 };

 return __within_range(state, 0, ARRAY_SIZE(sync_strs) - 1) ? sync_strs[state] : "undef";
}
