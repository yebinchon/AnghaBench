
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ i8259A_auto_eoi ;
 int init_8259A (scalar_t__) ;

__attribute__((used)) static void i8259A_resume(void)
{
 if (i8259A_auto_eoi >= 0)
  init_8259A(i8259A_auto_eoi);
}
