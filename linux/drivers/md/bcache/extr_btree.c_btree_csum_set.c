
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int* ptr; } ;
struct btree {TYPE_1__ key; } ;
struct bset {int dummy; } ;


 int bch_crc64_update (int,void*,int) ;
 void* bset_bkey_last (struct bset*) ;

__attribute__((used)) static uint64_t btree_csum_set(struct btree *b, struct bset *i)
{
 uint64_t crc = b->key.ptr[0];
 void *data = (void *) i + 8, *end = bset_bkey_last(i);

 crc = bch_crc64_update(crc, data, end - data);
 return crc ^ 0xffffffffffffffffULL;
}
