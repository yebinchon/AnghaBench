
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int position; int channel; } ;
struct tegra_ivc {TYPE_1__ tx; } ;


 void* ERR_PTR (int) ;
 int tegra_ivc_check_write (struct tegra_ivc*) ;
 void* tegra_ivc_frame_virt (struct tegra_ivc*,int ,int ) ;

void *tegra_ivc_write_get_next_frame(struct tegra_ivc *ivc)
{
 int err;

 err = tegra_ivc_check_write(ivc);
 if (err < 0)
  return ERR_PTR(err);

 return tegra_ivc_frame_virt(ivc, ivc->tx.channel, ivc->tx.position);
}
