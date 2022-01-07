
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scpi_opp {int freq; } ;



__attribute__((used)) static int opp_cmp_func(const void *opp1, const void *opp2)
{
 const struct scpi_opp *t1 = opp1, *t2 = opp2;

 return t1->freq - t2->freq;
}
