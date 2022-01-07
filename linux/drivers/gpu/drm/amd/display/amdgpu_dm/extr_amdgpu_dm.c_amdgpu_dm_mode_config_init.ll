; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_mode_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_mode_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dm_atomic_state = type { i32, i32 }

@amdgpu_dm_mode_funcs = common dso_local global i32 0, align 4
@amdgpu_dm_mode_config_helperfuncs = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dm_atomic_state_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_dm_mode_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_mode_config_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.dm_atomic_state*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 7
  store i8* bitcast (i32* @amdgpu_dm_mode_funcs to i8*), i8** %13, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 6
  store i32* @amdgpu_dm_mode_config_helperfuncs, i32** %18, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 16384, i32* %23, align 8
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 16384, i32* %28, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32 24, i32* %33, align 8
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i32 1, i32* %38, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  store i32 1, i32* %43, align 8
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.dm_atomic_state* @kzalloc(i32 8, i32 %53)
  store %struct.dm_atomic_state* %54, %struct.dm_atomic_state** %4, align 8
  %55 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %4, align 8
  %56 = icmp ne %struct.dm_atomic_state* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %1
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %109

60:                                               ; preds = %1
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dc_create_state(i32 %64)
  %66 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %4, align 8
  %67 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %4, align 8
  %69 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %60
  %73 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %4, align 8
  %74 = call i32 @kfree(%struct.dm_atomic_state* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %109

77:                                               ; preds = %60
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %4, align 8
  %83 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dc_resource_state_copy_construct_current(i32 %81, i32 %84)
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %4, align 8
  %93 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %92, i32 0, i32 0
  %94 = call i32 @drm_atomic_private_obj_init(%struct.TYPE_10__* %88, i32* %91, i32* %93, i32* @dm_atomic_state_funcs)
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %96 = call i32 @amdgpu_display_modeset_create_props(%struct.amdgpu_device* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %77
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %109

101:                                              ; preds = %77
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = call i32 @amdgpu_dm_audio_init(%struct.amdgpu_device* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %109

108:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %106, %99, %72, %57
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.dm_atomic_state* @kzalloc(i32, i32) #1

declare dso_local i32 @dc_create_state(i32) #1

declare dso_local i32 @kfree(%struct.dm_atomic_state*) #1

declare dso_local i32 @dc_resource_state_copy_construct_current(i32, i32) #1

declare dso_local i32 @drm_atomic_private_obj_init(%struct.TYPE_10__*, i32*, i32*, i32*) #1

declare dso_local i32 @amdgpu_display_modeset_create_props(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_dm_audio_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
