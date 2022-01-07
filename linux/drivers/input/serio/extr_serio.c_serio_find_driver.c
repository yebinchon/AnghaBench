
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int name; int phys; int dev; } ;


 int EPROBE_DEFER ;
 int dev_warn (int *,char*,int ,int ,int) ;
 int device_attach (int *) ;

__attribute__((used)) static void serio_find_driver(struct serio *serio)
{
 int error;

 error = device_attach(&serio->dev);
 if (error < 0 && error != -EPROBE_DEFER)
  dev_warn(&serio->dev,
    "device_attach() failed for %s (%s), error: %d\n",
    serio->phys, serio->name, error);
}
