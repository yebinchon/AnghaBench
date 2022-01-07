
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SEC_REQ_LIMIT ;
 size_t* kcalloc (int,int,int ) ;
 int roundup (int,int) ;

__attribute__((used)) static int sec_alg_alloc_and_calc_split_sizes(int length, size_t **split_sizes,
           int *steps)
{
 size_t *sizes;
 int i;


 *steps = roundup(length, SEC_REQ_LIMIT) / SEC_REQ_LIMIT;
 sizes = kcalloc(*steps, sizeof(*sizes), GFP_KERNEL);
 if (!sizes)
  return -ENOMEM;

 for (i = 0; i < *steps - 1; i++)
  sizes[i] = SEC_REQ_LIMIT;
 sizes[*steps - 1] = length - SEC_REQ_LIMIT * (*steps - 1);
 *split_sizes = sizes;

 return 0;
}
