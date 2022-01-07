
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seqbuf {size_t size; scalar_t__ pos; void* buf; } ;



__attribute__((used)) static void seqbuf_init(struct seqbuf *seqbuf, void *buf, size_t size)
{
 seqbuf->buf = buf;
 seqbuf->size = size;
 seqbuf->pos = 0;
}
