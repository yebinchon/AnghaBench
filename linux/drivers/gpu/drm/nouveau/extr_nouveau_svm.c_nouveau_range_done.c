
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmm_range {int dummy; } ;


 int hmm_range_unregister (struct hmm_range*) ;
 int hmm_range_valid (struct hmm_range*) ;

__attribute__((used)) static inline bool
nouveau_range_done(struct hmm_range *range)
{
 bool ret = hmm_range_valid(range);

 hmm_range_unregister(range);
 return ret;
}
