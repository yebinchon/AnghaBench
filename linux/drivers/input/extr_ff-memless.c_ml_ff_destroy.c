
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ml_device {int private; } ;
struct ff_device {struct ml_device* private; } ;


 int kfree (int ) ;

__attribute__((used)) static void ml_ff_destroy(struct ff_device *ff)
{
 struct ml_device *ml = ff->private;

 kfree(ml->private);
}
