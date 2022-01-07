; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_populate_single_graphic_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_populate_single_graphic_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_6__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.SMU7_Discrete_GraphicsLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"vdd_dep_on_sclk table is NULL\0A\00", align 1
@PHM_PlatformCaps_SclkDeepSleep = common dso_local global i32 0, align 4
@CISLAND_MINIMUM_ENGINE_CLOCK = common dso_local global i32 0, align 4
@PPSMC_DISPLAY_WATERMARK_LOW = common dso_local global i32 0, align 4
@VOLTAGE_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, %struct.SMU7_Discrete_GraphicsLevel*)* @ci_populate_single_graphic_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_single_graphic_level(%struct.pp_hwmgr* %0, i32 %1, %struct.SMU7_Discrete_GraphicsLevel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.SMU7_Discrete_GraphicsLevel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.SMU7_Discrete_GraphicsLevel* %2, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %13, %struct.smu7_hwmgr** %9, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %17 = call i32 @ci_calculate_sclk_params(%struct.pp_hwmgr* %14, i32 %15, %struct.SMU7_Discrete_GraphicsLevel* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %25 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %24, i32 0, i32 0
  %26 = call i32 @ci_get_dependency_volt_by_clk(%struct.pp_hwmgr* %18, i32 %22, i32 %23, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %149

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %35 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %37 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %39 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %50 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %49, i32 0, i32 2
  %51 = call i32 @ci_populate_phase_value_based_on_sclk(%struct.pp_hwmgr* %43, i32 %47, i32 %48, i32* %50)
  br label %52

52:                                               ; preds = %42, %32
  %53 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %54 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %58 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 8
  %59 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %60 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %59, i32 0, i32 3
  store i32 0, i32* %60, align 4
  %61 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %62 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %61, i32 0, i32 4
  store i32 0, i32* %62, align 8
  %63 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %64 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %63, i32 0, i32 17
  store i64 0, i64* %64, align 8
  %65 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %66 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %65, i32 0, i32 5
  store i32 1, i32* %66, align 4
  %67 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %68 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %72 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %71, i32 0, i32 16
  store i32 %70, i32* %72, align 4
  %73 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %74 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %78 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %77, i32 0, i32 15
  store i32 %76, i32* %78, align 8
  %79 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %80 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %79, i32 0, i32 14
  store i64 0, i64* %80, align 8
  %81 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %82 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %81, i32 0, i32 13
  store i64 0, i64* %82, align 8
  %83 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %84 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PHM_PlatformCaps_SclkDeepSleep, align 4
  %88 = call i64 @phm_cap_enabled(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %52
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @CISLAND_MINIMUM_ENGINE_CLOCK, align 4
  %93 = call i32 @ci_get_sleep_divider_id_from_clock(i32 %91, i32 %92)
  %94 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %95 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %94, i32 0, i32 12
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %90, %52
  %97 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_LOW, align 4
  %98 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %99 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %98, i32 0, i32 11
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 0, %100
  br i1 %101, label %102, label %147

102:                                              ; preds = %96
  %103 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %104 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @VOLTAGE_SCALE, align 4
  %107 = mul nsw i32 %105, %106
  %108 = call i32 @PP_HOST_TO_SMC_UL(i32 %107)
  %109 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %110 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %112 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i32 %113)
  %115 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %116 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i32 %117)
  %119 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %120 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i32 %121)
  %123 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %124 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i32 %125)
  %127 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %128 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i32 %129)
  %131 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %132 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i32 %133)
  %135 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %136 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i32 %137)
  %139 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %140 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i32 %141)
  %143 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %7, align 8
  %144 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i32 %145)
  br label %147

147:                                              ; preds = %102, %96
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %29
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @ci_calculate_sclk_params(%struct.pp_hwmgr*, i32, %struct.SMU7_Discrete_GraphicsLevel*) #1

declare dso_local i32 @ci_get_dependency_volt_by_clk(%struct.pp_hwmgr*, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ci_populate_phase_value_based_on_sclk(%struct.pp_hwmgr*, i32, i32, i32*) #1

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

declare dso_local i32 @ci_get_sleep_divider_id_from_clock(i32, i32) #1

declare dso_local i32 @PP_HOST_TO_SMC_UL(i32) #1

declare dso_local i32 @CONVERT_FROM_HOST_TO_SMC_UL(i32) #1

declare dso_local i32 @CONVERT_FROM_HOST_TO_SMC_US(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
