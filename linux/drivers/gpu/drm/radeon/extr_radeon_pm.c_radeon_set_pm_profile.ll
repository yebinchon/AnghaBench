; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_set_pm_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_set_pm_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { i64, %struct.radeon_device* }
%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@RADEON_IS_PX = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@PM_METHOD_PROFILE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@PM_PROFILE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@PM_PROFILE_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@PM_PROFILE_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"mid\00", align 1
@PM_PROFILE_MID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@PM_PROFILE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @radeon_set_pm_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @radeon_set_pm_profile(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.radeon_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %12)
  store %struct.drm_device* %13, %struct.drm_device** %10, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %11, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RADEON_IS_PX, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DRM_SWITCH_POWER_ON, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %115

32:                                               ; preds = %23, %4
  %33 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PM_METHOD_PROFILE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %105

43:                                               ; preds = %32
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %46 = call i64 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @PM_PROFILE_DEFAULT, align 4
  %50 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  br label %100

53:                                               ; preds = %43
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @PM_PROFILE_AUTO, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  br label %99

63:                                               ; preds = %53
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i64 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @PM_PROFILE_LOW, align 4
  %70 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  br label %98

73:                                               ; preds = %63
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i64 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %74, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @PM_PROFILE_MID, align 4
  %80 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  br label %97

83:                                               ; preds = %73
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %86 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %84, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @PM_PROFILE_HIGH, align 4
  %90 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  br label %96

93:                                               ; preds = %83
  %94 = load i64, i64* @EINVAL, align 8
  %95 = sub i64 0, %94
  store i64 %95, i64* %9, align 8
  br label %109

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %78
  br label %98

98:                                               ; preds = %97, %68
  br label %99

99:                                               ; preds = %98, %58
  br label %100

100:                                              ; preds = %99, %48
  %101 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %102 = call i32 @radeon_pm_update_profile(%struct.radeon_device* %101)
  %103 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %104 = call i32 @radeon_pm_set_clocks(%struct.radeon_device* %103)
  br label %108

105:                                              ; preds = %32
  %106 = load i64, i64* @EINVAL, align 8
  %107 = sub i64 0, %106
  store i64 %107, i64* %9, align 8
  br label %108

108:                                              ; preds = %105, %100
  br label %109

109:                                              ; preds = %108, %93
  %110 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i64, i64* %9, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %109, %29
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @radeon_pm_update_profile(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_set_clocks(%struct.radeon_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
