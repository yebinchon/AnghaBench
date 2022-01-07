
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct cytp_data* private; } ;
struct cytp_data {scalar_t__ mode; } ;


 int psmouse_reset (struct psmouse*) ;

__attribute__((used)) static void cypress_reset(struct psmouse *psmouse)
{
 struct cytp_data *cytp = psmouse->private;

 cytp->mode = 0;

 psmouse_reset(psmouse);
}
