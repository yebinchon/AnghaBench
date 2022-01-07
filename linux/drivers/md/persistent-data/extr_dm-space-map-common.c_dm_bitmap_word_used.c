
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int __le64 ;


 unsigned int ENTRIES_SHIFT ;
 int WORD_MASK_HIGH ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static unsigned dm_bitmap_word_used(void *addr, unsigned b)
{
 __le64 *words_le = addr;
 __le64 *w_le = words_le + (b >> ENTRIES_SHIFT);

 uint64_t bits = le64_to_cpu(*w_le);
 uint64_t mask = (bits + WORD_MASK_HIGH + 1) & WORD_MASK_HIGH;

 return !(~bits & mask);
}
