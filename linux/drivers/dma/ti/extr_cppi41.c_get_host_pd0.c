
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DESC_TYPE ;
 int DESC_TYPE_HOST ;

__attribute__((used)) static u32 get_host_pd0(u32 length)
{
 u32 reg;

 reg = DESC_TYPE_HOST << DESC_TYPE;
 reg |= length;

 return reg;
}
