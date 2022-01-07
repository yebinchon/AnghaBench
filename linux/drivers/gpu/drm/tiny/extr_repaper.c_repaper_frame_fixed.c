
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct repaper_epd {unsigned int height; } ;
typedef enum repaper_stage { ____Placeholder_repaper_stage } repaper_stage ;


 int repaper_one_line (struct repaper_epd*,unsigned int,int *,int ,int *,int) ;

__attribute__((used)) static void repaper_frame_fixed(struct repaper_epd *epd, u8 fixed_value,
    enum repaper_stage stage)
{
 unsigned int line;

 for (line = 0; line < epd->height; line++)
  repaper_one_line(epd, line, ((void*)0), fixed_value, ((void*)0), stage);
}
