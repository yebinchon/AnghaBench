; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_request_voltage_and_program_global_dpp_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_request_voltage_and_program_global_dpp_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { %struct.TYPE_14__, %struct.TYPE_8__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_8__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.pp_smu_funcs_nv }
%struct.pp_smu_funcs_nv = type { i32, i32 (i32*, i32, i32)* }
%struct.clk_mgr_internal = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@PP_SMU_NV_PIXELCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_mgr*, i32)* @request_voltage_and_program_global_dpp_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_voltage_and_program_global_dpp_clk(%struct.clk_mgr* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_mgr_internal*, align 8
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.pp_smu_funcs_nv*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_mgr* %0, %struct.clk_mgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.clk_mgr*, %struct.clk_mgr** %3, align 8
  %10 = call %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr* %9)
  store %struct.clk_mgr_internal* %10, %struct.clk_mgr_internal** %5, align 8
  %11 = load %struct.clk_mgr*, %struct.clk_mgr** %3, align 8
  %12 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.dc*, %struct.dc** %14, align 8
  store %struct.dc* %15, %struct.dc** %6, align 8
  store %struct.pp_smu_funcs_nv* null, %struct.pp_smu_funcs_nv** %7, align 8
  %16 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %17 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ult i32 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.dc*, %struct.dc** %6, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.dc*, %struct.dc** %6, align 8
  %32 = getelementptr inbounds %struct.dc, %struct.dc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store %struct.pp_smu_funcs_nv* %36, %struct.pp_smu_funcs_nv** %7, align 8
  br label %37

37:                                               ; preds = %30, %2
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %40 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %45 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %37
  %51 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %7, align 8
  %52 = icmp ne %struct.pp_smu_funcs_nv* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %7, align 8
  %55 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %54, i32 0, i32 1
  %56 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %55, align 8
  %57 = icmp ne i32 (i32*, i32, i32)* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %7, align 8
  %60 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %59, i32 0, i32 1
  %61 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %60, align 8
  %62 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %7, align 8
  %63 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %62, i32 0, i32 0
  %64 = load i32, i32* @PP_SMU_NV_PIXELCLK, align 4
  %65 = load %struct.clk_mgr*, %struct.clk_mgr** %3, align 8
  %66 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sdiv i32 %68, 1000
  %70 = call i32 %61(i32* %63, i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %58, %53, %50, %37
  %72 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @update_global_dpp_clk(%struct.clk_mgr_internal* %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %71
  %78 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %7, align 8
  %79 = icmp ne %struct.pp_smu_funcs_nv* %78, null
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %7, align 8
  %82 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %81, i32 0, i32 1
  %83 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %82, align 8
  %84 = icmp ne i32 (i32*, i32, i32)* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %7, align 8
  %87 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %86, i32 0, i32 1
  %88 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %87, align 8
  %89 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %7, align 8
  %90 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %89, i32 0, i32 0
  %91 = load i32, i32* @PP_SMU_NV_PIXELCLK, align 4
  %92 = load %struct.clk_mgr*, %struct.clk_mgr** %3, align 8
  %93 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %95, 1000
  %97 = call i32 %88(i32* %90, i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %85, %80, %77, %71
  ret void
}

declare dso_local %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr*) #1

declare dso_local i32 @update_global_dpp_clk(%struct.clk_mgr_internal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
