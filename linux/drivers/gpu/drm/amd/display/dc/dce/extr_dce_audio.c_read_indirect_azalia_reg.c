
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_audio {int dummy; } ;
struct audio {int dummy; } ;


 int AZALIA_ENDPOINT_REG_INDEX ;
 int AZALIA_F0_CODEC_ENDPOINT_DATA ;
 int AZALIA_F0_CODEC_ENDPOINT_INDEX ;
 struct dce_audio* DCE_AUD (struct audio*) ;
 int DC_LOG_HW_AUDIO (char*,int ,int ) ;
 int REG_READ (int ) ;
 int REG_SET (int ,int ,int ,int ) ;

__attribute__((used)) static uint32_t read_indirect_azalia_reg(struct audio *audio, uint32_t reg_index)
{
 struct dce_audio *aud = DCE_AUD(audio);

 uint32_t value = 0;


 REG_SET(AZALIA_F0_CODEC_ENDPOINT_INDEX, 0,
   AZALIA_ENDPOINT_REG_INDEX, reg_index);


 value = REG_READ(AZALIA_F0_CODEC_ENDPOINT_DATA);

 DC_LOG_HW_AUDIO("AUDIO:read_indirect_azalia_reg: index: %u  data: %u\n",
  reg_index, value);

 return value;
}
