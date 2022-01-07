
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int fixed20_12 ;


 int dfixed_frac (int ) ;
 int dfixed_init (unsigned int) ;

__attribute__((used)) static inline u32 compute_initial_dda(unsigned int in)
{
 fixed20_12 inf = dfixed_init(in);
 return dfixed_frac(inf);
}
