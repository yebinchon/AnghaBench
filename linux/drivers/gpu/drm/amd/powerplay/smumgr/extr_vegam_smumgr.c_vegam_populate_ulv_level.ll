; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_populate_ulv_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_populate_ulv_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.SMU75_Discrete_Ulv = type { i32, i64, i64, i64, i64 }
%struct.smu7_hwmgr = type { i32 }
%struct.phm_ppt_v1_information = type { i32 }

@VOLTAGE_VID_OFFSET_SCALE2 = common dso_local global i32 0, align 4
@VOLTAGE_VID_OFFSET_SCALE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.SMU75_Discrete_Ulv*)* @vegam_populate_ulv_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vegam_populate_ulv_level(%struct.pp_hwmgr* %0, %struct.SMU75_Discrete_Ulv* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.SMU75_Discrete_Ulv*, align 8
  %5 = alloca %struct.smu7_hwmgr*, align 8
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.SMU75_Discrete_Ulv* %1, %struct.SMU75_Discrete_Ulv** %4, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %10, %struct.smu7_hwmgr** %5, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %14, %struct.phm_ppt_v1_information** %6, align 8
  %15 = load %struct.SMU75_Discrete_Ulv*, %struct.SMU75_Discrete_Ulv** %4, align 8
  %16 = getelementptr inbounds %struct.SMU75_Discrete_Ulv, %struct.SMU75_Discrete_Ulv* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.SMU75_Discrete_Ulv*, %struct.SMU75_Discrete_Ulv** %4, align 8
  %18 = getelementptr inbounds %struct.SMU75_Discrete_Ulv, %struct.SMU75_Discrete_Ulv* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %20 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.SMU75_Discrete_Ulv*, %struct.SMU75_Discrete_Ulv** %4, align 8
  %24 = getelementptr inbounds %struct.SMU75_Discrete_Ulv, %struct.SMU75_Discrete_Ulv* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %26 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VOLTAGE_VID_OFFSET_SCALE2, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* @VOLTAGE_VID_OFFSET_SCALE1, align 4
  %31 = sdiv i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = load %struct.SMU75_Discrete_Ulv*, %struct.SMU75_Discrete_Ulv** %4, align 8
  %34 = getelementptr inbounds %struct.SMU75_Discrete_Ulv, %struct.SMU75_Discrete_Ulv* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  %35 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %36 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, 3
  %39 = load %struct.SMU75_Discrete_Ulv*, %struct.SMU75_Discrete_Ulv** %4, align 8
  %40 = getelementptr inbounds %struct.SMU75_Discrete_Ulv, %struct.SMU75_Discrete_Ulv* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.SMU75_Discrete_Ulv*, %struct.SMU75_Discrete_Ulv** %4, align 8
  %42 = getelementptr inbounds %struct.SMU75_Discrete_Ulv, %struct.SMU75_Discrete_Ulv* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i64 %43)
  %45 = load %struct.SMU75_Discrete_Ulv*, %struct.SMU75_Discrete_Ulv** %4, align 8
  %46 = getelementptr inbounds %struct.SMU75_Discrete_Ulv, %struct.SMU75_Discrete_Ulv* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i64 %47)
  %49 = load %struct.SMU75_Discrete_Ulv*, %struct.SMU75_Discrete_Ulv** %4, align 8
  %50 = getelementptr inbounds %struct.SMU75_Discrete_Ulv, %struct.SMU75_Discrete_Ulv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %51)
  ret i32 0
}

declare dso_local i32 @CONVERT_FROM_HOST_TO_SMC_UL(i64) #1

declare dso_local i32 @CONVERT_FROM_HOST_TO_SMC_US(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
