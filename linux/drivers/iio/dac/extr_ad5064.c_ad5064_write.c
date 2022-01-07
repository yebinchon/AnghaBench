
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5064_state {int (* write ) (struct ad5064_state*,unsigned int,unsigned int,unsigned int) ;} ;


 int stub1 (struct ad5064_state*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int ad5064_write(struct ad5064_state *st, unsigned int cmd,
 unsigned int addr, unsigned int val, unsigned int shift)
{
 val <<= shift;

 return st->write(st, cmd, addr, val);
}
