
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int (* set_resolution ) (struct psmouse*,unsigned int) ;} ;
typedef int ssize_t ;


 int kstrtouint (char const*,int,unsigned int*) ;
 int stub1 (struct psmouse*,unsigned int) ;

__attribute__((used)) static ssize_t psmouse_attr_set_resolution(struct psmouse *psmouse, void *data, const char *buf, size_t count)
{
 unsigned int value;
 int err;

 err = kstrtouint(buf, 10, &value);
 if (err)
  return err;

 psmouse->set_resolution(psmouse, value);
 return count;
}
