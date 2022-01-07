
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int COMP_HLEN ;
 int ORH_HLEN ;

__attribute__((used)) static inline struct scatterlist *nitrox_creq_dst_sg(char *dst)
{
 return (struct scatterlist *)(dst + ORH_HLEN + COMP_HLEN);
}
