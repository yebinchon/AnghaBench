
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_rate {unsigned long rate; } ;


 int ARRAY_SIZE (struct pll_rate const*) ;
 struct pll_rate const* freqtbl ;

__attribute__((used)) static const struct pll_rate *find_rate(unsigned long rate)
{
 int i;

 for (i = 1; i < ARRAY_SIZE(freqtbl); i++)
  if (rate > freqtbl[i].rate)
   return &freqtbl[i - 1];

 return &freqtbl[i - 1];
}
