
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct hwspinlock* lock; } ;
struct sirf_hwspinlock {scalar_t__ io_base; TYPE_3__ bank; } ;
struct TYPE_7__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hwspinlock {scalar_t__ priv; } ;
struct TYPE_9__ {int lock; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HW_SPINLOCK_NUMBER ;
 scalar_t__ HW_SPINLOCK_OFFSET (int) ;
 TYPE_6__ bank ;
 struct sirf_hwspinlock* devm_kzalloc (TYPE_1__*,int ,int ) ;
 int hwspin_lock_register (TYPE_3__*,TYPE_1__*,int *,int ,int) ;
 int iounmap (scalar_t__) ;
 scalar_t__ of_iomap (int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sirf_hwspinlock*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int sirf_hwspinlock_ops ;
 int struct_size (struct sirf_hwspinlock*,int ,int) ;

__attribute__((used)) static int sirf_hwspinlock_probe(struct platform_device *pdev)
{
 struct sirf_hwspinlock *hwspin;
 struct hwspinlock *hwlock;
 int idx, ret;

 if (!pdev->dev.of_node)
  return -ENODEV;

 hwspin = devm_kzalloc(&pdev->dev,
         struct_size(hwspin, bank.lock,
       HW_SPINLOCK_NUMBER),
         GFP_KERNEL);
 if (!hwspin)
  return -ENOMEM;


 hwspin->io_base = of_iomap(pdev->dev.of_node, 0);
 if (!hwspin->io_base)
  return -ENOMEM;

 for (idx = 0; idx < HW_SPINLOCK_NUMBER; idx++) {
  hwlock = &hwspin->bank.lock[idx];
  hwlock->priv = hwspin->io_base + HW_SPINLOCK_OFFSET(idx);
 }

 platform_set_drvdata(pdev, hwspin);

 pm_runtime_enable(&pdev->dev);

 ret = hwspin_lock_register(&hwspin->bank, &pdev->dev,
       &sirf_hwspinlock_ops, 0,
       HW_SPINLOCK_NUMBER);
 if (ret)
  goto reg_failed;

 return 0;

reg_failed:
 pm_runtime_disable(&pdev->dev);
 iounmap(hwspin->io_base);

 return ret;
}
