; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_populate_ulv_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_populate_ulv_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.SMU73_Discrete_Ulv = type { i32, i64, i64, i64, i64 }
%struct.phm_ppt_v1_information = type { i32 }

@VOLTAGE_VID_OFFSET_SCALE2 = common dso_local global i32 0, align 4
@VOLTAGE_VID_OFFSET_SCALE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.SMU73_Discrete_Ulv*)* @fiji_populate_ulv_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_populate_ulv_level(%struct.pp_hwmgr* %0, %struct.SMU73_Discrete_Ulv* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.SMU73_Discrete_Ulv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.SMU73_Discrete_Ulv* %1, %struct.SMU73_Discrete_Ulv** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %10, %struct.phm_ppt_v1_information** %6, align 8
  %11 = load %struct.SMU73_Discrete_Ulv*, %struct.SMU73_Discrete_Ulv** %4, align 8
  %12 = getelementptr inbounds %struct.SMU73_Discrete_Ulv, %struct.SMU73_Discrete_Ulv* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.SMU73_Discrete_Ulv*, %struct.SMU73_Discrete_Ulv** %4, align 8
  %14 = getelementptr inbounds %struct.SMU73_Discrete_Ulv, %struct.SMU73_Discrete_Ulv* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %16 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.SMU73_Discrete_Ulv*, %struct.SMU73_Discrete_Ulv** %4, align 8
  %20 = getelementptr inbounds %struct.SMU73_Discrete_Ulv, %struct.SMU73_Discrete_Ulv* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %22 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VOLTAGE_VID_OFFSET_SCALE2, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* @VOLTAGE_VID_OFFSET_SCALE1, align 4
  %27 = sdiv i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = load %struct.SMU73_Discrete_Ulv*, %struct.SMU73_Discrete_Ulv** %4, align 8
  %30 = getelementptr inbounds %struct.SMU73_Discrete_Ulv, %struct.SMU73_Discrete_Ulv* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load %struct.SMU73_Discrete_Ulv*, %struct.SMU73_Discrete_Ulv** %4, align 8
  %32 = getelementptr inbounds %struct.SMU73_Discrete_Ulv, %struct.SMU73_Discrete_Ulv* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %2
  %36 = load %struct.SMU73_Discrete_Ulv*, %struct.SMU73_Discrete_Ulv** %4, align 8
  %37 = getelementptr inbounds %struct.SMU73_Discrete_Ulv, %struct.SMU73_Discrete_Ulv* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i64 %38)
  %40 = load %struct.SMU73_Discrete_Ulv*, %struct.SMU73_Discrete_Ulv** %4, align 8
  %41 = getelementptr inbounds %struct.SMU73_Discrete_Ulv, %struct.SMU73_Discrete_Ulv* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @CONVERT_FROM_HOST_TO_SMC_UL(i64 %42)
  %44 = load %struct.SMU73_Discrete_Ulv*, %struct.SMU73_Discrete_Ulv** %4, align 8
  %45 = getelementptr inbounds %struct.SMU73_Discrete_Ulv, %struct.SMU73_Discrete_Ulv* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %46)
  br label %48

48:                                               ; preds = %35, %2
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @CONVERT_FROM_HOST_TO_SMC_UL(i64) #1

declare dso_local i32 @CONVERT_FROM_HOST_TO_SMC_US(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
