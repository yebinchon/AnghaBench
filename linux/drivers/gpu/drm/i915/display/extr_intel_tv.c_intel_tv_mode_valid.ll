; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.tv_mode = type { i64 }
%struct.TYPE_2__ = type { i32 }

@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@MODE_CLOCK_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @intel_tv_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.tv_mode*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tv_mode* @intel_tv_mode_find(i32 %10)
  store %struct.tv_mode* %11, %struct.tv_mode** %6, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_2__* @to_i915(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %2
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %33, i32* %3, align 4
  br label %52

34:                                               ; preds = %26
  %35 = load %struct.tv_mode*, %struct.tv_mode** %6, align 8
  %36 = icmp ne %struct.tv_mode* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.tv_mode*, %struct.tv_mode** %6, align 8
  %39 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %42 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %41)
  %43 = mul nsw i32 %42, 1000
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %40, %44
  %46 = call i32 @abs(i64 %45)
  %47 = icmp slt i32 %46, 1000
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @MODE_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %37, %34
  %51 = load i32, i32* @MODE_CLOCK_RANGE, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %48, %32, %24
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.tv_mode* @intel_tv_mode_find(i32) #1

declare dso_local %struct.TYPE_2__* @to_i915(i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
