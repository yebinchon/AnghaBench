
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct intel_sdvo {int dummy; } ;


 int SDVO_CMD_GET_HBUF_INFO ;
 int intel_sdvo_get_value (struct intel_sdvo*,int ,scalar_t__*,int) ;

__attribute__((used)) static bool intel_sdvo_get_hbuf_size(struct intel_sdvo *intel_sdvo,
         u8 *hbuf_size)
{
 if (!intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_HBUF_INFO,
      hbuf_size, 1))
  return 0;


 if (*hbuf_size)
  (*hbuf_size)++;

 return 1;
}
