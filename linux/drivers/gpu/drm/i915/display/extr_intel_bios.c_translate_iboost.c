
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ARRAY_SIZE (int const*) ;
 int DRM_DEBUG_KMS (char*,int) ;

__attribute__((used)) static u8 translate_iboost(u8 val)
{
 static const u8 mapping[] = { 1, 3, 7 };

 if (val >= ARRAY_SIZE(mapping)) {
  DRM_DEBUG_KMS("Unsupported I_boost value found in VBT (%d), display may not work properly\n", val);
  return 0;
 }
 return mapping[val];
}
