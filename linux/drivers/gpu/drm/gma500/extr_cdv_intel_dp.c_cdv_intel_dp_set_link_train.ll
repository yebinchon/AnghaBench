; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_set_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_set_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp*, %struct.TYPE_2__ }
%struct.cdv_intel_dp = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failure in setting link pattern %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_encoder*, i32, i32)* @cdv_intel_dp_set_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dp_set_link_train(%struct.gma_encoder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gma_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdv_intel_dp*, align 8
  store %struct.gma_encoder* %0, %struct.gma_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %12 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %8, align 8
  %15 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %16 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %15, i32 0, i32 0
  %17 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %16, align 8
  store %struct.cdv_intel_dp* %17, %struct.cdv_intel_dp** %10, align 8
  %18 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %19 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @REG_WRITE(i32 %20, i32 %21)
  %23 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %24 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @REG_READ(i32 %25)
  %27 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %28 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @cdv_intel_dp_aux_native_write_1(%struct.gma_encoder* %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %4, align 4
  br label %37

36:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @cdv_intel_dp_aux_native_write_1(%struct.gma_encoder*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
