
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;


 size_t INA3221_CONFIG_AVG (int) ;
 int INA3221_CONFIG_CHs_EN_MASK ;
 size_t INA3221_CONFIG_VBUS_CT (int) ;
 size_t INA3221_CONFIG_VSH_CT (int) ;
 size_t hweight16 (int) ;
 size_t* ina3221_avg_samples ;
 size_t* ina3221_conv_time ;

__attribute__((used)) static inline u32 ina3221_reg_to_interval_us(u16 config)
{
 u32 channels = hweight16(config & INA3221_CONFIG_CHs_EN_MASK);
 u32 vbus_ct_idx = INA3221_CONFIG_VBUS_CT(config);
 u32 vsh_ct_idx = INA3221_CONFIG_VSH_CT(config);
 u32 samples_idx = INA3221_CONFIG_AVG(config);
 u32 samples = ina3221_avg_samples[samples_idx];
 u32 vbus_ct = ina3221_conv_time[vbus_ct_idx];
 u32 vsh_ct = ina3221_conv_time[vsh_ct_idx];


 return channels * (vbus_ct + vsh_ct) * samples;
}
