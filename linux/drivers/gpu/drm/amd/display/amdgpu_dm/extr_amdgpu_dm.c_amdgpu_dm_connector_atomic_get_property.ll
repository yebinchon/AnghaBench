; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_atomic_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_atomic_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_3__, %struct.amdgpu_device* }
%struct.TYPE_3__ = type { %struct.drm_property* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_connector_state = type { i32 }
%struct.drm_property = type { i32 }
%struct.dm_connector_state = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_CENTER = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_ASPECT = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_FULLSCREEN = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_dm_connector_atomic_get_property(%struct.drm_connector* %0, %struct.drm_connector_state* %1, %struct.drm_property* %2, i32* %3) #0 {
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_property*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.dm_connector_state*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %6, align 8
  store %struct.drm_property* %2, %struct.drm_property** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %10, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %20 = call %struct.dm_connector_state* @to_dm_connector_state(%struct.drm_connector_state* %19)
  store %struct.dm_connector_state* %20, %struct.dm_connector_state** %11, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.drm_property*, %struct.drm_property** %26, align 8
  %28 = icmp eq %struct.drm_property* %23, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %4
  %30 = load %struct.dm_connector_state*, %struct.dm_connector_state** %11, align 8
  %31 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %43 [
    i32 130, label %33
    i32 131, label %36
    i32 129, label %39
    i32 128, label %42
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @DRM_MODE_SCALE_CENTER, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %46

36:                                               ; preds = %29
  %37 = load i32, i32* @DRM_MODE_SCALE_ASPECT, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %46

39:                                               ; preds = %29
  %40 = load i32, i32* @DRM_MODE_SCALE_FULLSCREEN, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %46

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %29, %42
  %44 = load i32, i32* @DRM_MODE_SCALE_NONE, align 4
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %39, %36, %33
  store i32 0, i32* %12, align 4
  br label %99

47:                                               ; preds = %4
  %48 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load %struct.drm_property*, %struct.drm_property** %51, align 8
  %53 = icmp eq %struct.drm_property* %48, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.dm_connector_state*, %struct.dm_connector_state** %11, align 8
  %56 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %12, align 4
  br label %98

59:                                               ; preds = %47
  %60 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load %struct.drm_property*, %struct.drm_property** %63, align 8
  %65 = icmp eq %struct.drm_property* %60, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.dm_connector_state*, %struct.dm_connector_state** %11, align 8
  %68 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %12, align 4
  br label %97

71:                                               ; preds = %59
  %72 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.drm_property*, %struct.drm_property** %75, align 8
  %77 = icmp eq %struct.drm_property* %72, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.dm_connector_state*, %struct.dm_connector_state** %11, align 8
  %80 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  store i32 0, i32* %12, align 4
  br label %96

83:                                               ; preds = %71
  %84 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.drm_property*, %struct.drm_property** %87, align 8
  %89 = icmp eq %struct.drm_property* %84, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.dm_connector_state*, %struct.dm_connector_state** %11, align 8
  %92 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %90, %83
  br label %96

96:                                               ; preds = %95, %78
  br label %97

97:                                               ; preds = %96, %66
  br label %98

98:                                               ; preds = %97, %54
  br label %99

99:                                               ; preds = %98, %46
  %100 = load i32, i32* %12, align 4
  ret i32 %100
}

declare dso_local %struct.dm_connector_state* @to_dm_connector_state(%struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
