
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seqbuf {char* buf; int pos; } ;


 int seqbuf_avail (struct seqbuf*) ;
 int seqbuf_status (struct seqbuf*) ;
 int strnlen (char const*,int ) ;

__attribute__((used)) static int seqbuf_read_str(struct seqbuf *seqbuf, const char **str)
{
 *str = seqbuf->buf + seqbuf->pos;
 seqbuf->pos += strnlen(*str, seqbuf_avail(seqbuf));
 seqbuf->pos++;
 return seqbuf_status(seqbuf);
}
