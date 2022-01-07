
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct devfreq {int last_status; TYPE_2__ dev; TYPE_1__* profile; } ;
struct TYPE_3__ {int (* get_dev_status ) (int ,int *) ;} ;


 int stub1 (int ,int *) ;

__attribute__((used)) static inline int devfreq_update_stats(struct devfreq *df)
{
 return df->profile->get_dev_status(df->dev.parent, &df->last_status);
}
