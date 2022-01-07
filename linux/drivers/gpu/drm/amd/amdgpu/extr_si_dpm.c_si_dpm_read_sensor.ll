; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.evergreen_power_info = type { %struct.amdgpu_ps }
%struct.amdgpu_ps = type { i32 }
%struct.si_ps = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@TARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@CURRENT_STATE_INDEX_MASK = common dso_local global i64 0, align 8
@CURRENT_STATE_INDEX_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32*)* @si_dpm_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_dpm_read_sensor(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.evergreen_power_info*, align 8
  %12 = alloca %struct.amdgpu_ps*, align 8
  %13 = alloca %struct.si_ps*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %10, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %20 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device* %19)
  store %struct.evergreen_power_info* %20, %struct.evergreen_power_info** %11, align 8
  %21 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %11, align 8
  %22 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %21, i32 0, i32 0
  store %struct.amdgpu_ps* %22, %struct.amdgpu_ps** %12, align 8
  %23 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %12, align 8
  %24 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %23)
  store %struct.si_ps* %24, %struct.si_ps** %13, align 8
  %25 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %26 = call i64 @RREG32(i32 %25)
  %27 = load i64, i64* @CURRENT_STATE_INDEX_MASK, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @CURRENT_STATE_INDEX_SHIFT, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %16, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %90

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %87 [
    i32 129, label %39
    i32 130, label %60
    i32 128, label %81
  ]

39:                                               ; preds = %37
  %40 = load i64, i64* %16, align 8
  %41 = load %struct.si_ps*, %struct.si_ps** %13, align 8
  %42 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.si_ps*, %struct.si_ps** %13, align 8
  %47 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = bitcast i8* %54 to i32*
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 4, i32* %56, align 4
  store i32 0, i32* %5, align 4
  br label %90

57:                                               ; preds = %39
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %90

60:                                               ; preds = %37
  %61 = load i64, i64* %16, align 8
  %62 = load %struct.si_ps*, %struct.si_ps** %13, align 8
  %63 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.si_ps*, %struct.si_ps** %13, align 8
  %68 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = bitcast i8* %75 to i32*
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 4, i32* %77, align 4
  store i32 0, i32* %5, align 4
  br label %90

78:                                               ; preds = %60
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %90

81:                                               ; preds = %37
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %83 = call i32 @si_dpm_get_temp(%struct.amdgpu_device* %82)
  %84 = load i8*, i8** %8, align 8
  %85 = bitcast i8* %84 to i32*
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 4, i32* %86, align 4
  store i32 0, i32* %5, align 4
  br label %90

87:                                               ; preds = %37
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %81, %78, %66, %57, %45, %34
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device*) #1

declare dso_local %struct.si_ps* @si_get_ps(%struct.amdgpu_ps*) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @si_dpm_get_temp(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
