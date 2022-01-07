
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_adma_chan {TYPE_1__* tdma; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;



__attribute__((used)) static inline struct device *tdc2dev(struct tegra_adma_chan *tdc)
{
 return tdc->tdma->dev;
}
