
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bset {int start; } ;
struct bkey {int dummy; } ;


 struct bkey* bkey_idx (int ,unsigned int) ;

__attribute__((used)) static inline struct bkey *bset_bkey_idx(struct bset *i, unsigned int idx)
{
 return bkey_idx(i->start, idx);
}
