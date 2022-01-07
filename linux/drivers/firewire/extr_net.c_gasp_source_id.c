
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static int gasp_source_id(__be32 *p)
{
 return be32_to_cpu(p[0]) >> 16;
}
