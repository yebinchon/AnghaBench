
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
typedef int ssize_t ;


 int kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static ssize_t psmouse_set_int_attr(struct psmouse *psmouse, void *offset, const char *buf, size_t count)
{
 unsigned int *field = (unsigned int *)((char *)psmouse + (size_t)offset);
 unsigned int value;
 int err;

 err = kstrtouint(buf, 10, &value);
 if (err)
  return err;

 *field = value;

 return count;
}
