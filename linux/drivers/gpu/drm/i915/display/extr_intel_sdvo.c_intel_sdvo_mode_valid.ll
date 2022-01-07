; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32, i64, i64 }
%struct.intel_sdvo = type { i32, i32 }
%struct.intel_sdvo_connector = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode* }
%struct.TYPE_6__ = type { i32 }

@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_PANEL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @intel_sdvo_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.intel_sdvo*, align 8
  %7 = alloca %struct.intel_sdvo_connector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = call %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %10)
  store %struct.intel_sdvo* %11, %struct.intel_sdvo** %6, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector* %12)
  store %struct.intel_sdvo_connector* %13, %struct.intel_sdvo_connector** %7, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_6__* @to_i915(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %27, i32* %3, align 4
  br label %88

28:                                               ; preds = %2
  %29 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %30 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %37, i32* %3, align 4
  br label %88

38:                                               ; preds = %28
  %39 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %40 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %38
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %55, i32* %3, align 4
  br label %88

56:                                               ; preds = %48
  %57 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %7, align 8
  %58 = call i64 @IS_LVDS(%struct.intel_sdvo_connector* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %56
  %61 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %7, align 8
  %62 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %64, align 8
  store %struct.drm_display_mode* %65, %struct.drm_display_mode** %9, align 8
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i32, i32* @MODE_PANEL, align 4
  store i32 %74, i32* %3, align 4
  br label %88

75:                                               ; preds = %60
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @MODE_PANEL, align 4
  store i32 %84, i32* %3, align 4
  br label %88

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %56
  %87 = load i32, i32* @MODE_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %83, %73, %54, %46, %36, %26
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local %struct.TYPE_6__* @to_i915(i32) #1

declare dso_local i64 @IS_LVDS(%struct.intel_sdvo_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
