
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pixel_format { ____Placeholder_pixel_format } pixel_format ;


 int PIXEL_FORMAT_420BPP10 ;
 int PIXEL_FORMAT_420BPP8 ;

__attribute__((used)) static bool dpp1_dscl_is_420_format(enum pixel_format format)
{
 if (format == PIXEL_FORMAT_420BPP8 ||
   format == PIXEL_FORMAT_420BPP10)
  return 1;
 else
  return 0;
}
