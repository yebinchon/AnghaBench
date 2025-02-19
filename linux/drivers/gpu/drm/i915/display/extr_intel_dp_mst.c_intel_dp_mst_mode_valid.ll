; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.intel_connector = type { %struct.intel_dp* }
%struct.intel_dp = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MODE_ERROR = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@MODE_H_ILLEGAL = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @intel_dp_mst_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_mst_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.intel_connector*, align 8
  %7 = alloca %struct.intel_dp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %13)
  store %struct.intel_connector* %14, %struct.intel_connector** %6, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 0
  %17 = load %struct.intel_dp*, %struct.intel_dp** %16, align 8
  store %struct.intel_dp* %17, %struct.intel_dp** %7, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_2__* @to_i915(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %25 = call i64 @drm_connector_is_unregistered(%struct.drm_connector* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @MODE_ERROR, align 4
  store i32 %28, i32* %3, align 4
  br label %79

29:                                               ; preds = %2
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %37, i32* %3, align 4
  br label %79

38:                                               ; preds = %29
  %39 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %40 = call i32 @intel_dp_max_link_rate(%struct.intel_dp* %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %42 = call i32 @intel_dp_max_lane_count(%struct.intel_dp* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @intel_dp_max_data_rate(i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @intel_dp_link_required(i32 %48, i32 18)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 10000
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %55, i32* %3, align 4
  br label %79

56:                                               ; preds = %38
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @MODE_H_ILLEGAL, align 4
  store i32 %64, i32* %3, align 4
  br label %79

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69, %65
  %76 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @MODE_OK, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %75, %63, %54, %36, %27
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local %struct.TYPE_2__* @to_i915(i32) #1

declare dso_local i64 @drm_connector_is_unregistered(%struct.drm_connector*) #1

declare dso_local i32 @intel_dp_max_link_rate(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_max_lane_count(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_max_data_rate(i32, i32) #1

declare dso_local i32 @intel_dp_link_required(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
