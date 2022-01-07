; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_populate_tdc_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_populate_tdc_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.fiji_smumgr = type { %struct.TYPE_4__, %struct.fiji_pt_defaults* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.fiji_pt_defaults = type { i32, i32 }
%struct.phm_ppt_v1_information = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @fiji_populate_tdc_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_populate_tdc_limit(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fiji_smumgr*, align 8
  %5 = alloca %struct.phm_ppt_v1_information*, align 8
  %6 = alloca %struct.fiji_pt_defaults*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.fiji_smumgr*
  store %struct.fiji_smumgr* %10, %struct.fiji_smumgr** %4, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %14, %struct.phm_ppt_v1_information** %5, align 8
  %15 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %16 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %15, i32 0, i32 1
  %17 = load %struct.fiji_pt_defaults*, %struct.fiji_pt_defaults** %16, align 8
  store %struct.fiji_pt_defaults* %17, %struct.fiji_pt_defaults** %6, align 8
  %18 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %5, align 8
  %19 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 128
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %25)
  %27 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %28 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.fiji_pt_defaults*, %struct.fiji_pt_defaults** %6, align 8
  %31 = getelementptr inbounds %struct.fiji_pt_defaults, %struct.fiji_pt_defaults* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %34 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.fiji_pt_defaults*, %struct.fiji_pt_defaults** %6, align 8
  %37 = getelementptr inbounds %struct.fiji_pt_defaults, %struct.fiji_pt_defaults* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %40 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  ret i32 0
}

declare dso_local i32 @CONVERT_FROM_HOST_TO_SMC_US(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
