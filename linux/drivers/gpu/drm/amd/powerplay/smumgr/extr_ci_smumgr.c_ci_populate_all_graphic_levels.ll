; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_populate_all_graphic_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_populate_all_graphic_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_7__, %struct.smu7_dpm_table }
%struct.TYPE_7__ = type { i32 }
%struct.smu7_dpm_table = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ci_smumgr = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.SMU7_Discrete_GraphicsLevel* }
%struct.SMU7_Discrete_GraphicsLevel = type { i32, i32, i64 }

@SMU7_Discrete_DpmTable = common dso_local global i32 0, align 4
@GraphicsLevel = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_GRAPHICS = common dso_local global i32 0, align 4
@PPSMC_DISPLAY_WATERMARK_HIGH = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @ci_populate_all_graphic_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_all_graphic_levels(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu7_hwmgr*, align 8
  %5 = alloca %struct.ci_smumgr*, align 8
  %6 = alloca %struct.smu7_dpm_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.SMU7_Discrete_GraphicsLevel*, align 8
  %11 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %15, %struct.smu7_hwmgr** %4, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ci_smumgr*
  store %struct.ci_smumgr* %19, %struct.ci_smumgr** %5, align 8
  %20 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %21 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %20, i32 0, i32 1
  store %struct.smu7_dpm_table* %21, %struct.smu7_dpm_table** %6, align 8
  store i32 0, i32* %7, align 4
  %22 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %23 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @SMU7_Discrete_DpmTable, align 4
  %26 = load i32, i32* @GraphicsLevel, align 4
  %27 = call i64 @offsetof(i32 %25, i32 %26)
  %28 = add i64 %24, %27
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* @SMU7_MAX_LEVELS_GRAPHICS, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 16, %30
  store i64 %31, i64* %9, align 8
  %32 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %33 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %34, align 8
  store %struct.SMU7_Discrete_GraphicsLevel* %35, %struct.SMU7_Discrete_GraphicsLevel** %10, align 8
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %90, %1
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %39 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %37, %41
  br i1 %42, label %43, label %93

43:                                               ; preds = %36
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %45 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %46 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %53, i64 %54
  %56 = call i32 @ci_populate_single_graphic_level(%struct.pp_hwmgr* %44, i32 %52, %struct.SMU7_Discrete_GraphicsLevel* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %121

61:                                               ; preds = %43
  %62 = load i64, i64* %11, align 8
  %63 = icmp ugt i64 %62, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %66 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %68, i64 %69
  %71 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %64, %61
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %75 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %77, 1
  %79 = icmp eq i64 %73, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_HIGH, align 4
  %82 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %83 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %85, i64 %86
  %88 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %87, i32 0, i32 1
  store i32 %81, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %72
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %11, align 8
  br label %36

93:                                               ; preds = %36
  %94 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %95 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %96, align 8
  %98 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %97, i64 0
  %99 = getelementptr inbounds %struct.SMU7_Discrete_GraphicsLevel, %struct.SMU7_Discrete_GraphicsLevel* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %101 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %105 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %108 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %107, i32 0, i32 0
  %109 = call i32 @phm_get_dpm_level_enable_mask_value(%struct.TYPE_8__* %108)
  %110 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %111 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.SMU7_Discrete_GraphicsLevel*, %struct.SMU7_Discrete_GraphicsLevel** %10, align 8
  %116 = bitcast %struct.SMU7_Discrete_GraphicsLevel* %115 to i64*
  %117 = load i64, i64* %9, align 8
  %118 = load i32, i32* @SMC_RAM_END, align 4
  %119 = call i32 @ci_copy_bytes_to_smc(%struct.pp_hwmgr* %113, i64 %114, i64* %116, i64 %117, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %93, %59
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @ci_populate_single_graphic_level(%struct.pp_hwmgr*, i32, %struct.SMU7_Discrete_GraphicsLevel*) #1

declare dso_local i32 @phm_get_dpm_level_enable_mask_value(%struct.TYPE_8__*) #1

declare dso_local i32 @ci_copy_bytes_to_smc(%struct.pp_hwmgr*, i64, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
