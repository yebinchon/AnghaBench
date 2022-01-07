
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct repaper_epd {int factored_stage_time; } ;
typedef enum repaper_stage { ____Placeholder_repaper_stage } repaper_stage ;


 scalar_t__ local_clock () ;
 int repaper_frame_fixed (struct repaper_epd*,int ,int) ;

__attribute__((used)) static void repaper_frame_fixed_repeat(struct repaper_epd *epd, u8 fixed_value,
           enum repaper_stage stage)
{
 u64 start = local_clock();
 u64 end = start + (epd->factored_stage_time * 1000 * 1000);

 do {
  repaper_frame_fixed(epd, fixed_value, stage);
 } while (local_clock() < end);
}
