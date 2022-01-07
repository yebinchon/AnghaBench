
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;


 size_t DIV_ROUND_CLOSEST (int,size_t) ;
 size_t INA3221_CONFIG_AVG (int) ;
 int INA3221_CONFIG_CHs_EN_MASK ;
 size_t hweight16 (int) ;
 size_t* ina3221_avg_samples ;

__attribute__((used)) static inline u32 ina3221_interval_ms_to_conv_time(u16 config, int interval)
{
 u32 channels = hweight16(config & INA3221_CONFIG_CHs_EN_MASK);
 u32 samples_idx = INA3221_CONFIG_AVG(config);
 u32 samples = ina3221_avg_samples[samples_idx];


 return DIV_ROUND_CLOSEST(interval * 1000 / 2, channels * samples);
}
