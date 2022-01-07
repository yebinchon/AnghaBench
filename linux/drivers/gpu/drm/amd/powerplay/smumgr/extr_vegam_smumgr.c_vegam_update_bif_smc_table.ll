; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_update_bif_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_update_bif_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.vegam_smumgr = type { i32* }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_pcie_table* }
%struct.phm_ppt_v1_pcie_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SMU75_MAX_LEVELS_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vegam_update_bif_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vegam_update_bif_smc_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vegam_smumgr*, align 8
  %4 = alloca %struct.phm_ppt_v1_information*, align 8
  %5 = alloca %struct.phm_ppt_v1_pcie_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.vegam_smumgr*
  store %struct.vegam_smumgr* %11, %struct.vegam_smumgr** %3, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %15, %struct.phm_ppt_v1_information** %4, align 8
  %16 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %4, align 8
  %17 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %16, i32 0, i32 0
  %18 = load %struct.phm_ppt_v1_pcie_table*, %struct.phm_ppt_v1_pcie_table** %17, align 8
  store %struct.phm_ppt_v1_pcie_table* %18, %struct.phm_ppt_v1_pcie_table** %5, align 8
  %19 = load i32, i32* @SMU75_MAX_LEVELS_LINK, align 4
  %20 = load %struct.phm_ppt_v1_pcie_table*, %struct.phm_ppt_v1_pcie_table** %5, align 8
  %21 = getelementptr inbounds %struct.phm_ppt_v1_pcie_table, %struct.phm_ppt_v1_pcie_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @SMU75_MAX_LEVELS_LINK, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.phm_ppt_v1_pcie_table*, %struct.phm_ppt_v1_pcie_table** %5, align 8
  %28 = getelementptr inbounds %struct.phm_ppt_v1_pcie_table, %struct.phm_ppt_v1_pcie_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  store i32 %31, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %51, %30
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.phm_ppt_v1_pcie_table*, %struct.phm_ppt_v1_pcie_table** %5, align 8
  %38 = getelementptr inbounds %struct.phm_ppt_v1_pcie_table, %struct.phm_ppt_v1_pcie_table* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %3, align 8
  %46 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %32

54:                                               ; preds = %32
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
