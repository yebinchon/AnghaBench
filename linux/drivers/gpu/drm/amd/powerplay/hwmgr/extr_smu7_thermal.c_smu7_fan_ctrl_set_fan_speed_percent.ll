; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_set_fan_speed_percent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_set_fan_speed_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PHM_PlatformCaps_MicrocodeFanControl = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@CG_FDO_CTRL1 = common dso_local global i32 0, align 4
@FMAX_DUTY100 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CG_FDO_CTRL0 = common dso_local global i32 0, align 4
@FDO_STATIC_DUTY = common dso_local global i32 0, align 4
@FDO_PWM_MODE_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_fan_ctrl_set_fan_speed_percent(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 100
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 100, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %22 = call i64 @PP_CAP(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %26 = call i32 @smu7_fan_ctrl_stop_smc_fan_control(%struct.pp_hwmgr* %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %32 = load i32, i32* @CG_FDO_CTRL1, align 4
  %33 = load i32, i32* @FMAX_DUTY100, align 4
  %34 = call i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %27
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @do_div(i32 %44, i32 100)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %7, align 4
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %48 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %51 = load i32, i32* @CG_FDO_CTRL0, align 4
  %52 = load i32, i32* @FDO_STATIC_DUTY, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %56 = load i32, i32* @FDO_PWM_MODE_STATIC, align 4
  %57 = call i32 @smu7_fan_ctrl_set_static_mode(%struct.pp_hwmgr* %55, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %40, %37, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @smu7_fan_ctrl_stop_smc_fan_control(%struct.pp_hwmgr*) #1

declare dso_local i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @smu7_fan_ctrl_set_static_mode(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
