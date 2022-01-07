; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_populate_bapm_vddc_base_leakage_sidd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_populate_bapm_vddc_base_leakage_sidd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { %struct.phm_cac_tdp_table* }
%struct.phm_cac_tdp_table = type { i32, i32 }
%struct.ci_smumgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @ci_populate_bapm_vddc_base_leakage_sidd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_bapm_vddc_base_leakage_sidd(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.ci_smumgr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.phm_cac_tdp_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ci_smumgr*
  store %struct.ci_smumgr* %10, %struct.ci_smumgr** %3, align 8
  %11 = load %struct.ci_smumgr*, %struct.ci_smumgr** %3, align 8
  %12 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load %struct.ci_smumgr*, %struct.ci_smumgr** %3, align 8
  %16 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %21, align 8
  store %struct.phm_cac_tdp_table* %22, %struct.phm_cac_tdp_table** %6, align 8
  %23 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %6, align 8
  %24 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 100
  %27 = mul nsw i32 %26, 256
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %4, align 8
  %30 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %6, align 8
  %31 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 100
  %34 = mul nsw i32 %33, 256
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @CONVERT_FROM_HOST_TO_SMC_US(i8* %37)
  %39 = load %struct.ci_smumgr*, %struct.ci_smumgr** %3, align 8
  %40 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @CONVERT_FROM_HOST_TO_SMC_US(i8* %42)
  %44 = load %struct.ci_smumgr*, %struct.ci_smumgr** %3, align 8
  %45 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  ret i32 0
}

declare dso_local i8* @CONVERT_FROM_HOST_TO_SMC_US(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
