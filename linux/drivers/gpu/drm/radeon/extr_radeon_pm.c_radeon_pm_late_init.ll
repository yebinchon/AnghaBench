; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_late_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_late_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@PM_METHOD_DPM = common dso_local global i64 0, align 8
@dev_attr_power_dpm_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to create device file for dpm state\0A\00", align 1
@dev_attr_power_dpm_force_performance_level = common dso_local global i32 0, align 4
@dev_attr_power_profile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to create device file for power profile\0A\00", align 1
@dev_attr_power_method = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to create device file for power method\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"radeon_pm_late_init failed, disabling dpm\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_pm_late_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PM_METHOD_DPM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %85

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %84

16:                                               ; preds = %10
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %16
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_create_file(i32 %25, i32* @dev_attr_power_dpm_state)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_create_file(i32 %34, i32* @dev_attr_power_dpm_force_performance_level)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %31
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_create_file(i32 %43, i32* @dev_attr_power_profile)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @device_create_file(i32 %52, i32* @dev_attr_power_method)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %49
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %16
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = call i32 @radeon_dpm_late_enable(%struct.radeon_device* %67)
  store i32 %68, i32* %3, align 4
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %62
  %76 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  %79 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %83

80:                                               ; preds = %62
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = call i32 @radeon_pm_compute_clocks(%struct.radeon_device* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %10
  br label %124

85:                                               ; preds = %1
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %123

91:                                               ; preds = %85
  %92 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %123, label %97

97:                                               ; preds = %91
  %98 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @device_create_file(i32 %100, i32* @dev_attr_power_profile)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %97
  %107 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @device_create_file(i32 %109, i32* @dev_attr_power_method)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %106
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %115
  br label %123

123:                                              ; preds = %122, %91, %85
  br label %124

124:                                              ; preds = %123, %84
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radeon_dpm_late_enable(%struct.radeon_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @radeon_pm_compute_clocks(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
