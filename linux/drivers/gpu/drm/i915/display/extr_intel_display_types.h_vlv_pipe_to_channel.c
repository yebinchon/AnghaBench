
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pipe { ____Placeholder_pipe } pipe ;
typedef enum dpio_channel { ____Placeholder_dpio_channel } dpio_channel ;


 int BUG () ;
 int DPIO_CH0 ;
 int DPIO_CH1 ;




__attribute__((used)) static inline enum dpio_channel
vlv_pipe_to_channel(enum pipe pipe)
{
 switch (pipe) {
 case 130:
 case 128:
  return DPIO_CH0;
 case 129:
  return DPIO_CH1;
 default:
  BUG();
 }
}
