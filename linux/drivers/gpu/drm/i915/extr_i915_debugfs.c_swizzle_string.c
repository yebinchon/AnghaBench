
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *swizzle_string(unsigned swizzle)
{
 switch (swizzle) {
 case 129:
  return "none";
 case 135:
  return "bit9";
 case 134:
  return "bit9/bit10";
 case 131:
  return "bit9/bit11";
 case 133:
  return "bit9/bit10/bit11";
 case 130:
  return "bit9/bit17";
 case 132:
  return "bit9/bit10/bit17";
 case 128:
  return "unknown";
 }

 return "bug";
}
