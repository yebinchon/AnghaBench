
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp8870_state {int dummy; } ;


 int sp8870_writereg (struct sp8870_state*,int,int) ;

__attribute__((used)) static void sp8870_microcontroller_stop (struct sp8870_state* state)
{
 sp8870_writereg(state, 0x0F08, 0x000);
 sp8870_writereg(state, 0x0F09, 0x000);


 sp8870_writereg(state, 0x0F00, 0x000);
}
