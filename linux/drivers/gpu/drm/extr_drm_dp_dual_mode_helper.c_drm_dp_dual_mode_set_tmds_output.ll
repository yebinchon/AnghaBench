; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_dual_mode_helper.c_drm_dp_dual_mode_set_tmds_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_dual_mode_helper.c_drm_dp_dual_mode_set_tmds_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@DP_DUAL_MODE_TMDS_DISABLE = common dso_local global i64 0, align 8
@DRM_DP_DUAL_MODE_TYPE2_DVI = common dso_local global i32 0, align 4
@DP_DUAL_MODE_TMDS_OEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to %s TMDS output buffers (%d attempts)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"I2C read failed during TMDS output buffer %s (%d attempts)\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"enabling\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"disabling\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"I2C write value mismatch during TMDS output buffer %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_dual_mode_set_tmds_output(i32 %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @DP_DUAL_MODE_TMDS_DISABLE, align 8
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i64 [ 0, %14 ], [ %16, %15 ]
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @DRM_DP_DUAL_MODE_TYPE2_DVI, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %74

23:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %63, %23
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %66

27:                                               ; preds = %24
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %29 = load i32, i32* @DP_DUAL_MODE_TMDS_OEN, align 4
  %30 = call i32 @drm_dp_dual_mode_write(%struct.i2c_adapter* %28, i32 %29, i64* %8, i32 8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %74

42:                                               ; preds = %27
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %44 = load i32, i32* @DP_DUAL_MODE_TMDS_OEN, align 4
  %45 = call i32 @drm_dp_dual_mode_read(%struct.i2c_adapter* %43, i32 %44, i64* %11, i32 8)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %52, i32 %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %74

57:                                               ; preds = %42
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %74

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %24

66:                                               ; preds = %24
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %71 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %66, %61, %48, %33, %22
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @drm_dp_dual_mode_write(%struct.i2c_adapter*, i32, i64*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*, ...) #1

declare dso_local i32 @drm_dp_dual_mode_read(%struct.i2c_adapter*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
