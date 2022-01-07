
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sur40_state {int vsvideo; } ;


 int sur40_poke (struct sur40_state*,int,int ) ;

__attribute__((used)) static void sur40_set_vsvideo(struct sur40_state *handle, u8 value)
{
 int i;

 for (i = 0; i < 4; i++)
  sur40_poke(handle, 0x1c+i, value);
 handle->vsvideo = value;
}
