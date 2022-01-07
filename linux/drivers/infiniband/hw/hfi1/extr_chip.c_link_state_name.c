
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (char const* const*) ;
 int ilog2 (int ) ;

__attribute__((used)) static const char *link_state_name(u32 state)
{
 const char *name;
 int n = ilog2(state);
 static const char * const names[] = {
  [129] = "INIT",
  [130] = "ARMED",
  [131] = "ACTIVE",
  [137] = "DOWNDEF",
  [135] = "POLL",
  [138] = "DISABLE",
  [136] = "OFFLINE",
  [128] = "VERIFY_CAP",
  [133] = "GOING_UP",
  [134] = "GOING_OFFLINE",
  [132] = "LINK_COOLDOWN"
 };

 name = n < ARRAY_SIZE(names) ? names[n] : ((void*)0);
 return name ? name : "unknown";
}
