
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int unit; int kobj; int user_device; int user_cdev; } ;
typedef int name ;


 char* class_name () ;
 int hfi1_cdev_init (int,char*,int *,int *,int *,int,int *) ;
 int hfi1_file_ops ;
 int snprintf (char*,int,char*,char*,int) ;
 int user_remove (struct hfi1_devdata*) ;

__attribute__((used)) static int user_add(struct hfi1_devdata *dd)
{
 char name[10];
 int ret;

 snprintf(name, sizeof(name), "%s_%d", class_name(), dd->unit);
 ret = hfi1_cdev_init(dd->unit, name, &hfi1_file_ops,
        &dd->user_cdev, &dd->user_device,
        1, &dd->kobj);
 if (ret)
  user_remove(dd);

 return ret;
}
