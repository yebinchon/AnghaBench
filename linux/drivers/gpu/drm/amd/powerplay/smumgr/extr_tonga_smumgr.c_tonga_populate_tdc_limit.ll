; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_populate_tdc_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_populate_tdc_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.tonga_smumgr = type { %struct.TYPE_4__, %struct.tonga_pt_defaults* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.tonga_pt_defaults = type { i32, i32 }
%struct.phm_ppt_v1_information = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @tonga_populate_tdc_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_populate_tdc_limit(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tonga_smumgr*, align 8
  %5 = alloca %struct.tonga_pt_defaults*, align 8
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.tonga_smumgr*
  store %struct.tonga_smumgr* %10, %struct.tonga_smumgr** %4, align 8
  %11 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %4, align 8
  %12 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %11, i32 0, i32 1
  %13 = load %struct.tonga_pt_defaults*, %struct.tonga_pt_defaults** %12, align 8
  store %struct.tonga_pt_defaults* %13, %struct.tonga_pt_defaults** %5, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %17, %struct.phm_ppt_v1_information** %6, align 8
  %18 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %19 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 256
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %25)
  %27 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %4, align 8
  %28 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.tonga_pt_defaults*, %struct.tonga_pt_defaults** %5, align 8
  %31 = getelementptr inbounds %struct.tonga_pt_defaults, %struct.tonga_pt_defaults* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %4, align 8
  %34 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.tonga_pt_defaults*, %struct.tonga_pt_defaults** %5, align 8
  %37 = getelementptr inbounds %struct.tonga_pt_defaults, %struct.tonga_pt_defaults* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %4, align 8
  %40 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %39, i32 0, i32 0
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
