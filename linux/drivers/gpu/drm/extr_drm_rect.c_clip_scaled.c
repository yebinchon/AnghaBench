
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int DIV_ROUND_DOWN_ULL (int ,int) ;
 int DIV_ROUND_UP_ULL (int ,int) ;
 int mul_u32_u32 (int,int) ;

__attribute__((used)) static u32 clip_scaled(u32 src, u32 dst, u32 clip)
{
 u64 tmp = mul_u32_u32(src, dst - clip);





 if (src < (dst << 16))
  return DIV_ROUND_UP_ULL(tmp, dst);
 else
  return DIV_ROUND_DOWN_ULL(tmp, dst);
}
