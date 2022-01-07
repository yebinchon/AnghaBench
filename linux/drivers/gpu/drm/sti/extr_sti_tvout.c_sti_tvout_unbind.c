
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_tvout {int dummy; } ;
struct device {int dummy; } ;


 struct sti_tvout* dev_get_drvdata (struct device*) ;
 int sti_tvout_destroy_encoders (struct sti_tvout*) ;

__attribute__((used)) static void sti_tvout_unbind(struct device *dev, struct device *master,
 void *data)
{
 struct sti_tvout *tvout = dev_get_drvdata(dev);

 sti_tvout_destroy_encoders(tvout);
}
