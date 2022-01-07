
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_ivc_header {int dummy; } ;
struct tegra_ivc {unsigned int num_frames; unsigned int frame_size; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static void *tegra_ivc_frame_virt(struct tegra_ivc *ivc,
      struct tegra_ivc_header *header,
      unsigned int frame)
{
 if (WARN_ON(frame >= ivc->num_frames))
  return ERR_PTR(-EINVAL);

 return (void *)(header + 1) + ivc->frame_size * frame;
}
