
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bset_tree {int dummy; } ;
struct bkey {int dummy; } ;


 scalar_t__ cacheline_to_bkey (struct bset_tree*,unsigned int,int ) ;

__attribute__((used)) static unsigned int bkey_to_cacheline_offset(struct bset_tree *t,
      unsigned int cacheline,
      struct bkey *k)
{
 return (u64 *) k - (u64 *) cacheline_to_bkey(t, cacheline, 0);
}
