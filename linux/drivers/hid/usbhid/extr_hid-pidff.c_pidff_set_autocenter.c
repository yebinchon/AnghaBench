
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pidff_device {int dummy; } ;
struct input_dev {TYPE_1__* ff; } ;
struct TYPE_2__ {struct pidff_device* private; } ;


 int pidff_autocenter (struct pidff_device*,int ) ;

__attribute__((used)) static void pidff_set_autocenter(struct input_dev *dev, u16 magnitude)
{
 struct pidff_device *pidff = dev->ff->private;

 pidff_autocenter(pidff, magnitude);
}
