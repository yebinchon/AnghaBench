; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce121_clock_patch_xgmi_ss_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce121_clock_patch_xgmi_ss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { i32 }
%struct.dce_clk_mgr = type { i32, i32, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.dc_bios* }
%struct.dc_bios = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)* }
%struct.spread_spectrum_info = type { i64, %struct.TYPE_10__, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@AS_SIGNAL_TYPE_XGMI = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce121_clock_patch_xgmi_ss_info(%struct.clk_mgr* %0) #0 {
  %2 = alloca %struct.clk_mgr*, align 8
  %3 = alloca %struct.dce_clk_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spread_spectrum_info, align 8
  %6 = alloca %struct.dc_bios*, align 8
  store %struct.clk_mgr* %0, %struct.clk_mgr** %2, align 8
  %7 = load %struct.clk_mgr*, %struct.clk_mgr** %2, align 8
  %8 = call %struct.dce_clk_mgr* @TO_DCE_CLK_MGR(%struct.clk_mgr* %7)
  store %struct.dce_clk_mgr* %8, %struct.dce_clk_mgr** %3, align 8
  %9 = bitcast %struct.spread_spectrum_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %3, align 8
  %11 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.dc_bios*, %struct.dc_bios** %14, align 8
  store %struct.dc_bios* %15, %struct.dc_bios** %6, align 8
  %16 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %3, align 8
  %17 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %19 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)*, i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)** %21, align 8
  %23 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %24 = load i32, i32* @AS_SIGNAL_TYPE_XGMI, align 4
  %25 = call i32 %22(%struct.dc_bios* %23, i32 %24, i32 0, %struct.spread_spectrum_info* %5)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @BP_RESULT_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %3, align 8
  %35 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %3, align 8
  %37 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %3, align 8
  %41 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %3, align 8
  %50 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %33
  br label %52

52:                                               ; preds = %51, %29, %1
  ret void
}

declare dso_local %struct.dce_clk_mgr* @TO_DCE_CLK_MGR(%struct.clk_mgr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
