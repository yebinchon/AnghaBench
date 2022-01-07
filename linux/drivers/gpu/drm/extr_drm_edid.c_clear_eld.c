
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int* latency_present; scalar_t__* audio_latency; scalar_t__* video_latency; int eld; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void clear_eld(struct drm_connector *connector)
{
 memset(connector->eld, 0, sizeof(connector->eld));

 connector->latency_present[0] = 0;
 connector->latency_present[1] = 0;
 connector->video_latency[0] = 0;
 connector->audio_latency[0] = 0;
 connector->video_latency[1] = 0;
 connector->audio_latency[1] = 0;
}
