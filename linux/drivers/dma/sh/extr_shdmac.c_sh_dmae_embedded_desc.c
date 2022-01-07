
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shdma_desc {int dummy; } ;
struct sh_dmae_desc {struct shdma_desc shdma_desc; } ;



__attribute__((used)) static struct shdma_desc *sh_dmae_embedded_desc(void *buf, int i)
{
 return &((struct sh_dmae_desc *)buf)[i].shdma_desc;
}
