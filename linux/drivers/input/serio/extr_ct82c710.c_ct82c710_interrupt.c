
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int CT82C710_DATA ;
 int ct82c710_port ;
 int inb (int ) ;
 int serio_interrupt (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t ct82c710_interrupt(int cpl, void *dev_id)
{
 return serio_interrupt(ct82c710_port, inb(CT82C710_DATA), 0);
}
