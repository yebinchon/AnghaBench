
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seqbuf {scalar_t__ pos; scalar_t__ size; } ;



__attribute__((used)) static size_t seqbuf_avail(struct seqbuf *seqbuf)
{
 return seqbuf->pos < seqbuf->size ? seqbuf->size - seqbuf->pos : 0;
}
