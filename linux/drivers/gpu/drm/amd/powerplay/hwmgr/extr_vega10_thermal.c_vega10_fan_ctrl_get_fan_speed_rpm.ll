; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_fan_ctrl_get_fan_speed_rpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_fan_ctrl_get_fan_speed_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device*, %struct.TYPE_5__, %struct.vega10_hwmgr* }
%struct.amdgpu_device = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vega10_hwmgr = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@GNLD_FAN_CONTROL = common dso_local global i64 0, align 8
@THM = common dso_local global i32 0, align 4
@mmCG_TACH_STATUS = common dso_local global i32 0, align 4
@CG_TACH_STATUS = common dso_local global i32 0, align 4
@TACH_PERIOD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega10_fan_ctrl_get_fan_speed_rpm(%struct.pp_hwmgr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.vega10_hwmgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %6, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 2
  %16 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %15, align 8
  store %struct.vega10_hwmgr* %16, %struct.vega10_hwmgr** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

24:                                               ; preds = %2
  %25 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %26 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i64, i64* @GNLD_FAN_CONTROL, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @vega10_get_current_rpm(%struct.pp_hwmgr* %34, i32* %35)
  store i32 %36, i32* %10, align 4
  br label %60

37:                                               ; preds = %24
  %38 = load i32, i32* @THM, align 4
  %39 = load i32, i32* @mmCG_TACH_STATUS, align 4
  %40 = call i32 @RREG32_SOC15(i32 %38, i32 0, i32 %39)
  %41 = load i32, i32* @CG_TACH_STATUS, align 4
  %42 = load i32, i32* @TACH_PERIOD, align 4
  %43 = call i32 @REG_GET_FIELD(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %37
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %51 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %50, i32 0, i32 0
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %51, align 8
  %53 = call i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 60, %54
  %56 = mul nsw i32 %55, 10000
  %57 = load i32, i32* %8, align 4
  %58 = sdiv i32 %56, %57
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %49, %33
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %46, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @vega10_get_current_rpm(%struct.pp_hwmgr*, i32*) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
