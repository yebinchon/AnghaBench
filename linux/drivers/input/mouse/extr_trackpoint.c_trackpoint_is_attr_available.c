
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct trackpoint_data {scalar_t__ variant_id; } ;
struct psmouse {struct trackpoint_data* private; } ;
struct attribute {int dummy; } ;
struct TYPE_6__ {struct attribute attr; } ;
struct TYPE_8__ {TYPE_2__ dattr; } ;
struct TYPE_5__ {struct attribute attr; } ;
struct TYPE_7__ {TYPE_1__ dattr; } ;


 scalar_t__ TP_VARIANT_IBM ;
 TYPE_4__ psmouse_attr_press_to_select ;
 TYPE_3__ psmouse_attr_sensitivity ;

__attribute__((used)) static bool trackpoint_is_attr_available(struct psmouse *psmouse,
      struct attribute *attr)
{
 struct trackpoint_data *tp = psmouse->private;

 return tp->variant_id == TP_VARIANT_IBM ||
  attr == &psmouse_attr_sensitivity.dattr.attr ||
  attr == &psmouse_attr_press_to_select.dattr.attr;
}
