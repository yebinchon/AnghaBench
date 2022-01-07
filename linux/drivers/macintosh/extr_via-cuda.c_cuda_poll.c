
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cuda_interrupt (int ,int *) ;

void
cuda_poll(void)
{
 cuda_interrupt(0, ((void*)0));
}
