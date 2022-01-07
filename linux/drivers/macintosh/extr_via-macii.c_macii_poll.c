
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int macii_interrupt (int ,int *) ;

__attribute__((used)) static void macii_poll(void)
{
 macii_interrupt(0, ((void*)0));
}
