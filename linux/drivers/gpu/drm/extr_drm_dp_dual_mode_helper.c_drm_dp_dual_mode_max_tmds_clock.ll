; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_dual_mode_helper.c_drm_dp_dual_mode_max_tmds_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_dual_mode_helper.c_drm_dp_dual_mode_max_tmds_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@DRM_DP_DUAL_MODE_NONE = common dso_local global i32 0, align 4
@DRM_DP_DUAL_MODE_TYPE2_DVI = common dso_local global i32 0, align 4
@DP_DUAL_MODE_MAX_TMDS_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to query max TMDS clock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_dual_mode_max_tmds_clock(i32 %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @DRM_DP_DUAL_MODE_NONE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DRM_DP_DUAL_MODE_TYPE2_DVI, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 165000, i32* %3, align 4
  br label %35

17:                                               ; preds = %12
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = load i32, i32* @DP_DUAL_MODE_MAX_TMDS_CLOCK, align 4
  %20 = call i64 @drm_dp_dual_mode_read(%struct.i2c_adapter* %18, i32 %19, i32* %6, i32 4)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %23, %17
  %30 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 165000, i32* %3, align 4
  br label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 5000
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %29, %16, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @drm_dp_dual_mode_read(%struct.i2c_adapter*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
