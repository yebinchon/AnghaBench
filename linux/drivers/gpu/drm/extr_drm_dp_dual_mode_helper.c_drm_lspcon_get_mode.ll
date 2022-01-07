; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_dual_mode_helper.c_drm_lspcon_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_dual_mode_helper.c_drm_lspcon_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"NULL input\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DP_DUAL_MODE_LSPCON_CURRENT_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"LSPCON read(0x80, 0x41) failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@DP_DUAL_MODE_LSPCON_MODE_PCON = common dso_local global i32 0, align 4
@DRM_LSPCON_MODE_PCON = common dso_local global i32 0, align 4
@DRM_LSPCON_MODE_LS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_lspcon_get_mode(%struct.i2c_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %54

15:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @usleep_range(i32 500, i32 1000)
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %26 = load i32, i32* @DP_DUAL_MODE_LSPCON_CURRENT_MODE, align 4
  %27 = call i32 @drm_dp_dual_mode_read(%struct.i2c_adapter* %25, i32 %26, i32* %6, i32 4)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %16

35:                                               ; preds = %30, %16
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %54

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @DP_DUAL_MODE_LSPCON_MODE_PCON, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @DRM_LSPCON_MODE_PCON, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @DRM_LSPCON_MODE_LS, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %38, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @drm_dp_dual_mode_read(%struct.i2c_adapter*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
