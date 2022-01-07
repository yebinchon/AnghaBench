
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_kbc {int dummy; } ;
struct input_dev {int dummy; } ;


 struct tegra_kbc* input_get_drvdata (struct input_dev*) ;
 int tegra_kbc_start (struct tegra_kbc*) ;

__attribute__((used)) static int tegra_kbc_open(struct input_dev *dev)
{
 struct tegra_kbc *kbc = input_get_drvdata(dev);

 return tegra_kbc_start(kbc);
}
