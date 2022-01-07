
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be64 ;
typedef int __be16 ;


 int be16_to_cpu (int const) ;
 int snprintf (char*,unsigned int,char*,int,int,int,int) ;

__attribute__((used)) static int srpt_format_guid(char *buf, unsigned int size, const __be64 *guid)
{
 const __be16 *g = (const __be16 *)guid;

 return snprintf(buf, size, "%04x:%04x:%04x:%04x",
   be16_to_cpu(g[0]), be16_to_cpu(g[1]),
   be16_to_cpu(g[2]), be16_to_cpu(g[3]));
}
