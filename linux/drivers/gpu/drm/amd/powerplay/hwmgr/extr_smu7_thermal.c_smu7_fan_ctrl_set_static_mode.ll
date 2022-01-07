; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_set_static_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_set_static_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i8*, i8* }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@CG_FDO_CTRL2 = common dso_local global i32 0, align 4
@FDO_PWM_MODE = common dso_local global i32 0, align 4
@TMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_fan_ctrl_set_static_mode(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %14 = load i32, i32* @CG_FDO_CTRL2, align 4
  %15 = load i32, i32* @FDO_PWM_MODE, align 4
  %16 = call i8* @PHM_READ_VFPF_INDIRECT_FIELD(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %23 = load i32, i32* @CG_FDO_CTRL2, align 4
  %24 = load i32, i32* @TMIN, align 4
  %25 = call i8* @PHM_READ_VFPF_INDIRECT_FIELD(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %9, %2
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %35 = load i32, i32* @CG_FDO_CTRL2, align 4
  %36 = load i32, i32* @TMIN, align 4
  %37 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %33, i32 %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %42 = load i32, i32* @CG_FDO_CTRL2, align 4
  %43 = load i32, i32* @FDO_PWM_MODE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  ret i32 0
}

declare dso_local i8* @PHM_READ_VFPF_INDIRECT_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
