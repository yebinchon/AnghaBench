; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce_clock_read_integrated_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce_clock_read_integrated_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_clk_mgr = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.dc_bios*, %struct.TYPE_10__* }
%struct.dc_bios = type { %struct.integrated_info*, %struct.TYPE_16__* }
%struct.integrated_info = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 (%struct.dc_bios*, %struct.dc_firmware_info*)* }
%struct.dc_firmware_info = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_10__ = type { %struct.dc_debug_options }
%struct.dc_debug_options = type { i32 }

@NUMBER_OF_DISP_CLK_VOLTAGE = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_INVALID = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_ULTRA_LOW = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_LOW = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_NOMINAL = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_PERFORMANCE = common dso_local global i32 0, align 4
@DFS_BYPASS_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_clk_mgr*)* @dce_clock_read_integrated_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_clock_read_integrated_info(%struct.dce_clk_mgr* %0) #0 {
  %2 = alloca %struct.dce_clk_mgr*, align 8
  %3 = alloca %struct.dc_debug_options*, align 8
  %4 = alloca %struct.dc_bios*, align 8
  %5 = alloca %struct.integrated_info, align 8
  %6 = alloca %struct.dc_firmware_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dce_clk_mgr* %0, %struct.dce_clk_mgr** %2, align 8
  %9 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %2, align 8
  %10 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store %struct.dc_debug_options* %15, %struct.dc_debug_options** %3, align 8
  %16 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %2, align 8
  %17 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.dc_bios*, %struct.dc_bios** %20, align 8
  store %struct.dc_bios* %21, %struct.dc_bios** %4, align 8
  %22 = bitcast %struct.integrated_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = bitcast %struct.dc_firmware_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  %24 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %25 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %24, i32 0, i32 0
  %26 = load %struct.integrated_info*, %struct.integrated_info** %25, align 8
  %27 = icmp ne %struct.integrated_info* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %30 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %29, i32 0, i32 0
  %31 = load %struct.integrated_info*, %struct.integrated_info** %30, align 8
  %32 = bitcast %struct.integrated_info* %5 to i8*
  %33 = bitcast %struct.integrated_info* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 24, i1 false)
  br label %34

34:                                               ; preds = %28, %1
  %35 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %2, align 8
  %38 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %2, align 8
  %40 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %34
  %44 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %45 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32 (%struct.dc_bios*, %struct.dc_firmware_info*)*, i32 (%struct.dc_bios*, %struct.dc_firmware_info*)** %47, align 8
  %49 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %50 = call i32 %48(%struct.dc_bios* %49, %struct.dc_firmware_info* %6)
  %51 = getelementptr inbounds %struct.dc_firmware_info, %struct.dc_firmware_info* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %2, align 8
  %54 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %2, align 8
  %56 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %2, align 8
  %61 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %60, i32 0, i32 0
  store i32 3600000, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %43
  br label %63

63:                                               ; preds = %62, %34
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %106, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @NUMBER_OF_DISP_CLK_VOLTAGE, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %109

68:                                               ; preds = %64
  %69 = load i32, i32* @DM_PP_CLOCKS_STATE_INVALID, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %79 [
    i32 0, label %71
    i32 1, label %73
    i32 2, label %75
    i32 3, label %77
  ]

71:                                               ; preds = %68
  %72 = load i32, i32* @DM_PP_CLOCKS_STATE_ULTRA_LOW, align 4
  store i32 %72, i32* %8, align 4
  br label %81

73:                                               ; preds = %68
  %74 = load i32, i32* @DM_PP_CLOCKS_STATE_LOW, align 4
  store i32 %74, i32* %8, align 4
  br label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @DM_PP_CLOCKS_STATE_NOMINAL, align 4
  store i32 %76, i32* %8, align 4
  br label %81

77:                                               ; preds = %68
  %78 = load i32, i32* @DM_PP_CLOCKS_STATE_PERFORMANCE, align 4
  store i32 %78, i32* %8, align 4
  br label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @DM_PP_CLOCKS_STATE_INVALID, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %77, %75, %73, %71
  %82 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %5, i32 0, i32 2
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %88, 100000
  br i1 %89, label %90, label %105

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %5, i32 0, i32 2
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %2, align 8
  %99 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %98, i32 0, i32 2
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  store i32 %97, i32* %104, align 4
  br label %105

105:                                              ; preds = %90, %81
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %64

109:                                              ; preds = %64
  %110 = load %struct.dc_debug_options*, %struct.dc_debug_options** %3, align 8
  %111 = getelementptr inbounds %struct.dc_debug_options, %struct.dc_debug_options* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %109
  %115 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %116 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %115, i32 0, i32 0
  %117 = load %struct.integrated_info*, %struct.integrated_info** %116, align 8
  %118 = icmp ne %struct.integrated_info* %117, null
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %121 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %120, i32 0, i32 0
  %122 = load %struct.integrated_info*, %struct.integrated_info** %121, align 8
  %123 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @DFS_BYPASS_ENABLE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %2, align 8
  %130 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %119
  br label %132

132:                                              ; preds = %131, %114, %109
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
