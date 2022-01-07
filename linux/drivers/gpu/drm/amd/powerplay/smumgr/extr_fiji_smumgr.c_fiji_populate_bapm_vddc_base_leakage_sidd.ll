; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_populate_bapm_vddc_base_leakage_sidd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_populate_bapm_vddc_base_leakage_sidd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.fiji_smumgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.phm_ppt_v1_information = type { %struct.phm_cac_tdp_table* }
%struct.phm_cac_tdp_table = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @fiji_populate_bapm_vddc_base_leakage_sidd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_populate_bapm_vddc_base_leakage_sidd(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.fiji_smumgr*, align 8
  %4 = alloca %struct.phm_ppt_v1_information*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.phm_cac_tdp_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.fiji_smumgr*
  store %struct.fiji_smumgr* %11, %struct.fiji_smumgr** %3, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %15, %struct.phm_ppt_v1_information** %4, align 8
  %16 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %3, align 8
  %17 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %3, align 8
  %21 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %4, align 8
  %25 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %24, i32 0, i32 0
  %26 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %25, align 8
  store %struct.phm_cac_tdp_table* %26, %struct.phm_cac_tdp_table** %7, align 8
  %27 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %7, align 8
  %28 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 100
  %31 = mul nsw i32 %30, 256
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %5, align 8
  %34 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %7, align 8
  %35 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 100
  %38 = mul nsw i32 %37, 256
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @CONVERT_FROM_HOST_TO_SMC_US(i8* %41)
  %43 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %3, align 8
  %44 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @CONVERT_FROM_HOST_TO_SMC_US(i8* %46)
  %48 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %3, align 8
  %49 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  ret i32 0
}

declare dso_local i8* @CONVERT_FROM_HOST_TO_SMC_US(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
