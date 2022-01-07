
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct trackpoint_data {int dummy; } ;
struct trackpoint_attr_data {int field_offset; int command; } ;
struct psmouse {int ps2dev; struct trackpoint_data* private; } ;
typedef int ssize_t ;


 int kstrtou8 (char const*,int,int *) ;
 int trackpoint_write (int *,int ,int ) ;

__attribute__((used)) static ssize_t trackpoint_set_int_attr(struct psmouse *psmouse, void *data,
     const char *buf, size_t count)
{
 struct trackpoint_data *tp = psmouse->private;
 struct trackpoint_attr_data *attr = data;
 u8 *field = (void *)tp + attr->field_offset;
 u8 value;
 int err;

 err = kstrtou8(buf, 10, &value);
 if (err)
  return err;

 *field = value;
 err = trackpoint_write(&psmouse->ps2dev, attr->command, value);

 return err ?: count;
}
