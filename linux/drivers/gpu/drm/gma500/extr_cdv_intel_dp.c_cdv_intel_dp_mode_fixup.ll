; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@cdv_intel_dp_mode_fixup.bws = internal global [2 x i32] [i32 129, i32 128], align 4
@.str = private unnamed_addr constant [50 x i8] c"Display port link bw %02x lane count %d clock %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Force picking display port link bw %02x lane count %d clock %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @cdv_intel_dp_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dp_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_psb_private*, align 8
  %9 = alloca %struct.gma_encoder*, align 8
  %10 = alloca %struct.cdv_intel_dp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.drm_psb_private*, %struct.drm_psb_private** %21, align 8
  store %struct.drm_psb_private* %22, %struct.drm_psb_private** %8, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %24 = call %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder* %23)
  store %struct.gma_encoder* %24, %struct.gma_encoder** %9, align 8
  %25 = load %struct.gma_encoder*, %struct.gma_encoder** %9, align 8
  %26 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %25, i32 0, i32 0
  %27 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %26, align 8
  store %struct.cdv_intel_dp* %27, %struct.cdv_intel_dp** %10, align 8
  %28 = load %struct.gma_encoder*, %struct.gma_encoder** %9, align 8
  %29 = call i32 @cdv_intel_dp_max_lane_count(%struct.gma_encoder* %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.gma_encoder*, %struct.gma_encoder** %9, align 8
  %31 = call i64 @cdv_intel_dp_max_link_bw(%struct.gma_encoder* %30)
  %32 = icmp eq i64 %31, 128
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %14, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  store i32 24, i32* %16, align 4
  %38 = load %struct.gma_encoder*, %struct.gma_encoder** %9, align 8
  %39 = call i64 @is_edp(%struct.gma_encoder* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %3
  %42 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %43 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %48 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %51 = call i32 @cdv_intel_fixed_panel_mode(%struct.TYPE_6__* %49, %struct.drm_display_mode* %50)
  %52 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %53 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %15, align 4
  %57 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %58 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %46, %41, %3
  store i32 1, i32* %11, align 4
  br label %62

62:                                               ; preds = %116, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %119

66:                                               ; preds = %62
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %112, %66
  %69 = load i32, i32* %12, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %115

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* @cdv_intel_dp_mode_fixup.bws, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cdv_intel_dp_link_clock(i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @cdv_intel_dp_max_data_rate(i8* %76, i32 %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @cdv_intel_dp_link_required(i32 %79, i32 %80)
  %82 = load i32, i32* %17, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %71
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* @cdv_intel_dp_mode_fixup.bws, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %90 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %93 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %95 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @cdv_intel_dp_link_clock(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %100 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %102 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %105 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %106, i32 %109)
  store i32 1, i32* %4, align 4
  br label %151

111:                                              ; preds = %71
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %12, align 4
  br label %68

115:                                              ; preds = %68
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = shl i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %62

119:                                              ; preds = %62
  %120 = load %struct.gma_encoder*, %struct.gma_encoder** %9, align 8
  %121 = call i64 @is_edp(%struct.gma_encoder* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %119
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %126 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* @cdv_intel_dp_mode_fixup.bws, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %132 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %134 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @cdv_intel_dp_link_clock(i32 %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %139 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %141 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %144 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %147 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %145, i32 %148)
  store i32 1, i32* %4, align 4
  br label %151

150:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %123, %84
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @cdv_intel_dp_max_lane_count(%struct.gma_encoder*) #1

declare dso_local i64 @cdv_intel_dp_max_link_bw(%struct.gma_encoder*) #1

declare dso_local i64 @is_edp(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_fixed_panel_mode(%struct.TYPE_6__*, %struct.drm_display_mode*) #1

declare dso_local i32 @cdv_intel_dp_max_data_rate(i8*, i32) #1

declare dso_local i8* @cdv_intel_dp_link_clock(i32) #1

declare dso_local i32 @cdv_intel_dp_link_required(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
