
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;



__attribute__((used)) static inline struct scatterlist *nitrox_creq_src_sg(char *iv, int ivsize)
{
 return (struct scatterlist *)(iv + ivsize);
}
