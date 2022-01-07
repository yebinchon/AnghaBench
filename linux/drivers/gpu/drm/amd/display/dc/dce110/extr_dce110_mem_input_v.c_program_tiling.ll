; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_tiling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.dc_tiling_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@UNP_GRPH_CONTROL = common dso_local global i32 0, align 4
@GRPH_NUM_BANKS = common dso_local global i32 0, align 4
@GRPH_BANK_WIDTH_L = common dso_local global i32 0, align 4
@GRPH_BANK_HEIGHT_L = common dso_local global i32 0, align 4
@GRPH_MACRO_TILE_ASPECT_L = common dso_local global i32 0, align 4
@GRPH_TILE_SPLIT_L = common dso_local global i32 0, align 4
@GRPH_MICRO_TILE_MODE_L = common dso_local global i32 0, align 4
@GRPH_PIPE_CONFIG = common dso_local global i32 0, align 4
@GRPH_ARRAY_MODE = common dso_local global i32 0, align 4
@GRPH_COLOR_EXPANSION_MODE = common dso_local global i32 0, align 4
@GRPH_Z = common dso_local global i32 0, align 4
@mmUNP_GRPH_CONTROL = common dso_local global i32 0, align 4
@UNP_GRPH_CONTROL_C = common dso_local global i32 0, align 4
@GRPH_BANK_WIDTH_C = common dso_local global i32 0, align 4
@GRPH_BANK_HEIGHT_C = common dso_local global i32 0, align 4
@GRPH_MACRO_TILE_ASPECT_C = common dso_local global i32 0, align 4
@GRPH_TILE_SPLIT_C = common dso_local global i32 0, align 4
@GRPH_MICRO_TILE_MODE_C = common dso_local global i32 0, align 4
@mmUNP_GRPH_CONTROL_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, %union.dc_tiling_info*, i32)* @program_tiling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_tiling(%struct.dce_mem_input* %0, %union.dc_tiling_info* %1, i32 %2) #0 {
  %4 = alloca %struct.dce_mem_input*, align 8
  %5 = alloca %union.dc_tiling_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %4, align 8
  store %union.dc_tiling_info* %1, %union.dc_tiling_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %10 = bitcast %union.dc_tiling_info* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %14 = load i32, i32* @GRPH_NUM_BANKS, align 4
  %15 = call i32 @set_reg_field_value(i64 %8, i32 %12, i32 %13, i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %18 = bitcast %union.dc_tiling_info* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %22 = load i32, i32* @GRPH_BANK_WIDTH_L, align 4
  %23 = call i32 @set_reg_field_value(i64 %16, i32 %20, i32 %21, i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %26 = bitcast %union.dc_tiling_info* %25 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %30 = load i32, i32* @GRPH_BANK_HEIGHT_L, align 4
  %31 = call i32 @set_reg_field_value(i64 %24, i32 %28, i32 %29, i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %34 = bitcast %union.dc_tiling_info* %33 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %38 = load i32, i32* @GRPH_MACRO_TILE_ASPECT_L, align 4
  %39 = call i32 @set_reg_field_value(i64 %32, i32 %36, i32 %37, i32 %38)
  %40 = load i64, i64* %7, align 8
  %41 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %42 = bitcast %union.dc_tiling_info* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %46 = load i32, i32* @GRPH_TILE_SPLIT_L, align 4
  %47 = call i32 @set_reg_field_value(i64 %40, i32 %44, i32 %45, i32 %46)
  %48 = load i64, i64* %7, align 8
  %49 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %50 = bitcast %union.dc_tiling_info* %49 to %struct.TYPE_3__*
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %54 = load i32, i32* @GRPH_MICRO_TILE_MODE_L, align 4
  %55 = call i32 @set_reg_field_value(i64 %48, i32 %52, i32 %53, i32 %54)
  %56 = load i64, i64* %7, align 8
  %57 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %58 = bitcast %union.dc_tiling_info* %57 to %struct.TYPE_3__*
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %62 = load i32, i32* @GRPH_PIPE_CONFIG, align 4
  %63 = call i32 @set_reg_field_value(i64 %56, i32 %60, i32 %61, i32 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %66 = bitcast %union.dc_tiling_info* %65 to %struct.TYPE_3__*
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %70 = load i32, i32* @GRPH_ARRAY_MODE, align 4
  %71 = call i32 @set_reg_field_value(i64 %64, i32 %68, i32 %69, i32 %70)
  %72 = load i64, i64* %7, align 8
  %73 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %74 = load i32, i32* @GRPH_COLOR_EXPANSION_MODE, align 4
  %75 = call i32 @set_reg_field_value(i64 %72, i32 1, i32 %73, i32 %74)
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %78 = load i32, i32* @GRPH_Z, align 4
  %79 = call i32 @set_reg_field_value(i64 %76, i32 0, i32 %77, i32 %78)
  %80 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %81 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @mmUNP_GRPH_CONTROL, align 4
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @dm_write_reg(i32 %83, i32 %84, i64 %85)
  store i64 0, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %89 = bitcast %union.dc_tiling_info* %88 to %struct.TYPE_3__*
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UNP_GRPH_CONTROL_C, align 4
  %93 = load i32, i32* @GRPH_BANK_WIDTH_C, align 4
  %94 = call i32 @set_reg_field_value(i64 %87, i32 %91, i32 %92, i32 %93)
  %95 = load i64, i64* %7, align 8
  %96 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %97 = bitcast %union.dc_tiling_info* %96 to %struct.TYPE_3__*
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @UNP_GRPH_CONTROL_C, align 4
  %101 = load i32, i32* @GRPH_BANK_HEIGHT_C, align 4
  %102 = call i32 @set_reg_field_value(i64 %95, i32 %99, i32 %100, i32 %101)
  %103 = load i64, i64* %7, align 8
  %104 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %105 = bitcast %union.dc_tiling_info* %104 to %struct.TYPE_3__*
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @UNP_GRPH_CONTROL_C, align 4
  %109 = load i32, i32* @GRPH_MACRO_TILE_ASPECT_C, align 4
  %110 = call i32 @set_reg_field_value(i64 %103, i32 %107, i32 %108, i32 %109)
  %111 = load i64, i64* %7, align 8
  %112 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %113 = bitcast %union.dc_tiling_info* %112 to %struct.TYPE_3__*
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @UNP_GRPH_CONTROL_C, align 4
  %117 = load i32, i32* @GRPH_TILE_SPLIT_C, align 4
  %118 = call i32 @set_reg_field_value(i64 %111, i32 %115, i32 %116, i32 %117)
  %119 = load i64, i64* %7, align 8
  %120 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %121 = bitcast %union.dc_tiling_info* %120 to %struct.TYPE_3__*
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 12
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @UNP_GRPH_CONTROL_C, align 4
  %125 = load i32, i32* @GRPH_MICRO_TILE_MODE_C, align 4
  %126 = call i32 @set_reg_field_value(i64 %119, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %128 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @mmUNP_GRPH_CONTROL_C, align 4
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @dm_write_reg(i32 %130, i32 %131, i64 %132)
  ret void
}

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
