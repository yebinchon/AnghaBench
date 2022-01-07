; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce120/extr_dce120_clk_mgr.c_dce121_clock_patch_xgmi_ss_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce120/extr_dce120_clk_mgr.c_dce121_clock_patch_xgmi_ss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr_internal = type { i32, i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.dc_bios* }
%struct.dc_bios = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)* }
%struct.spread_spectrum_info = type { i64, %struct.TYPE_9__, i32, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@AS_SIGNAL_TYPE_XGMI = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_mgr_internal*)* @dce121_clock_patch_xgmi_ss_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce121_clock_patch_xgmi_ss_info(%struct.clk_mgr_internal* %0) #0 {
  %2 = alloca %struct.clk_mgr_internal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.spread_spectrum_info, align 8
  %5 = alloca %struct.dc_bios*, align 8
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %2, align 8
  %6 = bitcast %struct.spread_spectrum_info* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %8 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.dc_bios*, %struct.dc_bios** %11, align 8
  store %struct.dc_bios* %12, %struct.dc_bios** %5, align 8
  %13 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %14 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.dc_bios*, %struct.dc_bios** %5, align 8
  %16 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)*, i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)** %18, align 8
  %20 = load %struct.dc_bios*, %struct.dc_bios** %5, align 8
  %21 = load i32, i32* @AS_SIGNAL_TYPE_XGMI, align 4
  %22 = call i32 %19(%struct.dc_bios* %20, i32 %21, i32 0, %struct.spread_spectrum_info* %4)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @BP_RESULT_OK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %4, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %32 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %34 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %4, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %38 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %4, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %4, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %47 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %30
  br label %49

49:                                               ; preds = %48, %26, %1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
