; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dp_passive_dongle_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dp_passive_dongle_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { i32 }
%struct.display_sink_capability = type { i32 }
%struct.audio_support = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddc_service*, %struct.display_sink_capability*, %struct.audio_support*)* @dp_passive_dongle_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_passive_dongle_detection(%struct.ddc_service* %0, %struct.display_sink_capability* %1, %struct.audio_support* %2) #0 {
  %4 = alloca %struct.ddc_service*, align 8
  %5 = alloca %struct.display_sink_capability*, align 8
  %6 = alloca %struct.audio_support*, align 8
  store %struct.ddc_service* %0, %struct.ddc_service** %4, align 8
  store %struct.display_sink_capability* %1, %struct.display_sink_capability** %5, align 8
  store %struct.audio_support* %2, %struct.audio_support** %6, align 8
  %7 = load %struct.ddc_service*, %struct.ddc_service** %4, align 8
  %8 = load %struct.display_sink_capability*, %struct.display_sink_capability** %5, align 8
  %9 = call i32 @dal_ddc_service_i2c_query_dp_dual_mode_adaptor(%struct.ddc_service* %7, %struct.display_sink_capability* %8)
  %10 = load %struct.display_sink_capability*, %struct.display_sink_capability** %5, align 8
  %11 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.audio_support*, %struct.audio_support** %6, align 8
  %14 = call i32 @decide_signal_from_strap_and_dongle_type(i32 %12, %struct.audio_support* %13)
  ret i32 %14
}

declare dso_local i32 @dal_ddc_service_i2c_query_dp_dual_mode_adaptor(%struct.ddc_service*, %struct.display_sink_capability*) #1

declare dso_local i32 @decide_signal_from_strap_and_dongle_type(i32, %struct.audio_support*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
