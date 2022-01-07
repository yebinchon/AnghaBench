
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trackpoint_data {int dummy; } ;
struct trackpoint_attr_data {int field_offset; int mask; int command; scalar_t__ inverted; } ;
struct psmouse {int ps2dev; struct trackpoint_data* private; } ;
typedef int ssize_t ;


 int kstrtobool (char const*,int*) ;
 int trackpoint_toggle_bit (int *,int ,int ) ;

__attribute__((used)) static ssize_t trackpoint_set_bit_attr(struct psmouse *psmouse, void *data,
     const char *buf, size_t count)
{
 struct trackpoint_data *tp = psmouse->private;
 struct trackpoint_attr_data *attr = data;
 bool *field = (void *)tp + attr->field_offset;
 bool value;
 int err;

 err = kstrtobool(buf, &value);
 if (err)
  return err;

 if (attr->inverted)
  value = !value;

 if (*field != value) {
  *field = value;
  err = trackpoint_toggle_bit(&psmouse->ps2dev,
         attr->command, attr->mask);
 }

 return err ?: count;
}
