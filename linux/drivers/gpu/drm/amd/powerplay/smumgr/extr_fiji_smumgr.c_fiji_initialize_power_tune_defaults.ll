; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_initialize_power_tune_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_initialize_power_tune_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.fiji_smumgr = type { i32* }
%struct.phm_ppt_v1_information = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@POWERTUNE_DEFAULT_SET_MAX = common dso_local global i32 0, align 4
@fiji_power_tune_data_set_array = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @fiji_initialize_power_tune_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiji_initialize_power_tune_defaults(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.fiji_smumgr*, align 8
  %4 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.fiji_smumgr*
  store %struct.fiji_smumgr* %8, %struct.fiji_smumgr** %3, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %12, %struct.phm_ppt_v1_information** %4, align 8
  %13 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %4, align 8
  %14 = icmp ne %struct.phm_ppt_v1_information* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %4, align 8
  %17 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @POWERTUNE_DEFAULT_SET_MAX, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %15
  %24 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %4, align 8
  %25 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load i32*, i32** @fiji_power_tune_data_set_array, align 8
  %32 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %4, align 8
  %33 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %31, i64 %38
  %40 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %3, align 8
  %41 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  br label %47

42:                                               ; preds = %23, %15, %1
  %43 = load i32*, i32** @fiji_power_tune_data_set_array, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %3, align 8
  %46 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %42, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
