
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seqbuf {int pos; } ;
typedef scalar_t__ ssize_t ;



__attribute__((used)) static void seqbuf_seek(struct seqbuf *seqbuf, ssize_t offset)
{
 seqbuf->pos += offset;
}
