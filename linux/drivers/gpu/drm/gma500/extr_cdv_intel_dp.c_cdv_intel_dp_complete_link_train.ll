; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_complete_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_complete_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp*, %struct.TYPE_2__ }
%struct.cdv_intel_dp = type { i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DP_LINK_TRAIN_PAT_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"DP Link Train Set %x, Link_config %x, %x\0A\00", align 1
@DP_TRAINING_PATTERN_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failure in aux-transfer setting pattern 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to train DP, aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"DP Link status %x, %x, %x, %x, %x, %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"PT2 train is done\0A\00", align 1
@DP_LINK_TRAIN_OFF = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gma_encoder*)* @cdv_intel_dp_complete_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_dp_complete_link_train(%struct.gma_encoder* %0) #0 {
  %2 = alloca %struct.gma_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.cdv_intel_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %2, align 8
  %10 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %3, align 8
  %14 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %15 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %14, i32 0, i32 0
  %16 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %15, align 8
  store %struct.cdv_intel_dp* %16, %struct.cdv_intel_dp** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %18 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %20 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @DP_LINK_TRAIN_PAT_2, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %132, %125, %111, %1
  %25 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %26 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %31 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %36 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %34, i32 %39)
  %41 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @DP_TRAINING_PATTERN_2, align 4
  %44 = call i32 @cdv_intel_dp_set_link_train(%struct.gma_encoder* %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %24
  %47 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %24
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 5
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %54 = call i32 @cdv_intel_dp_link_down(%struct.gma_encoder* %53)
  br label %137

55:                                               ; preds = %48
  %56 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %57 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %58 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cdv_intel_dp_set_vswing_premph(%struct.gma_encoder* %56, i32 %61)
  %63 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %64 = load i32, i32* @DP_TRAINING_PATTERN_2, align 4
  %65 = call i32 @cdv_intel_dplink_set_level(%struct.gma_encoder* %63, i32 %64)
  %66 = call i32 @udelay(i32 1000)
  %67 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %68 = call i32 @cdv_intel_dp_get_link_status(%struct.gma_encoder* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %55
  br label %137

71:                                               ; preds = %55
  %72 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %73 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %78 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %83 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %88 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %93 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %98 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %81, i32 %86, i32 %91, i32 %96, i32 %101)
  %103 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %104 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %107 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @cdv_intel_clock_recovery_ok(i32* %105, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %71
  %112 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %113 = call i32 @cdv_intel_dp_start_link_train(%struct.gma_encoder* %112)
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %24

116:                                              ; preds = %71
  %117 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %118 = call i64 @cdv_intel_channel_eq_ok(%struct.gma_encoder* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %137

122:                                              ; preds = %116
  %123 = load i32, i32* %6, align 4
  %124 = icmp sgt i32 %123, 5
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %127 = call i32 @cdv_intel_dp_link_down(%struct.gma_encoder* %126)
  %128 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %129 = call i32 @cdv_intel_dp_start_link_train(%struct.gma_encoder* %128)
  store i32 0, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %24

132:                                              ; preds = %122
  %133 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %134 = call i32 @cdv_intel_get_adjust_train(%struct.gma_encoder* %133)
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %24

137:                                              ; preds = %120, %70, %51
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @DP_LINK_TRAIN_OFF, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %8, align 4
  %141 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %142 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @REG_WRITE(i32 %143, i32 %144)
  %146 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %147 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @REG_READ(i32 %148)
  %150 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %151 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %152 = load i32, i32* @DP_TRAINING_PATTERN_DISABLE, align 4
  %153 = call i32 @cdv_intel_dp_aux_native_write_1(%struct.gma_encoder* %150, i32 %151, i32 %152)
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @cdv_intel_dp_set_link_train(%struct.gma_encoder*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @cdv_intel_dp_link_down(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_dp_set_vswing_premph(%struct.gma_encoder*, i32) #1

declare dso_local i32 @cdv_intel_dplink_set_level(%struct.gma_encoder*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cdv_intel_dp_get_link_status(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_clock_recovery_ok(i32*, i32) #1

declare dso_local i32 @cdv_intel_dp_start_link_train(%struct.gma_encoder*) #1

declare dso_local i64 @cdv_intel_channel_eq_ok(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_get_adjust_train(%struct.gma_encoder*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @cdv_intel_dp_aux_native_write_1(%struct.gma_encoder*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
