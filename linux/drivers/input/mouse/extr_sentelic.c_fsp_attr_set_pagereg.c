
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EIO ;
 scalar_t__ fsp_page_reg_write (struct psmouse*,unsigned int) ;
 int kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static ssize_t fsp_attr_set_pagereg(struct psmouse *psmouse, void *data,
     const char *buf, size_t count)
{
 unsigned int val;
 int err;

 err = kstrtouint(buf, 16, &val);
 if (err)
  return err;

 if (val > 0xff)
  return -EINVAL;

 if (fsp_page_reg_write(psmouse, val))
  return -EIO;

 return count;
}
