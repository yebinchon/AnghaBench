
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_hsi_iface {int lock; } ;


 int spin_unlock (int *) ;

__attribute__((used)) static inline void __cs_hsi_error_post(struct cs_hsi_iface *hi)
{
 spin_unlock(&hi->lock);
}
