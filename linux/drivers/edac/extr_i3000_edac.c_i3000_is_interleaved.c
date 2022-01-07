
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I3000_RANKS_PER_CHANNEL ;
 scalar_t__ even_rank_attrib (unsigned char const) ;
 scalar_t__ odd_rank_attrib (unsigned char const) ;

__attribute__((used)) static int i3000_is_interleaved(const unsigned char *c0dra,
    const unsigned char *c1dra,
    const unsigned char *c0drb,
    const unsigned char *c1drb)
{
 int i;





 for (i = 0; i < I3000_RANKS_PER_CHANNEL / 2; i++)
  if (odd_rank_attrib(c0dra[i]) != odd_rank_attrib(c1dra[i]) ||
   even_rank_attrib(c0dra[i]) !=
      even_rank_attrib(c1dra[i]))
   return 0;





 for (i = 0; i < I3000_RANKS_PER_CHANNEL; i++)
  if (c0drb[i] != c1drb[i])
   return 0;

 return 1;
}
