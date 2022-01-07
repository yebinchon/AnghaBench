
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct keylist {int dummy; } ;


 int bch_keylist_nkeys (struct keylist*) ;

__attribute__((used)) static inline size_t bch_keylist_bytes(struct keylist *l)
{
 return bch_keylist_nkeys(l) * sizeof(uint64_t);
}
