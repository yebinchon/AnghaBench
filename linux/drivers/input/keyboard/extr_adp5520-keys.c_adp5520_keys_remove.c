
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct adp5520_keys {int notifier; int master; } ;


 int ADP5520_KP_IEN ;
 int ADP5520_KR_IEN ;
 int adp5520_unregister_notifier (int ,int *,int) ;
 struct adp5520_keys* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int adp5520_keys_remove(struct platform_device *pdev)
{
 struct adp5520_keys *dev = platform_get_drvdata(pdev);

 adp5520_unregister_notifier(dev->master, &dev->notifier,
    ADP5520_KP_IEN | ADP5520_KR_IEN);

 return 0;
}
