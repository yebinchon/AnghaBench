
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attr; } ;
struct pmbus_samples_reg {int page; TYPE_1__ dev_attr; struct pmbus_samples_attr* attr; } ;
struct pmbus_samples_attr {int name; } ;
struct pmbus_data {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pmbus_samples_reg* devm_kzalloc (int ,int,int ) ;
 int pmbus_add_attribute (struct pmbus_data*,int *) ;
 int pmbus_dev_attr_init (TYPE_1__*,int ,int,int ,int ) ;
 int pmbus_set_samples ;
 int pmbus_show_samples ;

__attribute__((used)) static int pmbus_add_samples_attr(struct pmbus_data *data, int page,
      struct pmbus_samples_attr *attr)
{
 struct pmbus_samples_reg *reg;

 reg = devm_kzalloc(data->dev, sizeof(*reg), GFP_KERNEL);
 if (!reg)
  return -ENOMEM;

 reg->attr = attr;
 reg->page = page;

 pmbus_dev_attr_init(&reg->dev_attr, attr->name, 0644,
       pmbus_show_samples, pmbus_set_samples);

 return pmbus_add_attribute(data, &reg->dev_attr.attr);
}
