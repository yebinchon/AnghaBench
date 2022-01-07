
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ISER_SIGNAL_CMD_COUNT ;

__attribute__((used)) static inline bool iser_signal_comp(u8 sig_count)
{
 return ((sig_count % ISER_SIGNAL_CMD_COUNT) == 0);
}
