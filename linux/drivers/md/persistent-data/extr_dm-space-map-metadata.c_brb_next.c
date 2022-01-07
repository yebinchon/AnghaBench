
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bop_ring_buffer {int bops; } ;


 unsigned int ARRAY_SIZE (int ) ;

__attribute__((used)) static unsigned brb_next(struct bop_ring_buffer *brb, unsigned old)
{
 unsigned r = old + 1;
 return r >= ARRAY_SIZE(brb->bops) ? 0 : r;
}
