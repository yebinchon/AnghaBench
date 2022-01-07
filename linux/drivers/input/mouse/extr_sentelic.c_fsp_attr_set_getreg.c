
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct fsp_data* private; } ;
struct fsp_data {unsigned int last_reg; unsigned int last_val; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EIO ;
 scalar_t__ fsp_reg_read (struct psmouse*,unsigned int,unsigned int*) ;
 int kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static ssize_t fsp_attr_set_getreg(struct psmouse *psmouse, void *data,
     const char *buf, size_t count)
{
 struct fsp_data *pad = psmouse->private;
 unsigned int reg, val;
 int err;

 err = kstrtouint(buf, 16, &reg);
 if (err)
  return err;

 if (reg > 0xff)
  return -EINVAL;

 if (fsp_reg_read(psmouse, reg, &val))
  return -EIO;

 pad->last_reg = reg;
 pad->last_val = val;

 return count;
}
