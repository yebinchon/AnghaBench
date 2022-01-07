
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct audio_info {size_t mode_count; TYPE_1__* modes; } ;
typedef enum audio_format_code { ____Placeholder_audio_format_code } audio_format_code ;
struct TYPE_2__ {int format_code; scalar_t__ channel_count; } ;



__attribute__((used)) static bool is_audio_format_supported(
 const struct audio_info *audio_info,
 enum audio_format_code audio_format_code,
 uint32_t *format_index)
{
 uint32_t index;
 uint32_t max_channe_index = 0;
 bool found = 0;

 if (audio_info == ((void*)0))
  return found;


 for (index = 0; index < audio_info->mode_count; index++) {
  if (audio_info->modes[index].format_code == audio_format_code) {
   if (found) {


    if (audio_info->modes[index].channel_count >
  audio_info->modes[max_channe_index].channel_count) {
     max_channe_index = index;
    }
   } else {

    found = 1;
    max_channe_index = index;
   }
  }
 }


 if (found && format_index != ((void*)0))
  *format_index = max_channe_index;

 return found;
}
