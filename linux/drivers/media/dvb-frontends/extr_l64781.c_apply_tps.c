
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l64781_state {int dummy; } ;


 int l64781_writereg (struct l64781_state*,int,int) ;

__attribute__((used)) static void apply_tps (struct l64781_state* state)
{
 l64781_writereg (state, 0x2a, 0x00);
 l64781_writereg (state, 0x2a, 0x01);






 l64781_writereg (state, 0x2a, 0x02);
}
