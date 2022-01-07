
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int fsp_onpad_vscr (struct psmouse*,unsigned int) ;
 int kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static ssize_t fsp_attr_set_vscroll(struct psmouse *psmouse, void *data,
     const char *buf, size_t count)
{
 unsigned int val;
 int err;

 err = kstrtouint(buf, 10, &val);
 if (err)
  return err;

 if (val > 1)
  return -EINVAL;

 fsp_onpad_vscr(psmouse, val);

 return count;
}
