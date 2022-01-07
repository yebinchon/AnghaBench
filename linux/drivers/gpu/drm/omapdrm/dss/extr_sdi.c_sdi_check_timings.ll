; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_sdi.c_sdi_check_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_sdi.c_sdi_check_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.sdi_device = type { i32 }
%struct.dispc_clock_info = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Pixel clock adjusted from %lu Hz to %lu Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.drm_display_mode*)* @sdi_check_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdi_check_timings(%struct.omap_dss_device* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.sdi_device*, align 8
  %7 = alloca %struct.dispc_clock_info, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %13 = call %struct.sdi_device* @dssdev_to_sdi(%struct.omap_dss_device* %12)
  store %struct.sdi_device* %13, %struct.sdi_device** %6, align 8
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load %struct.sdi_device*, %struct.sdi_device** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @sdi_calc_clock_div(%struct.sdi_device* %25, i64 %26, i64* %9, %struct.dispc_clock_info* %7)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  br label %53

32:                                               ; preds = %24
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %7, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = udiv i64 %33, %35
  %37 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = udiv i64 %36, %38
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @DSSWARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %45)
  %47 = load i64, i64* %10, align 8
  %48 = udiv i64 %47, 1000
  %49 = trunc i64 %48 to i32
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %32
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %30, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.sdi_device* @dssdev_to_sdi(%struct.omap_dss_device*) #1

declare dso_local i32 @sdi_calc_clock_div(%struct.sdi_device*, i64, i64*, %struct.dispc_clock_info*) #1

declare dso_local i32 @DSSWARN(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
