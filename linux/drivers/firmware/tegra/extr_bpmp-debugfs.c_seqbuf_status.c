
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seqbuf {scalar_t__ pos; scalar_t__ size; } ;


 size_t EOVERFLOW ;

__attribute__((used)) static size_t seqbuf_status(struct seqbuf *seqbuf)
{
 return seqbuf->pos <= seqbuf->size ? 0 : -EOVERFLOW;
}
