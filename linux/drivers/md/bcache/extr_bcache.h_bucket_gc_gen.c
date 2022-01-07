
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bucket {scalar_t__ last_gc; scalar_t__ gen; } ;



__attribute__((used)) static inline uint8_t bucket_gc_gen(struct bucket *b)
{
 return b->gen - b->last_gc;
}
