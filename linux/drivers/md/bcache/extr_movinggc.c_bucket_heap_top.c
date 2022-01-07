
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int heap; } ;
struct bucket {int dummy; } ;


 unsigned int GC_SECTORS_USED (struct bucket*) ;
 struct bucket* heap_peek (int *) ;

__attribute__((used)) static unsigned int bucket_heap_top(struct cache *ca)
{
 struct bucket *b;

 return (b = heap_peek(&ca->heap)) ? GC_SECTORS_USED(b) : 0;
}
