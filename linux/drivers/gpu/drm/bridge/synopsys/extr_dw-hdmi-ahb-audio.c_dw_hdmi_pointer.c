
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_dw_hdmi* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct snd_dw_hdmi {int buf_offset; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (struct snd_pcm_runtime*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t dw_hdmi_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_dw_hdmi *dw = substream->private_data;





 return bytes_to_frames(runtime, dw->buf_offset);
}
