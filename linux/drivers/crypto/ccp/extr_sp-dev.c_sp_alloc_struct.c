
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_device {int ord; int name; struct device* dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int SP_MAX_NAME_LEN ;
 int atomic_inc_return (int *) ;
 struct sp_device* devm_kzalloc (struct device*,int,int ) ;
 int snprintf (int ,int ,char*,int) ;
 int sp_ordinal ;

struct sp_device *sp_alloc_struct(struct device *dev)
{
 struct sp_device *sp;

 sp = devm_kzalloc(dev, sizeof(*sp), GFP_KERNEL);
 if (!sp)
  return ((void*)0);

 sp->dev = dev;
 sp->ord = atomic_inc_return(&sp_ordinal);
 snprintf(sp->name, SP_MAX_NAME_LEN, "sp-%u", sp->ord);

 return sp;
}
