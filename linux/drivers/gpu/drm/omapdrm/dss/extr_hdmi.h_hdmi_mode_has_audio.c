
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_config {scalar_t__ hdmi_dvi_mode; } ;


 scalar_t__ HDMI_HDMI ;

__attribute__((used)) static inline bool hdmi_mode_has_audio(struct hdmi_config *cfg)
{
 return cfg->hdmi_dvi_mode == HDMI_HDMI ? 1 : 0;
}
