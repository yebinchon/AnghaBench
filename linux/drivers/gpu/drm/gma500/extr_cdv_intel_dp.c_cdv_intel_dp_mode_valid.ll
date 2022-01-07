; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_display_mode = type { i64, i64, i32 }
%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@MODE_PANEL = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @cdv_intel_dp_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dp_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.gma_encoder*, align 8
  %7 = alloca %struct.cdv_intel_dp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_psb_private*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %11)
  store %struct.gma_encoder* %12, %struct.gma_encoder** %6, align 8
  %13 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %14 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %13, i32 0, i32 0
  %15 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %14, align 8
  store %struct.cdv_intel_dp* %15, %struct.cdv_intel_dp** %7, align 8
  %16 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %17 = call i32 @cdv_intel_dp_max_link_bw(%struct.gma_encoder* %16)
  %18 = call i32 @cdv_intel_dp_link_clock(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %20 = call i32 @cdv_intel_dp_max_lane_count(%struct.gma_encoder* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.drm_psb_private*, %struct.drm_psb_private** %24, align 8
  store %struct.drm_psb_private* %25, %struct.drm_psb_private** %10, align 8
  %26 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %27 = call i64 @is_edp(%struct.gma_encoder* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %2
  %30 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %31 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %39 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %37, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @MODE_PANEL, align 4
  store i32 %45, i32* %3, align 4
  br label %103

46:                                               ; preds = %34
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %51 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %49, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @MODE_PANEL, align 4
  store i32 %57, i32* %3, align 4
  br label %103

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %29, %2
  %60 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %61 = call i64 @is_edp(%struct.gma_encoder* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %59
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  %68 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @cdv_intel_dp_link_required(i32 %66, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @cdv_intel_dp_max_data_rate(i32 %72, i32 %73)
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %77, i32* %3, align 4
  br label %103

78:                                               ; preds = %63, %59
  %79 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %80 = call i64 @is_edp(%struct.gma_encoder* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @cdv_intel_dp_link_required(i32 %85, i32 24)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @cdv_intel_dp_max_data_rate(i32 %87, i32 %88)
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %92, i32* %3, align 4
  br label %103

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %97, 10000
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %100, i32* %3, align 4
  br label %103

101:                                              ; preds = %94
  %102 = load i32, i32* @MODE_OK, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %99, %91, %76, %56, %44
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @cdv_intel_dp_link_clock(i32) #1

declare dso_local i32 @cdv_intel_dp_max_link_bw(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_dp_max_lane_count(%struct.gma_encoder*) #1

declare dso_local i64 @is_edp(%struct.gma_encoder*) #1

declare dso_local i64 @cdv_intel_dp_link_required(i32, i32) #1

declare dso_local i64 @cdv_intel_dp_max_data_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
