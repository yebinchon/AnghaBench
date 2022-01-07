
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bkey {int * ptr; } ;


 int BUG_ON (int) ;
 unsigned int KEY_PTRS (struct bkey const*) ;
 int SET_KEY_CSUM (struct bkey*,int ) ;
 int SET_KEY_PTRS (struct bkey*,int) ;
 int memcpy (struct bkey*,struct bkey const*,int) ;

void bch_bkey_copy_single_ptr(struct bkey *dest, const struct bkey *src,
         unsigned int i)
{
 BUG_ON(i > KEY_PTRS(src));


 memcpy(dest, src, 2 * sizeof(uint64_t));
 dest->ptr[0] = src->ptr[i];
 SET_KEY_PTRS(dest, 1);

 SET_KEY_CSUM(dest, 0);
}
