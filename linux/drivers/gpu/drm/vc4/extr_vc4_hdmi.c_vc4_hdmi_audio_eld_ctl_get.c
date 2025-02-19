
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vc4_hdmi {TYPE_3__* connector; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int eld; } ;


 int memcpy (int ,int ,int) ;
 struct vc4_hdmi* snd_component_to_hdmi (struct snd_soc_component*) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int vc4_hdmi_audio_eld_ctl_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct vc4_hdmi *hdmi = snd_component_to_hdmi(component);

 memcpy(ucontrol->value.bytes.data, hdmi->connector->eld,
        sizeof(hdmi->connector->eld));

 return 0;
}
