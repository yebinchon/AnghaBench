
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnss_device {size_t type; int dev; } ;


 size_t GNSS_TYPE_COUNT ;
 int dev_WARN (int *,char*) ;
 char** gnss_type_names ;

__attribute__((used)) static const char *gnss_type_name(struct gnss_device *gdev)
{
 const char *name = ((void*)0);

 if (gdev->type < GNSS_TYPE_COUNT)
  name = gnss_type_names[gdev->type];

 if (!name)
  dev_WARN(&gdev->dev, "type name not defined\n");

 return name;
}
