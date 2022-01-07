
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct repaper_epd {unsigned int height; int width; } ;
typedef enum repaper_stage { ____Placeholder_repaper_stage } repaper_stage ;


 int repaper_one_line (struct repaper_epd*,unsigned int,int const*,int ,int const*,int) ;

__attribute__((used)) static void repaper_frame_data(struct repaper_epd *epd, const u8 *image,
          const u8 *mask, enum repaper_stage stage)
{
 unsigned int line;

 if (!mask) {
  for (line = 0; line < epd->height; line++) {
   repaper_one_line(epd, line,
      &image[line * (epd->width / 8)],
      0, ((void*)0), stage);
  }
 } else {
  for (line = 0; line < epd->height; line++) {
   size_t n = line * epd->width / 8;

   repaper_one_line(epd, line, &image[n], 0, &mask[n],
      stage);
  }
 }
}
