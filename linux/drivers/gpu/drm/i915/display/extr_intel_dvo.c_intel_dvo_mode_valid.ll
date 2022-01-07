; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_dvo_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_dvo_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32, i64, i64 }
%struct.intel_dvo = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_10__*, %struct.drm_display_mode*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.drm_display_mode* }
%struct.TYPE_9__ = type { i32 }

@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@MODE_PANEL = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @intel_dvo_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dvo_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.intel_dvo*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = call %struct.intel_dvo* @intel_attached_dvo(%struct.drm_connector* %10)
  store %struct.intel_dvo* %11, %struct.intel_dvo** %6, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call %struct.TYPE_8__* @to_intel_connector(%struct.drm_connector* %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %15, align 8
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %7, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %18 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_9__* @to_i915(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %33, i32* %3, align 4
  br label %78

34:                                               ; preds = %2
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %36 = icmp ne %struct.drm_display_mode* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @MODE_PANEL, align 4
  store i32 %46, i32* %3, align 4
  br label %78

47:                                               ; preds = %37
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @MODE_PANEL, align 4
  store i32 %56, i32* %3, align 4
  br label %78

57:                                               ; preds = %47
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %34
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %66, i32* %3, align 4
  br label %78

67:                                               ; preds = %61
  %68 = load %struct.intel_dvo*, %struct.intel_dvo** %6, align 8
  %69 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_10__*, %struct.drm_display_mode*)*, i32 (%struct.TYPE_10__*, %struct.drm_display_mode*)** %72, align 8
  %74 = load %struct.intel_dvo*, %struct.intel_dvo** %6, align 8
  %75 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %74, i32 0, i32 0
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %77 = call i32 %73(%struct.TYPE_10__* %75, %struct.drm_display_mode* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %67, %65, %55, %45, %32
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.intel_dvo* @intel_attached_dvo(%struct.drm_connector*) #1

declare dso_local %struct.TYPE_8__* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local %struct.TYPE_9__* @to_i915(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
