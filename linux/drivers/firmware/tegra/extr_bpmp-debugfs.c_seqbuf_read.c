
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seqbuf {scalar_t__ pos; scalar_t__ buf; } ;


 int memcpy (void*,scalar_t__,size_t) ;
 size_t min (size_t,int ) ;
 int seqbuf_avail (struct seqbuf*) ;
 int seqbuf_status (struct seqbuf*) ;

__attribute__((used)) static int seqbuf_read(struct seqbuf *seqbuf, void *buf, size_t nbyte)
{
 nbyte = min(nbyte, seqbuf_avail(seqbuf));
 memcpy(buf, seqbuf->buf + seqbuf->pos, nbyte);
 seqbuf->pos += nbyte;
 return seqbuf_status(seqbuf);
}
