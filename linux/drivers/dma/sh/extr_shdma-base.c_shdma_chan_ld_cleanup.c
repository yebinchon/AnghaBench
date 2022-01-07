
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shdma_chan {int dummy; } ;


 scalar_t__ __ld_cleanup (struct shdma_chan*,int) ;

__attribute__((used)) static void shdma_chan_ld_cleanup(struct shdma_chan *schan, bool all)
{
 while (__ld_cleanup(schan, all))
  ;
}
