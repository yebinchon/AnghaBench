; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_program_tiling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_program_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%union.dc_tiling_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@GRPH_CONTROL = common dso_local global i32 0, align 4
@GRPH_SW_MODE = common dso_local global i32 0, align 4
@GRPH_NUM_BANKS = common dso_local global i32 0, align 4
@GRPH_NUM_SHADER_ENGINES = common dso_local global i32 0, align 4
@GRPH_NUM_PIPES = common dso_local global i32 0, align 4
@GRPH_COLOR_EXPANSION_MODE = common dso_local global i32 0, align 4
@GRPH_SE_ENABLE = common dso_local global i32 0, align 4
@GRPH_BANK_WIDTH = common dso_local global i32 0, align 4
@GRPH_BANK_HEIGHT = common dso_local global i32 0, align 4
@GRPH_MACRO_TILE_ASPECT = common dso_local global i32 0, align 4
@GRPH_TILE_SPLIT = common dso_local global i32 0, align 4
@GRPH_MICRO_TILE_MODE = common dso_local global i32 0, align 4
@GRPH_PIPE_CONFIG = common dso_local global i32 0, align 4
@GRPH_ARRAY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, %union.dc_tiling_info*)* @program_tiling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_tiling(%struct.dce_mem_input* %0, %union.dc_tiling_info* %1) #0 {
  %3 = alloca %struct.dce_mem_input*, align 8
  %4 = alloca %union.dc_tiling_info*, align 8
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %3, align 8
  store %union.dc_tiling_info* %1, %union.dc_tiling_info** %4, align 8
  %5 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %6 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = load i32, i32* @GRPH_CONTROL, align 4
  %13 = load i32, i32* @GRPH_SW_MODE, align 4
  %14 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %15 = bitcast %union.dc_tiling_info* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GRPH_NUM_BANKS, align 4
  %19 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %20 = bitcast %union.dc_tiling_info* %19 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @log_2(i32 %22)
  %24 = load i32, i32* @GRPH_NUM_SHADER_ENGINES, align 4
  %25 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %26 = bitcast %union.dc_tiling_info* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @log_2(i32 %28)
  %30 = load i32, i32* @GRPH_NUM_PIPES, align 4
  %31 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %32 = bitcast %union.dc_tiling_info* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @log_2(i32 %34)
  %36 = load i32, i32* @GRPH_COLOR_EXPANSION_MODE, align 4
  %37 = load i32, i32* @GRPH_SE_ENABLE, align 4
  %38 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %39 = bitcast %union.dc_tiling_info* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @REG_UPDATE_6(i32 %12, i32 %13, i32 %17, i32 %18, i32 %23, i32 %24, i32 %29, i32 %30, i32 %35, i32 %36, i32 1, i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %11, %2
  %44 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %45 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %94

50:                                               ; preds = %43
  %51 = load i32, i32* @GRPH_CONTROL, align 4
  %52 = load i32, i32* @GRPH_NUM_BANKS, align 4
  %53 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %54 = bitcast %union.dc_tiling_info* %53 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GRPH_BANK_WIDTH, align 4
  %58 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %59 = bitcast %union.dc_tiling_info* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GRPH_BANK_HEIGHT, align 4
  %63 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %64 = bitcast %union.dc_tiling_info* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @GRPH_MACRO_TILE_ASPECT, align 4
  %68 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %69 = bitcast %union.dc_tiling_info* %68 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @GRPH_TILE_SPLIT, align 4
  %73 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %74 = bitcast %union.dc_tiling_info* %73 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @GRPH_MICRO_TILE_MODE, align 4
  %78 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %79 = bitcast %union.dc_tiling_info* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @GRPH_PIPE_CONFIG, align 4
  %83 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %84 = bitcast %union.dc_tiling_info* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @GRPH_ARRAY_MODE, align 4
  %88 = load %union.dc_tiling_info*, %union.dc_tiling_info** %4, align 8
  %89 = bitcast %union.dc_tiling_info* %88 to %struct.TYPE_6__*
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @GRPH_COLOR_EXPANSION_MODE, align 4
  %93 = call i32 @REG_UPDATE_9(i32 %51, i32 %52, i32 %56, i32 %57, i32 %61, i32 %62, i32 %66, i32 %67, i32 %71, i32 %72, i32 %76, i32 %77, i32 %81, i32 %82, i32 %86, i32 %87, i32 %91, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %50, %43
  ret void
}

declare dso_local i32 @REG_UPDATE_6(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_2(i32) #1

declare dso_local i32 @REG_UPDATE_9(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
