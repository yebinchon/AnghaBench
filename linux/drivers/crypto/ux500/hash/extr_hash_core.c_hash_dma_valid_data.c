
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int hash_get_nents (struct scatterlist*,int,int*) ;

__attribute__((used)) static bool hash_dma_valid_data(struct scatterlist *sg, int datasize)
{
 bool aligned;


 if (hash_get_nents(sg, datasize, &aligned) < 1)
  return 0;

 return aligned;
}
