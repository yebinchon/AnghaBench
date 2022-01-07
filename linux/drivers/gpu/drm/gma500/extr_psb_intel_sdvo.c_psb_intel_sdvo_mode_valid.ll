; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i64, i64, i64 }
%struct.psb_intel_sdvo = type { i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_PANEL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @psb_intel_sdvo_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.psb_intel_sdvo*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %8 = call %struct.psb_intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %7)
  store %struct.psb_intel_sdvo* %8, %struct.psb_intel_sdvo** %6, align 8
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %16, i32* %3, align 4
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %19 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %26, i32* %3, align 4
  br label %69

27:                                               ; preds = %17
  %28 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %29 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %27
  %38 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %39 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %47 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %45, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @MODE_PANEL, align 4
  store i32 %53, i32* %3, align 4
  br label %69

54:                                               ; preds = %42
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %59 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %57, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @MODE_PANEL, align 4
  store i32 %65, i32* %3, align 4
  br label %69

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %37
  %68 = load i32, i32* @MODE_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %64, %52, %35, %25, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.psb_intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
