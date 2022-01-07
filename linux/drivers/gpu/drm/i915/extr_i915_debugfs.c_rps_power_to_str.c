
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const* const*) ;




__attribute__((used)) static const char *rps_power_to_str(unsigned int power)
{
 static const char * const strings[] = {
  [128] = "low power",
  [130] = "mixed",
  [129] = "high power",
 };

 if (power >= ARRAY_SIZE(strings) || !strings[power])
  return "unknown";

 return strings[power];
}
