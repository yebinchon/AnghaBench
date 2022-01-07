
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse_smbus_dev {scalar_t__ need_deactivate; } ;
struct psmouse {struct psmouse_smbus_dev* private; } ;


 int psmouse_deactivate (struct psmouse*) ;

__attribute__((used)) static int psmouse_smbus_reconnect(struct psmouse *psmouse)
{
 struct psmouse_smbus_dev *smbdev = psmouse->private;

 if (smbdev->need_deactivate)
  psmouse_deactivate(psmouse);

 return 0;
}
