; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_dpm_enable_uvd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_dpm_enable_uvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { %struct.pp_hwmgr*, %struct.TYPE_6__* }
%struct.pp_hwmgr = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.pp_hwmgr*, i32, i32)* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@AMD_IP_BLOCK_TYPE_UVD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"[SW SMU]: dpm enable uvd failed, state = %s, ret = %d. \0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@CHIP_STONEY = common dso_local global i64 0, align 8
@WIDTH_4K = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_dpm_enable_uvd(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 4
  %13 = load i32, i32* @AMD_IP_BLOCK_TYPE_UVD, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @smu_dpm_set_power_gate(i32* %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %10
  br label %51

26:                                               ; preds = %2
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = load i32, i32* @AMD_IP_BLOCK_TYPE_UVD, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @amdgpu_dpm_set_powergating_by_smu(%struct.amdgpu_device* %39, i32 %40, i32 %44)
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %34, %26
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHIP_STONEY, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %51
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WIDTH_4K, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %57
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %67, align 8
  store %struct.pp_hwmgr* %68, %struct.pp_hwmgr** %6, align 8
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %70 = icmp ne %struct.pp_hwmgr* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %64
  %72 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %73 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = icmp ne %struct.TYPE_10__* %74, null
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32 (%struct.pp_hwmgr*, i32, i32)*, i32 (%struct.pp_hwmgr*, i32, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.pp_hwmgr*, i32, i32)* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %85 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32 (%struct.pp_hwmgr*, i32, i32)*, i32 (%struct.pp_hwmgr*, i32, i32)** %87, align 8
  %89 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 %88(%struct.pp_hwmgr* %89, i32 %93, i32 1)
  br label %95

95:                                               ; preds = %83, %76, %71, %64
  br label %96

96:                                               ; preds = %95, %57, %51
  ret void
}

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_dpm_set_power_gate(i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_dpm_set_powergating_by_smu(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
