
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sun8i_mixer {TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ is_de3; } ;


 scalar_t__ DE2_CH_BASE ;
 int DE2_CH_SIZE ;
 scalar_t__ DE3_CH_BASE ;
 int DE3_CH_SIZE ;

__attribute__((used)) static inline u32
sun8i_channel_base(struct sun8i_mixer *mixer, int channel)
{
 if (mixer->cfg->is_de3)
  return DE3_CH_BASE + channel * DE3_CH_SIZE;
 else
  return DE2_CH_BASE + channel * DE2_CH_SIZE;
}
