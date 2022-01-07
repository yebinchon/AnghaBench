
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_keys {int dummy; } ;
struct bset {int dummy; } ;


 int bset_byte_offset (struct btree_keys*,struct bset*) ;

__attribute__((used)) static inline unsigned int bset_sector_offset(struct btree_keys *b,
           struct bset *i)
{
 return bset_byte_offset(b, i) >> 9;
}
