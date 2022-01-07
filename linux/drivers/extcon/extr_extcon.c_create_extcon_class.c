
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev_groups; } ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int THIS_MODULE ;
 TYPE_1__* class_create (int ,char*) ;
 TYPE_1__* extcon_class ;
 int extcon_groups ;

__attribute__((used)) static int create_extcon_class(void)
{
 if (!extcon_class) {
  extcon_class = class_create(THIS_MODULE, "extcon");
  if (IS_ERR(extcon_class))
   return PTR_ERR(extcon_class);
  extcon_class->dev_groups = extcon_groups;
 }

 return 0;
}
