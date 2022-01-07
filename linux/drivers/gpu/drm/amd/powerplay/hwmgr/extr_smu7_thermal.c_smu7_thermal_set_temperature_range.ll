; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_thermal_set_temperature_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_thermal_set_temperature_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@SMU7_THERMAL_MINIMUM_ALERT_TEMP = common dso_local global i32 0, align 4
@PP_TEMPERATURE_UNITS_PER_CENTIGRADES = common dso_local global i32 0, align 4
@SMU7_THERMAL_MAXIMUM_ALERT_TEMP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@CG_THERMAL_INT = common dso_local global i32 0, align 4
@DIG_THERM_INTH = common dso_local global i32 0, align 4
@DIG_THERM_INTL = common dso_local global i32 0, align 4
@CG_THERMAL_CTRL = common dso_local global i32 0, align 4
@DIG_THERM_DPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32)* @smu7_thermal_set_temperature_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_thermal_set_temperature_range(%struct.pp_hwmgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @SMU7_THERMAL_MINIMUM_ALERT_TEMP, align 4
  %11 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @SMU7_THERMAL_MAXIMUM_ALERT_TEMP, align 4
  %14 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %65

34:                                               ; preds = %27
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %39 = load i32, i32* @CG_THERMAL_INT, align 4
  %40 = load i32, i32* @DIG_THERM_INTH, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %43 = sdiv i32 %41, %42
  %44 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %37, i32 %38, i32 %39, i32 %40, i32 %43)
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %49 = load i32, i32* @CG_THERMAL_INT, align 4
  %50 = load i32, i32* @DIG_THERM_INTL, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %53 = sdiv i32 %51, %52
  %54 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %47, i32 %48, i32 %49, i32 %50, i32 %53)
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %56 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %59 = load i32, i32* @CG_THERMAL_CTRL, align 4
  %60 = load i32, i32* @DIG_THERM_DPM, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %63 = sdiv i32 %61, %62
  %64 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %57, i32 %58, i32 %59, i32 %60, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %34, %31
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
