
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etmv4_reg {int addr; int data; } ;


 int readl_relaxed (int ) ;

__attribute__((used)) static void do_smp_cross_read(void *data)
{
 struct etmv4_reg *reg = data;

 reg->data = readl_relaxed(reg->addr);
}
