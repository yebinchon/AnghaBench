
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct seqbuf {int dummy; } ;


 int le32_to_cpu (int ) ;
 int seqbuf_read (struct seqbuf*,int *,int) ;

__attribute__((used)) static int seqbuf_read_u32(struct seqbuf *seqbuf, uint32_t *v)
{
 int err;

 err = seqbuf_read(seqbuf, v, 4);
 *v = le32_to_cpu(*v);
 return err;
}
