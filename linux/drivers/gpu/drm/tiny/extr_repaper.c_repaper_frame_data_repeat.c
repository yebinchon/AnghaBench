
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct repaper_epd {int factored_stage_time; } ;
typedef enum repaper_stage { ____Placeholder_repaper_stage } repaper_stage ;


 scalar_t__ local_clock () ;
 int repaper_frame_data (struct repaper_epd*,int const*,int const*,int) ;

__attribute__((used)) static void repaper_frame_data_repeat(struct repaper_epd *epd, const u8 *image,
          const u8 *mask, enum repaper_stage stage)
{
 u64 start = local_clock();
 u64 end = start + (epd->factored_stage_time * 1000 * 1000);

 do {
  repaper_frame_data(epd, image, mask, stage);
 } while (local_clock() < end);
}
