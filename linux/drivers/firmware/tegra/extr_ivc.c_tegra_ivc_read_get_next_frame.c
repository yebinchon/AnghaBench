
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int position; int channel; int phys; } ;
struct tegra_ivc {TYPE_1__ rx; int frame_size; } ;


 int EINVAL ;
 void* ERR_PTR (int) ;
 scalar_t__ WARN_ON (int ) ;
 int smp_rmb () ;
 int tegra_ivc_check_read (struct tegra_ivc*) ;
 void* tegra_ivc_frame_virt (struct tegra_ivc*,int ,int ) ;
 int tegra_ivc_invalidate_frame (struct tegra_ivc*,int ,int ,int ,int ) ;

void *tegra_ivc_read_get_next_frame(struct tegra_ivc *ivc)
{
 int err;

 if (WARN_ON(ivc == ((void*)0)))
  return ERR_PTR(-EINVAL);

 err = tegra_ivc_check_read(ivc);
 if (err < 0)
  return ERR_PTR(err);





 smp_rmb();

 tegra_ivc_invalidate_frame(ivc, ivc->rx.phys, ivc->rx.position, 0,
       ivc->frame_size);

 return tegra_ivc_frame_virt(ivc, ivc->rx.channel, ivc->rx.position);
}
