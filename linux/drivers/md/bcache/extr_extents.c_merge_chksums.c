
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bkey {int* ptr; } ;


 size_t KEY_PTRS (struct bkey*) ;

__attribute__((used)) static uint64_t merge_chksums(struct bkey *l, struct bkey *r)
{
 return (l->ptr[KEY_PTRS(l)] + r->ptr[KEY_PTRS(r)]) &
  ~((uint64_t)1 << 63);
}
