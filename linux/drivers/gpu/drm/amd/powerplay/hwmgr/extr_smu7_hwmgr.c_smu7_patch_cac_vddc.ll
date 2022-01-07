; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_cac_vddc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_cac_vddc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.phm_cac_leakage_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.smu7_hwmgr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.phm_cac_leakage_table*)* @smu7_patch_cac_vddc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_patch_cac_vddc(%struct.pp_hwmgr* %0, %struct.phm_cac_leakage_table* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.phm_cac_leakage_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.phm_cac_leakage_table* %1, %struct.phm_cac_leakage_table** %4, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %11, %struct.smu7_hwmgr** %7, align 8
  %12 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %4, align 8
  %13 = icmp ne %struct.phm_cac_leakage_table* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %40, %14
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %4, align 8
  %18 = getelementptr inbounds %struct.phm_cac_leakage_table, %struct.phm_cac_leakage_table* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %4, align 8
  %23 = getelementptr inbounds %struct.phm_cac_leakage_table, %struct.phm_cac_leakage_table* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %30 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %31 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %30, i32 0, i32 0
  %32 = call i32 @smu7_patch_ppt_v0_with_vdd_leakage(%struct.pp_hwmgr* %29, i64* %6, i32* %31)
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.phm_cac_leakage_table*, %struct.phm_cac_leakage_table** %4, align 8
  %35 = getelementptr inbounds %struct.phm_cac_leakage_table, %struct.phm_cac_leakage_table* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %33, i64* %39, align 8
  br label %40

40:                                               ; preds = %21
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %15

43:                                               ; preds = %15
  br label %44

44:                                               ; preds = %43, %2
  ret i32 0
}

declare dso_local i32 @smu7_patch_ppt_v0_with_vdd_leakage(%struct.pp_hwmgr*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
