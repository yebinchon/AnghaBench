
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int count; } ;
struct tegra_ivc_header {TYPE_2__ rx; TYPE_1__ tx; } ;
struct tegra_ivc {scalar_t__ num_frames; } ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static inline bool tegra_ivc_empty(struct tegra_ivc *ivc,
       struct tegra_ivc_header *header)
{





 u32 tx = READ_ONCE(header->tx.count);
 u32 rx = READ_ONCE(header->rx.count);
 if (tx - rx > ivc->num_frames)
  return 1;

 return tx == rx;
}
