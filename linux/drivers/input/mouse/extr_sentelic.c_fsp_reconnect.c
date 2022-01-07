
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int EIO ;
 int ENODEV ;
 scalar_t__ fsp_activate_protocol (struct psmouse*) ;
 scalar_t__ fsp_detect (struct psmouse*,int ) ;
 scalar_t__ fsp_get_version (struct psmouse*,int*) ;

__attribute__((used)) static int fsp_reconnect(struct psmouse *psmouse)
{
 int version;

 if (fsp_detect(psmouse, 0))
  return -ENODEV;

 if (fsp_get_version(psmouse, &version))
  return -ENODEV;

 if (fsp_activate_protocol(psmouse))
  return -EIO;

 return 0;
}
