
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 svd_to_vic(u8 svd)
{

 if ((svd >= 1 && svd <= 64) || (svd >= 129 && svd <= 192))
  return svd & 127;

 return svd;
}
