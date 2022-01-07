
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int * private; } ;


 int cypress_reset (struct psmouse*) ;
 int kfree (int *) ;

__attribute__((used)) static void cypress_disconnect(struct psmouse *psmouse)
{
 cypress_reset(psmouse);
 kfree(psmouse->private);
 psmouse->private = ((void*)0);
}
