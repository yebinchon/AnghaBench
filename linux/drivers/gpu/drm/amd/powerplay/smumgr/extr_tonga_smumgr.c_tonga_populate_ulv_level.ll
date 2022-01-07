; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_populate_ulv_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_populate_ulv_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.SMU72_Discrete_Ulv = type { i32, i64, i64, i64, i64 }
%struct.phm_ppt_v1_information = type { i32 }

@VOLTAGE_VID_OFFSET_SCALE2 = common dso_local global i32 0, align 4
@VOLTAGE_VID_OFFSET_SCALE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.SMU72_Discrete_Ulv*)* @tonga_populate_ulv_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_populate_ulv_level(%struct.pp_hwmgr* %0, %struct.SMU72_Discrete_Ulv* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.SMU72_Discrete_Ulv*, align 8
  %5 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.SMU72_Discrete_Ulv* %1, %struct.SMU72_Discrete_Ulv** %4, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %9, %struct.phm_ppt_v1_information** %5, align 8
  %10 = load %struct.SMU72_Discrete_Ulv*, %struct.SMU72_Discrete_Ulv** %4, align 8
  %11 = getelementptr inbounds %struct.SMU72_Discrete_Ulv, %struct.SMU72_Discrete_Ulv* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.SMU72_Discrete_Ulv*, %struct.SMU72_Discrete_Ulv** %4, align 8
  %13 = getelementptr inbounds %struct.SMU72_Discrete_Ulv, %struct.SMU72_Discrete_Ulv* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %5, align 8
  %15 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.SMU72_Discrete_Ulv*, %struct.SMU72_Discrete_Ulv** %4, align 8
  %19 = getelementptr inbounds %struct.SMU72_Discrete_Ulv, %struct.SMU72_Discrete_Ulv* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %5, align 8
  %21 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VOLTAGE_VID_OFFSET_SCALE2, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @VOLTAGE_VID_OFFSET_SCALE1, align 4
  %26 = sdiv i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load %struct.SMU72_Discrete_Ulv*, %struct.SMU72_Discrete_Ulv** %4, align 8
  %29 = getelementptr inbounds %struct.SMU72_Discrete_Ulv, %struct.SMU72_Discrete_Ulv* %28, i32 0, i32 4
  store i64 %27, i64* %29, align 8
  %30 = load %struct.SMU72_Discrete_Ulv*, %struct.SMU72_Discrete_Ulv** %4, align 8
  %31 = getelementptr inbounds %struct.SMU72_Discrete_Ulv, %struct.SMU72_Discrete_Ulv* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.SMU72_Discrete_Ulv*, %struct.SMU72_Discrete_Ulv** %4, align 8
  %33 = getelementptr inbounds %struct.SMU72_Discrete_Ulv, %struct.SMU72_Discrete_Ulv* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i64 %34)
  %36 = load %struct.SMU72_Discrete_Ulv*, %struct.SMU72_Discrete_Ulv** %4, align 8
  %37 = getelementptr inbounds %struct.SMU72_Discrete_Ulv, %struct.SMU72_Discrete_Ulv* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i64 %38)
  %40 = load %struct.SMU72_Discrete_Ulv*, %struct.SMU72_Discrete_Ulv** %4, align 8
  %41 = getelementptr inbounds %struct.SMU72_Discrete_Ulv, %struct.SMU72_Discrete_Ulv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %42)
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
