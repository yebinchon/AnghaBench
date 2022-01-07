
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {int burst_len; scalar_t__ reg_base; int iter_list; int win_list; int buf_mutex; int mode; int user_count; } ;


 int INIT_LIST_HEAD (int *) ;
 int MSC_LEN ;
 int MSC_MODE_MULTI ;
 scalar_t__ REG_MSU_MSC0CTL ;
 int __ffs (int) ;
 int atomic_set (int *,int) ;
 int ioread32 (scalar_t__) ;
 int mutex_init (int *) ;

__attribute__((used)) static int intel_th_msc_init(struct msc *msc)
{
 atomic_set(&msc->user_count, -1);

 msc->mode = MSC_MODE_MULTI;
 mutex_init(&msc->buf_mutex);
 INIT_LIST_HEAD(&msc->win_list);
 INIT_LIST_HEAD(&msc->iter_list);

 msc->burst_len =
  (ioread32(msc->reg_base + REG_MSU_MSC0CTL) & MSC_LEN) >>
  __ffs(MSC_LEN);

 return 0;
}
