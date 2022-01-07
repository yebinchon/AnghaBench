
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_context {int dummy; } ;


 int hdmi_audio_config (struct hdmi_context*) ;
 int hdmi_audio_control (struct hdmi_context*) ;
 int hdmi_conf_init (struct hdmi_context*) ;
 int hdmi_mode_apply (struct hdmi_context*) ;
 int hdmi_start (struct hdmi_context*,int) ;

__attribute__((used)) static void hdmi_conf_apply(struct hdmi_context *hdata)
{
 hdmi_start(hdata, 0);
 hdmi_conf_init(hdata);
 hdmi_audio_config(hdata);
 hdmi_mode_apply(hdata);
 hdmi_audio_control(hdata);
}
