
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int attr; } ;
struct pmbus_label {int name; int label; struct device_attribute attribute; } ;
struct pmbus_data {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pmbus_label* devm_kzalloc (int ,int,int ) ;
 int pmbus_add_attribute (struct pmbus_data*,int *) ;
 int pmbus_dev_attr_init (struct device_attribute*,int ,int,int ,int *) ;
 int pmbus_show_label ;
 int snprintf (int ,int,char*,char const*,int) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int pmbus_add_label(struct pmbus_data *data,
      const char *name, int seq,
      const char *lstring, int index)
{
 struct pmbus_label *label;
 struct device_attribute *a;

 label = devm_kzalloc(data->dev, sizeof(*label), GFP_KERNEL);
 if (!label)
  return -ENOMEM;

 a = &label->attribute;

 snprintf(label->name, sizeof(label->name), "%s%d_label", name, seq);
 if (!index)
  strncpy(label->label, lstring, sizeof(label->label) - 1);
 else
  snprintf(label->label, sizeof(label->label), "%s%d", lstring,
    index);

 pmbus_dev_attr_init(a, label->name, 0444, pmbus_show_label, ((void*)0));
 return pmbus_add_attribute(data, &a->attr);
}
