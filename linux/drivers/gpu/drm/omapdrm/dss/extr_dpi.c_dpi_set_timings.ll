; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.dpi_data = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"dpi_set_timings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, %struct.drm_display_mode*)* @dpi_set_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpi_set_timings(%struct.omap_dss_device* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.dpi_data*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %7 = call %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device* %6)
  store %struct.dpi_data* %7, %struct.dpi_data** %5, align 8
  %8 = call i32 @DSSDBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.dpi_data*, %struct.dpi_data** %5, align 8
  %10 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 1000
  %16 = load %struct.dpi_data*, %struct.dpi_data** %5, align 8
  %17 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.dpi_data*, %struct.dpi_data** %5, align 8
  %19 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %18, i32 0, i32 1
  %20 = call i32 @mutex_unlock(i32* %19)
  ret void
}

declare dso_local %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
