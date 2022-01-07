
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb0899_internal {int srate; int rolloff; } ;
struct stb0899_state {struct stb0899_internal internal; } ;



long stb0899_carr_width(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;

 return (internal->srate + (internal->srate * internal->rolloff) / 100);
}
