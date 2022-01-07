
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned char const*) ;

__attribute__((used)) static bool elantech_is_signature_valid(const unsigned char *param)
{
 static const unsigned char rates[] = { 200, 100, 80, 60, 40, 20, 10 };
 int i;

 if (param[0] == 0)
  return 0;

 if (param[1] == 0)
  return 1;





 if ((param[0] & 0x0f) >= 0x06 && (param[1] & 0xaf) == 0x0f &&
     param[2] < 40)
  return 1;

 for (i = 0; i < ARRAY_SIZE(rates); i++)
  if (param[2] == rates[i])
   return 0;

 return 1;
}
