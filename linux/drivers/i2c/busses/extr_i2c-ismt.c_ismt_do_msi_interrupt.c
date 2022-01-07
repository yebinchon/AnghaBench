
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int ismt_handle_isr (void*) ;

__attribute__((used)) static irqreturn_t ismt_do_msi_interrupt(int vec, void *data)
{
 return ismt_handle_isr(data);
}
