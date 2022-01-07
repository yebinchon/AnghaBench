
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const* const*) ;
const char *fw_rcode_string(int rcode)
{
 static const char *const names[] = {
  [134] = "no error",
  [133] = "conflict error",
  [132] = "data error",
  [128] = "type error",
  [137] = "address error",
  [129] = "send error",
  [135] = "timeout",
  [136] = "busy",
  [131] = "bus reset",
  [130] = "no ack",
 };

 if ((unsigned int)rcode < ARRAY_SIZE(names) && names[rcode])
  return names[rcode];
 else
  return "unknown";
}
