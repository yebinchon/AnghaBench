; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_thermal_get_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_thermal_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@CG_MULT_THERMAL_STATUS = common dso_local global i32 0, align 4
@CTF_TEMP = common dso_local global i32 0, align 4
@SMU7_THERMAL_MAXIMUM_TEMP_READING = common dso_local global i32 0, align 4
@PP_TEMPERATURE_UNITS_PER_CENTIGRADES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_thermal_get_temperature(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %8 = load i32, i32* @CG_MULT_THERMAL_STATUS, align 4
  %9 = load i32, i32* @CTF_TEMP, align 4
  %10 = call i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 512
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @SMU7_THERMAL_MAXIMUM_TEMP_READING, align 4
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 511
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %21 = load i32, i32* %3, align 4
  %22 = mul nsw i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
