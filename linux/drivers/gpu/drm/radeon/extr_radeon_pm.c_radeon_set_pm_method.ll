; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_set_pm_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_set_pm_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { i64, %struct.radeon_device* }
%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@RADEON_IS_PX = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@PM_METHOD_DPM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"dynpm\00", align 1
@PM_METHOD_DYNPM = common dso_local global i64 0, align 8
@DYNPM_STATE_PAUSED = common dso_local global i32 0, align 4
@DYNPM_ACTION_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@DYNPM_STATE_DISABLED = common dso_local global i32 0, align 4
@DYNPM_ACTION_NONE = common dso_local global i32 0, align 4
@PM_METHOD_PROFILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @radeon_set_pm_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @radeon_set_pm_method(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RADEON_IS_PX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DRM_SWITCH_POWER_ON, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %8, align 8
  br label %104

31:                                               ; preds = %22, %4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PM_METHOD_DPM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %8, align 8
  br label %104

41:                                               ; preds = %31
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %44 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load i64, i64* @PM_METHOD_DYNPM, align 8
  %52 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load i32, i32* @DYNPM_STATE_PAUSED, align 4
  %56 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @DYNPM_ACTION_DEFAULT, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 8
  %63 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = call i32 @mutex_unlock(i32* %65)
  br label %101

67:                                               ; preds = %41
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i64 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load i32, i32* @DYNPM_STATE_DISABLED, align 4
  %78 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @DYNPM_ACTION_NONE, align 4
  %82 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 8
  %85 = load i64, i64* @PM_METHOD_PROFILE, align 8
  %86 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = call i32 @cancel_delayed_work_sync(i32* %95)
  br label %100

97:                                               ; preds = %67
  %98 = load i64, i64* @EINVAL, align 8
  %99 = sub i64 0, %98
  store i64 %99, i64* %8, align 8
  br label %104

100:                                              ; preds = %72
  br label %101

101:                                              ; preds = %100, %46
  %102 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %103 = call i32 @radeon_pm_compute_clocks(%struct.radeon_device* %102)
  br label %104

104:                                              ; preds = %101, %97, %38, %28
  %105 = load i64, i64* %8, align 8
  ret i64 %105
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @radeon_pm_compute_clocks(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
