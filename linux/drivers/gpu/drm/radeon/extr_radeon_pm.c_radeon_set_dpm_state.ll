; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_set_dpm_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_set_dpm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { i64, %struct.radeon_device* }
%struct.radeon_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@POWER_STATE_TYPE_BATTERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"balanced\00", align 1
@POWER_STATE_TYPE_BALANCED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@POWER_STATE_TYPE_PERFORMANCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@RADEON_IS_PX = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @radeon_set_dpm_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @radeon_set_dpm_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.radeon_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.drm_device* %12, %struct.drm_device** %9, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %10, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = call i64 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32, i32* @POWER_STATE_TYPE_BATTERY, align 4
  %26 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  br label %61

30:                                               ; preds = %4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i64 @strncmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @POWER_STATE_TYPE_BALANCED, align 4
  %37 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  br label %60

41:                                               ; preds = %30
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i64 @strncmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @POWER_STATE_TYPE_PERFORMANCE, align 4
  %48 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  br label %59

52:                                               ; preds = %41
  %53 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i64, i64* @EINVAL, align 8
  %58 = sub i64 0, %57
  store i64 %58, i64* %8, align 8
  br label %82

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %35
  br label %61

61:                                               ; preds = %60, %24
  %62 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RADEON_IS_PX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %74 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DRM_SWITCH_POWER_ON, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %61
  %79 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %80 = call i32 @radeon_pm_compute_clocks(%struct.radeon_device* %79)
  br label %81

81:                                               ; preds = %78, %72
  br label %82

82:                                               ; preds = %81, %52
  %83 = load i64, i64* %8, align 8
  ret i64 %83
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @radeon_pm_compute_clocks(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
