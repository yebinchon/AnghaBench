; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_dual_mode_helper.c_drm_dp_dual_mode_get_tmds_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_dual_mode_helper.c_drm_dp_dual_mode_get_tmds_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@DRM_DP_DUAL_MODE_TYPE2_DVI = common dso_local global i32 0, align 4
@DP_DUAL_MODE_TMDS_OEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to query state of TMDS output buffers\0A\00", align 1
@DP_DUAL_MODE_TMDS_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_dual_mode_get_tmds_output(i32 %0, %struct.i2c_adapter* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @DRM_DP_DUAL_MODE_TYPE2_DVI, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %4, align 4
  br label %32

15:                                               ; preds = %3
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = load i32, i32* @DP_DUAL_MODE_TMDS_OEN, align 4
  %18 = call i32 @drm_dp_dual_mode_read(%struct.i2c_adapter* %16, i32 %17, i32* %8, i32 4)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %32

24:                                               ; preds = %15
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @DP_DUAL_MODE_TMDS_DISABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %21, %13
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @drm_dp_dual_mode_read(%struct.i2c_adapter*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
