
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_hdmi_i2s_audio_data {int (* read ) (struct dw_hdmi*,int) ;struct dw_hdmi* hdmi; } ;
struct dw_hdmi {int dummy; } ;


 int stub1 (struct dw_hdmi*,int) ;

__attribute__((used)) static inline u8 hdmi_read(struct dw_hdmi_i2s_audio_data *audio, int offset)
{
 struct dw_hdmi *hdmi = audio->hdmi;

 return audio->read(hdmi, offset);
}
