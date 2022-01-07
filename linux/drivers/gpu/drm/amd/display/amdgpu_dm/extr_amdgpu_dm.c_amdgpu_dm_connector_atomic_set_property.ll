; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_atomic_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_atomic_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_connector_state*, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_3__, %struct.amdgpu_device* }
%struct.TYPE_3__ = type { %struct.drm_property* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_connector_state = type { i32 }
%struct.drm_property = type { i32 }
%struct.dm_connector_state = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RMX_CENTER = common dso_local global i32 0, align 4
@RMX_ASPECT = common dso_local global i32 0, align 4
@RMX_FULL = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_dm_connector_atomic_set_property(%struct.drm_connector* %0, %struct.drm_connector_state* %1, %struct.drm_property* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca %struct.dm_connector_state*, align 8
  %13 = alloca %struct.dm_connector_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %6, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 1
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %10, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 1
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %20, align 8
  store %struct.amdgpu_device* %21, %struct.amdgpu_device** %11, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = load %struct.drm_connector_state*, %struct.drm_connector_state** %23, align 8
  %25 = call %struct.dm_connector_state* @to_dm_connector_state(%struct.drm_connector_state* %24)
  store %struct.dm_connector_state* %25, %struct.dm_connector_state** %12, align 8
  %26 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %27 = call %struct.dm_connector_state* @to_dm_connector_state(%struct.drm_connector_state* %26)
  store %struct.dm_connector_state* %27, %struct.dm_connector_state** %13, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.drm_property*, %struct.drm_property** %33, align 8
  %35 = icmp eq %struct.drm_property* %30, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %4
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %45 [
    i32 130, label %38
    i32 131, label %40
    i32 129, label %42
    i32 128, label %44
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @RMX_CENTER, align 4
  store i32 %39, i32* %15, align 4
  br label %47

40:                                               ; preds = %36
  %41 = load i32, i32* @RMX_ASPECT, align 4
  store i32 %41, i32* %15, align 4
  br label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @RMX_FULL, align 4
  store i32 %43, i32* %15, align 4
  br label %47

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %36, %44
  %46 = load i32, i32* @RMX_OFF, align 4
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %45, %42, %40, %38
  %48 = load %struct.dm_connector_state*, %struct.dm_connector_state** %12, align 8
  %49 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %108

54:                                               ; preds = %47
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.dm_connector_state*, %struct.dm_connector_state** %13, align 8
  %57 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %14, align 4
  br label %106

58:                                               ; preds = %4
  %59 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load %struct.drm_property*, %struct.drm_property** %62, align 8
  %64 = icmp eq %struct.drm_property* %59, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.dm_connector_state*, %struct.dm_connector_state** %13, align 8
  %68 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %14, align 4
  br label %105

69:                                               ; preds = %58
  %70 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load %struct.drm_property*, %struct.drm_property** %73, align 8
  %75 = icmp eq %struct.drm_property* %70, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.dm_connector_state*, %struct.dm_connector_state** %13, align 8
  %79 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %14, align 4
  br label %104

80:                                               ; preds = %69
  %81 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.drm_property*, %struct.drm_property** %84, align 8
  %86 = icmp eq %struct.drm_property* %81, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.dm_connector_state*, %struct.dm_connector_state** %13, align 8
  %90 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %14, align 4
  br label %103

91:                                               ; preds = %80
  %92 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.drm_property*, %struct.drm_property** %95, align 8
  %97 = icmp eq %struct.drm_property* %92, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.dm_connector_state*, %struct.dm_connector_state** %13, align 8
  %101 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %98, %91
  br label %103

103:                                              ; preds = %102, %87
  br label %104

104:                                              ; preds = %103, %76
  br label %105

105:                                              ; preds = %104, %65
  br label %106

106:                                              ; preds = %105, %54
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %53
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.dm_connector_state* @to_dm_connector_state(%struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
