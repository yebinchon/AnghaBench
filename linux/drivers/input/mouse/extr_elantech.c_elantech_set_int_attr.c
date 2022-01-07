
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {struct elantech_data* private; } ;
struct TYPE_2__ {int hw_version; } ;
struct elantech_data {TYPE_1__ info; } ;
struct elantech_attr_data {int field_offset; int reg; } ;
typedef int ssize_t ;


 unsigned char ETP_R10_ABSOLUTE_MODE ;
 unsigned char ETP_R11_4_BYTE_MODE ;
 scalar_t__ elantech_write_reg (struct psmouse*,int,unsigned char) ;
 int kstrtou8 (char const*,int,unsigned char*) ;

__attribute__((used)) static ssize_t elantech_set_int_attr(struct psmouse *psmouse,
         void *data, const char *buf, size_t count)
{
 struct elantech_data *etd = psmouse->private;
 struct elantech_attr_data *attr = data;
 unsigned char *reg = (unsigned char *) etd + attr->field_offset;
 unsigned char value;
 int err;

 err = kstrtou8(buf, 16, &value);
 if (err)
  return err;


 if (etd->info.hw_version == 1) {
  if (attr->reg == 0x10)

   value |= ETP_R10_ABSOLUTE_MODE;
  else if (attr->reg == 0x11)

   value |= ETP_R11_4_BYTE_MODE;
 }

 if (!attr->reg || elantech_write_reg(psmouse, attr->reg, value) == 0)
  *reg = value;

 return count;
}
