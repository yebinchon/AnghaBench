
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned int smartscroll; } ;
typedef int ssize_t ;


 int EINVAL ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int ps2pp_set_smartscroll (struct psmouse*,unsigned int) ;

__attribute__((used)) static ssize_t ps2pp_attr_set_smartscroll(struct psmouse *psmouse, void *data,
       const char *buf, size_t count)
{
 unsigned int value;
 int err;

 err = kstrtouint(buf, 10, &value);
 if (err)
  return err;

 if (value > 1)
  return -EINVAL;

 ps2pp_set_smartscroll(psmouse, value);
 psmouse->smartscroll = value;
 return count;
}
