
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp8870_state {int dummy; } ;


 int sp8870_writereg (struct sp8870_state*,int,int) ;

__attribute__((used)) static int sp8870_wake_up(struct sp8870_state* state)
{

 return sp8870_writereg(state, 0xC18, 0x00D);
}
