; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_set_fan_speed_rpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_set_fan_speed_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i64 }
%struct.amdgpu_device = type { i32 }

@PHM_PlatformCaps_MicrocodeFanControl = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@CG_TACH_CTRL = common dso_local global i32 0, align 4
@TARGET_PERIOD = common dso_local global i32 0, align 4
@FDO_PWM_MODE_STATIC_RPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_fan_ctrl_set_fan_speed_rpm(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %2
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %35 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32, %24, %21, %14, %2
  store i32 0, i32* %3, align 4
  br label %71

41:                                               ; preds = %32
  %42 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %43 = call i64 @PP_CAP(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %47 = call i32 @smu7_fan_ctrl_stop_smc_fan_control(%struct.pp_hwmgr* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %50 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.amdgpu_device*
  %53 = call i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 60, %54
  %56 = mul nsw i32 %55, 10000
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 8, %57
  %59 = sdiv i32 %56, %58
  store i32 %59, i32* %6, align 4
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %61 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %64 = load i32, i32* @CG_TACH_CTRL, align 4
  %65 = load i32, i32* @TARGET_PERIOD, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %69 = load i32, i32* @FDO_PWM_MODE_STATIC_RPM, align 4
  %70 = call i32 @smu7_fan_ctrl_set_static_mode(%struct.pp_hwmgr* %68, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %48, %40
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @smu7_fan_ctrl_stop_smc_fan_control(%struct.pp_hwmgr*) #1

declare dso_local i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device*) #1

declare dso_local i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @smu7_fan_ctrl_set_static_mode(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
