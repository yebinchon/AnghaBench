
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct trackpoint_data {int dummy; } ;
struct trackpoint_attr_data {int field_offset; scalar_t__ inverted; } ;
struct psmouse {struct trackpoint_data* private; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t trackpoint_show_int_attr(struct psmouse *psmouse,
     void *data, char *buf)
{
 struct trackpoint_data *tp = psmouse->private;
 struct trackpoint_attr_data *attr = data;
 u8 value = *(u8 *)((void *)tp + attr->field_offset);

 if (attr->inverted)
  value = !value;

 return sprintf(buf, "%u\n", value);
}
