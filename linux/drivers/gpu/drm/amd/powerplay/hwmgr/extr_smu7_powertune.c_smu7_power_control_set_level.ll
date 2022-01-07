; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_powertune.c_smu7_power_control_set_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_powertune.c_smu7_power_control_set_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { %struct.phm_cac_tdp_table* }
%struct.phm_cac_tdp_table = type { i32, i32 }
%struct.phm_ppt_v1_information = type { %struct.phm_cac_tdp_table* }

@PP_TABLE_V1 = common dso_local global i64 0, align 8
@PHM_PlatformCaps_PowerContainment = common dso_local global i32 0, align 4
@CHIP_TONGA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_power_control_set_level(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.phm_ppt_v1_information*, align 8
  %4 = alloca %struct.phm_cac_tdp_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %11, %struct.phm_ppt_v1_information** %3, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PP_TABLE_V1, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %3, align 8
  %19 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %18, i32 0, i32 0
  %20 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %19, align 8
  store %struct.phm_cac_tdp_table* %20, %struct.phm_cac_tdp_table** %4, align 8
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %23 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %24, align 8
  store %struct.phm_cac_tdp_table* %25, %struct.phm_cac_tdp_table** %4, align 8
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* @PHM_PlatformCaps_PowerContainment, align 4
  %28 = call i64 @PP_CAP(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %26
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %38 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  br label %47

41:                                               ; preds = %30
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %43 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 -1, %45
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i32 [ %40, %36 ], [ %46, %41 ]
  store i32 %48, i32* %5, align 4
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %50 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CHIP_TONGA, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 100, %55
  %57 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %4, align 8
  %58 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 256
  %61 = mul nsw i32 %56, %60
  %62 = sdiv i32 %61, 100
  store i32 %62, i32* %6, align 4
  br label %72

63:                                               ; preds = %47
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 100, %64
  %66 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %4, align 8
  %67 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 256
  %70 = mul nsw i32 %65, %69
  %71 = sdiv i32 %70, 100
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %63, %54
  %73 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @smu7_set_overdriver_target_tdp(%struct.pp_hwmgr* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %26
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @smu7_set_overdriver_target_tdp(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
