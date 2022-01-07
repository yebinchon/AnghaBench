; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_link_training.c_intel_dp_link_training_channel_equalization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_link_training.c_intel_dp_link_training_channel_equalization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32 }

@DP_LINK_STATUS_SIZE = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_4 = common dso_local global i32 0, align 4
@DP_LINK_SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to start channel equalization\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to get link status\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Clock recovery check failed, cannot continue channel equalization\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Channel EQ done. DP Training successful\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to update link training\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Channel equalization failed 5 times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_dp_link_training_channel_equalization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_link_training_channel_equalization(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %10 = load i32, i32* @DP_LINK_STATUS_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %15 = call i32 @intel_dp_training_pattern(%struct.intel_dp* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DP_TRAINING_PATTERN_4, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @intel_dp_set_link_train(%struct.intel_dp* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %83

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %70, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 5
  br i1 %33, label %34, label %73

34:                                               ; preds = %31
  %35 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @drm_dp_link_train_channel_eq_delay(i32 %37)
  %39 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %40 = call i32 @intel_dp_get_link_status(%struct.intel_dp* %39, i32* %13)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %73

44:                                               ; preds = %34
  %45 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %46 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @drm_dp_clock_recovery_ok(i32* %13, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = call i32 @intel_dp_dump_link_status(i32* %13)
  %52 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %73

53:                                               ; preds = %44
  %54 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %55 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @drm_dp_channel_eq_ok(i32* %13, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  %60 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %73

61:                                               ; preds = %53
  %62 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %63 = call i32 @intel_get_adjust_train(%struct.intel_dp* %62, i32* %13)
  %64 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %65 = call i32 @intel_dp_update_link_train(%struct.intel_dp* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %73

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %31

73:                                               ; preds = %67, %59, %50, %42, %31
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 5
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = call i32 @intel_dp_dump_link_status(i32* %13)
  %78 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %81 = call i32 @intel_dp_set_idle_link_train(%struct.intel_dp* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %79, %28
  %84 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @intel_dp_training_pattern(%struct.intel_dp*) #2

declare dso_local i32 @intel_dp_set_link_train(%struct.intel_dp*, i32) #2

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local i32 @drm_dp_link_train_channel_eq_delay(i32) #2

declare dso_local i32 @intel_dp_get_link_status(%struct.intel_dp*, i32*) #2

declare dso_local i32 @drm_dp_clock_recovery_ok(i32*, i32) #2

declare dso_local i32 @intel_dp_dump_link_status(i32*) #2

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #2

declare dso_local i64 @drm_dp_channel_eq_ok(i32*, i32) #2

declare dso_local i32 @intel_get_adjust_train(%struct.intel_dp*, i32*) #2

declare dso_local i32 @intel_dp_update_link_train(%struct.intel_dp*) #2

declare dso_local i32 @intel_dp_set_idle_link_train(%struct.intel_dp*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
