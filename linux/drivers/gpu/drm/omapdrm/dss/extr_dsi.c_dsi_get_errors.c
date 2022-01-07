
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dsi_data {int errors_lock; scalar_t__ errors; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 dsi_get_errors(struct dsi_data *dsi)
{
 unsigned long flags;
 u32 e;

 spin_lock_irqsave(&dsi->errors_lock, flags);
 e = dsi->errors;
 dsi->errors = 0;
 spin_unlock_irqrestore(&dsi->errors_lock, flags);
 return e;
}
