
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static u32 gasp_version(__be32 *p)
{
 return be32_to_cpu(p[1]) & 0xffffff;
}
