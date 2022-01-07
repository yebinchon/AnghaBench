
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int dummy; } ;
struct cc_drvdata {scalar_t__ hw_rev; } ;


 scalar_t__ CC_HW_REV_712 ;
 int set_queue_last_ind_bit (struct cc_hw_desc*) ;

__attribute__((used)) static inline void set_queue_last_ind(struct cc_drvdata *drvdata,
          struct cc_hw_desc *pdesc)
{
 if (drvdata->hw_rev >= CC_HW_REV_712)
  set_queue_last_ind_bit(pdesc);
}
