; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_sink_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_sink_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { i32* }

@DP_DPCD_REV = common dso_local global i64 0, align 8
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@DP_SET_POWER = common dso_local global i32 0, align 4
@DP_SET_POWER_D3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to write sink power state\0A\00", align 1
@DP_SET_POWER_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gma_encoder*, i32)* @cdv_intel_dp_sink_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_dp_sink_dpms(%struct.gma_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.gma_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdv_intel_dp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %8, i32 0, i32 0
  %10 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %9, align 8
  store %struct.cdv_intel_dp* %10, %struct.cdv_intel_dp** %5, align 8
  %11 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %5, align 8
  %12 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @DP_DPCD_REV, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 17
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %51

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %25 = load i32, i32* @DP_SET_POWER, align 4
  %26 = load i32, i32* @DP_SET_POWER_D3, align 4
  %27 = call i32 @cdv_intel_dp_aux_native_write_1(%struct.gma_encoder* %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %23
  br label %51

33:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %39 = load i32, i32* @DP_SET_POWER, align 4
  %40 = load i32, i32* @DP_SET_POWER_D0, align 4
  %41 = call i32 @cdv_intel_dp_aux_native_write_1(%struct.gma_encoder* %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %50

45:                                               ; preds = %37
  %46 = call i32 @udelay(i32 1000)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %34

50:                                               ; preds = %44, %34
  br label %51

51:                                               ; preds = %18, %50, %32
  ret void
}

declare dso_local i32 @cdv_intel_dp_aux_native_write_1(%struct.gma_encoder*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
