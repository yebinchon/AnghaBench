
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct input_dev {int dummy; } ;


 int EV_SND ;
 int SND_BELL ;
 int input_unregister_device (struct input_dev*) ;
 int m68kspkr_event (int *,int ,int ,int ) ;
 struct input_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int m68kspkr_remove(struct platform_device *dev)
{
 struct input_dev *input_dev = platform_get_drvdata(dev);

 input_unregister_device(input_dev);

 m68kspkr_event(((void*)0), EV_SND, SND_BELL, 0);

 return 0;
}
