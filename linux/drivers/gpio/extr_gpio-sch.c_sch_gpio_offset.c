
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sch_gpio {unsigned int resume_base; } ;



__attribute__((used)) static unsigned sch_gpio_offset(struct sch_gpio *sch, unsigned gpio,
    unsigned reg)
{
 unsigned base = 0;

 if (gpio >= sch->resume_base) {
  gpio -= sch->resume_base;
  base += 0x20;
 }

 return base + reg + gpio / 8;
}
