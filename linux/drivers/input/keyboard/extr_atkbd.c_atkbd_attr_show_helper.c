
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct device {int dummy; } ;
typedef struct atkbd atkbd ;
typedef int ssize_t ;


 struct atkbd* serio_get_drvdata (struct serio*) ;
 struct serio* to_serio_port (struct device*) ;

__attribute__((used)) static ssize_t atkbd_attr_show_helper(struct device *dev, char *buf,
    ssize_t (*handler)(struct atkbd *, char *))
{
 struct serio *serio = to_serio_port(dev);
 struct atkbd *atkbd = serio_get_drvdata(serio);

 return handler(atkbd, buf);
}
