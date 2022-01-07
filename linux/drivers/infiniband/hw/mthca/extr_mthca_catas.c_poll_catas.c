
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int size; int timer; scalar_t__ map; } ;
struct mthca_dev {TYPE_1__ catas_err; } ;
struct TYPE_4__ {int timer; } ;


 scalar_t__ MTHCA_CATAS_POLL_INTERVAL ;
 TYPE_2__ catas_err ;
 struct mthca_dev* dev ;
 struct mthca_dev* from_timer (int ,struct timer_list*,int ) ;
 int handle_catas (struct mthca_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 scalar_t__ readl (scalar_t__) ;
 int round_jiffies (scalar_t__) ;

__attribute__((used)) static void poll_catas(struct timer_list *t)
{
 struct mthca_dev *dev = from_timer(dev, t, catas_err.timer);
 int i;

 for (i = 0; i < dev->catas_err.size; ++i)
  if (readl(dev->catas_err.map + i)) {
   handle_catas(dev);
   return;
  }

 mod_timer(&dev->catas_err.timer,
    round_jiffies(jiffies + MTHCA_CATAS_POLL_INTERVAL));
}
