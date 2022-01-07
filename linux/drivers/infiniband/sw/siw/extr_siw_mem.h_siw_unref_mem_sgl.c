
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_mem {int dummy; } ;


 int siw_mem_put (struct siw_mem*) ;

__attribute__((used)) static inline void siw_unref_mem_sgl(struct siw_mem **mem, unsigned int num_sge)
{
 while (num_sge) {
  if (*mem == ((void*)0))
   break;

  siw_mem_put(*mem);
  *mem = ((void*)0);
  mem++;
  num_sge--;
 }
}
