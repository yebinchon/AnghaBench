
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int SCALER_INT_STATUS_FRAME_END ;

__attribute__((used)) static inline int scaler_task_done(u32 val)
{
 return val & SCALER_INT_STATUS_FRAME_END ? 0 : -EINVAL;
}
