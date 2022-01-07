
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scaler_context {int dummy; } ;


 int SCALER_TIMEOUT_CTRL ;
 int SCALER_TIMEOUT_CTRL_SET_TIMER_DIV (unsigned int) ;
 int SCALER_TIMEOUT_CTRL_SET_TIMER_VALUE (unsigned int) ;
 int SCALER_TIMEOUT_CTRL_TIMER_ENABLE ;
 int scaler_write (int ,int ) ;

__attribute__((used)) static inline void scaler_set_timer(struct scaler_context *scaler,
 unsigned int timer, unsigned int divider)
{
 u32 val;

 val = SCALER_TIMEOUT_CTRL_TIMER_ENABLE;
 val |= SCALER_TIMEOUT_CTRL_SET_TIMER_VALUE(timer);
 val |= SCALER_TIMEOUT_CTRL_SET_TIMER_DIV(divider);
 scaler_write(val, SCALER_TIMEOUT_CTRL);
}
