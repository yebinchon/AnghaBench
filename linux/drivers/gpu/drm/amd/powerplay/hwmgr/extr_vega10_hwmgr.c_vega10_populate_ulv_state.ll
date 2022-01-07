; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_ulv_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_ulv_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.phm_ppt_v2_information = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_populate_ulv_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_populate_ulv_state(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca %struct.phm_ppt_v2_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 1
  %7 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %6, align 8
  store %struct.vega10_hwmgr* %7, %struct.vega10_hwmgr** %3, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %11, %struct.phm_ppt_v2_information** %4, align 8
  %12 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %4, align 8
  %13 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  store i8* %15, i8** %19, align 8
  %20 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %4, align 8
  %21 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i8* %23, i8** %27, align 8
  %28 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %4, align 8
  %29 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i8* %31, i8** %35, align 8
  %36 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %4, align 8
  %37 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %41 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i8* %39, i8** %43, align 8
  %44 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %45 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %50 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* %48, i8** %52, align 8
  %53 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %54 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %59 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i8* %57, i8** %61, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
