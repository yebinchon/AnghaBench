
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ id; } ;
struct uclogic_params {TYPE_1__ pen; } ;
struct uclogic_drvdata {TYPE_3__* pen_input; struct uclogic_params params; } ;
struct hid_input {TYPE_3__* input; TYPE_2__* report; } ;
struct hid_field {int application; } ;
struct hid_device {char const* name; } ;
struct TYPE_6__ {char* name; int dev; } ;
struct TYPE_5__ {scalar_t__ id; struct hid_field** field; } ;


 int GFP_KERNEL ;






 char* devm_kzalloc (int *,size_t,int ) ;
 struct uclogic_drvdata* hid_get_drvdata (struct hid_device*) ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int uclogic_input_configured(struct hid_device *hdev,
  struct hid_input *hi)
{
 struct uclogic_drvdata *drvdata = hid_get_drvdata(hdev);
 struct uclogic_params *params = &drvdata->params;
 char *name;
 const char *suffix = ((void*)0);
 struct hid_field *field;
 size_t len;


 if (!hi->report)
  return 0;





 if (hi->report->id == params->pen.id) {

  drvdata->pen_input = hi->input;
 }

 field = hi->report->field[0];

 switch (field->application) {
 case 131:
  suffix = "Keyboard";
  break;
 case 129:
  suffix = "Mouse";
  break;
 case 130:
  suffix = "Pad";
  break;
 case 132:
  suffix = "Pen";
  break;
 case 133:
  suffix = "Consumer Control";
  break;
 case 128:
  suffix = "System Control";
  break;
 }

 if (suffix) {
  len = strlen(hdev->name) + 2 + strlen(suffix);
  name = devm_kzalloc(&hi->input->dev, len, GFP_KERNEL);
  if (name) {
   snprintf(name, len, "%s %s", hdev->name, suffix);
   hi->input->name = name;
  }
 }

 return 0;
}
