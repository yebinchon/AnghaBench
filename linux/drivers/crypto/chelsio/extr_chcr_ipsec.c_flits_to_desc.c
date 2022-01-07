
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int SGE_MAX_WR_LEN ;
 int WARN_ON (int) ;

__attribute__((used)) static inline unsigned int flits_to_desc(unsigned int n)
{
 WARN_ON(n > SGE_MAX_WR_LEN / 8);
 return DIV_ROUND_UP(n, 8);
}
