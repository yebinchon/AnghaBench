; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_lvds_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_lvds_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i64, i64, i32 }
%struct.intel_connector = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_display_mode* }
%struct.TYPE_4__ = type { i32 }

@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@MODE_PANEL = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @intel_lvds_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_lvds_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.intel_connector*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %9)
  store %struct.intel_connector* %10, %struct.intel_connector** %6, align 8
  %11 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %12 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %7, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_4__* @to_i915(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %28, i32* %3, align 4
  br label %59

29:                                               ; preds = %2
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @MODE_PANEL, align 4
  store i32 %38, i32* %3, align 4
  br label %59

39:                                               ; preds = %29
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @MODE_PANEL, align 4
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %39
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @MODE_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %55, %47, %37, %27
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local %struct.TYPE_4__* @to_i915(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
