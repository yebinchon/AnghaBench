; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_dual_mode_helper.c_drm_lspcon_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_dual_mode_helper.c_drm_lspcon_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@DRM_LSPCON_MODE_PCON = common dso_local global i32 0, align 4
@DP_DUAL_MODE_LSPCON_MODE_PCON = common dso_local global i32 0, align 4
@DP_DUAL_MODE_LSPCON_MODE_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"LSPCON mode change failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"can't confirm LSPCON mode change\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"LSPCON mode changed to %s\0A\00", align 1
@DRM_LSPCON_MODE_LS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"LS\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PCON\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"LSPCON mode change timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_lspcon_set_mode(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 200, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @DRM_LSPCON_MODE_PCON, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @DP_DUAL_MODE_LSPCON_MODE_PCON, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %17 = load i32, i32* @DP_DUAL_MODE_LSPCON_MODE_CHANGE, align 4
  %18 = call i32 @drm_dp_dual_mode_write(%struct.i2c_adapter* %16, i32 %17, i32* %6, i32 4)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %57

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %50, %24
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %27 = call i32 @drm_lspcon_get_mode(%struct.i2c_adapter* %26, i32* %9)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i32 @msleep(i32 10)
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 10
  store i32 %40, i32* %8, align 4
  br label %48

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @DRM_LSPCON_MODE_LS, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %47 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  store i32 0, i32* %3, align 4
  br label %57

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %25, label %53

53:                                               ; preds = %50
  %54 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %41, %30, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @drm_dp_dual_mode_write(%struct.i2c_adapter*, i32, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_lspcon_get_mode(%struct.i2c_adapter*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
