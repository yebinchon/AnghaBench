; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_compressor.c_dce110_compressor_enable_fbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_compressor.c_dce110_compressor_enable_fbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.compr_addr_and_pitch_params = type { i32 }
%struct.dce110_compressor = type { i32 }

@mmFBC_CNTL = common dso_local global i32 0, align 4
@FBC_CNTL = common dso_local global i32 0, align 4
@FBC_GRPH_COMP_EN = common dso_local global i32 0, align 4
@FBC_SRC_SEL = common dso_local global i32 0, align 4
@CONTROLLER_ID_D0 = common dso_local global i64 0, align 8
@mmFBC_MISC = common dso_local global i32 0, align 4
@FBC_MISC = common dso_local global i32 0, align 4
@FBC_INVALIDATE_ON_ERROR = common dso_local global i32 0, align 4
@FBC_DECOMPRESS_ERROR_CLEAR = common dso_local global i32 0, align 4
@FBC_SLOW_REQ_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_compressor_enable_fbc(%struct.compressor* %0, %struct.compr_addr_and_pitch_params* %1) #0 {
  %3 = alloca %struct.compressor*, align 8
  %4 = alloca %struct.compr_addr_and_pitch_params*, align 8
  %5 = alloca %struct.dce110_compressor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.compressor* %0, %struct.compressor** %3, align 8
  store %struct.compr_addr_and_pitch_params* %1, %struct.compr_addr_and_pitch_params** %4, align 8
  %9 = load %struct.compressor*, %struct.compressor** %3, align 8
  %10 = call %struct.dce110_compressor* @TO_DCE110_COMPRESSOR(%struct.compressor* %9)
  store %struct.dce110_compressor* %10, %struct.dce110_compressor** %5, align 8
  %11 = load %struct.compressor*, %struct.compressor** %3, align 8
  %12 = getelementptr inbounds %struct.compressor, %struct.compressor* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %100

17:                                               ; preds = %2
  %18 = load %struct.compressor*, %struct.compressor** %3, align 8
  %19 = call i32 @dce110_compressor_is_fbc_enabled_in_hw(%struct.compressor* %18, i32* null)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %100, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @mmFBC_CNTL, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.compressor*, %struct.compressor** %3, align 8
  %24 = getelementptr inbounds %struct.compressor, %struct.compressor* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dm_read_reg(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @FBC_CNTL, align 4
  %30 = load i32, i32* @FBC_GRPH_COMP_EN, align 4
  %31 = call i32 @set_reg_field_value(i32 %28, i32 1, i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.compr_addr_and_pitch_params*, %struct.compr_addr_and_pitch_params** %4, align 8
  %34 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FBC_CNTL, align 4
  %37 = load i32, i32* @FBC_SRC_SEL, align 4
  %38 = call i32 @set_reg_field_value(i32 %32, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.compressor*, %struct.compressor** %3, align 8
  %40 = getelementptr inbounds %struct.compressor, %struct.compressor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dm_write_reg(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.compressor*, %struct.compressor** %3, align 8
  %46 = getelementptr inbounds %struct.compressor, %struct.compressor* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.compr_addr_and_pitch_params*, %struct.compr_addr_and_pitch_params** %4, align 8
  %48 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @CONTROLLER_ID_D0, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.compressor*, %struct.compressor** %3, align 8
  %54 = getelementptr inbounds %struct.compressor, %struct.compressor* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @FBC_CNTL, align 4
  %57 = load i32, i32* @FBC_GRPH_COMP_EN, align 4
  %58 = call i32 @set_reg_field_value(i32 %55, i32 0, i32 %56, i32 %57)
  %59 = load %struct.compressor*, %struct.compressor** %3, align 8
  %60 = getelementptr inbounds %struct.compressor, %struct.compressor* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dm_write_reg(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.compressor*, %struct.compressor** %3, align 8
  %66 = getelementptr inbounds %struct.compressor, %struct.compressor* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @mmFBC_MISC, align 4
  %69 = call i32 @dm_read_reg(i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @FBC_MISC, align 4
  %72 = load i32, i32* @FBC_INVALIDATE_ON_ERROR, align 4
  %73 = call i32 @set_reg_field_value(i32 %70, i32 1, i32 %71, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @FBC_MISC, align 4
  %76 = load i32, i32* @FBC_DECOMPRESS_ERROR_CLEAR, align 4
  %77 = call i32 @set_reg_field_value(i32 %74, i32 1, i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @FBC_MISC, align 4
  %80 = load i32, i32* @FBC_SLOW_REQ_INTERVAL, align 4
  %81 = call i32 @set_reg_field_value(i32 %78, i32 20, i32 %79, i32 %80)
  %82 = load %struct.compressor*, %struct.compressor** %3, align 8
  %83 = getelementptr inbounds %struct.compressor, %struct.compressor* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @mmFBC_MISC, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @dm_write_reg(i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @FBC_CNTL, align 4
  %90 = load i32, i32* @FBC_GRPH_COMP_EN, align 4
  %91 = call i32 @set_reg_field_value(i32 %88, i32 1, i32 %89, i32 %90)
  %92 = load %struct.compressor*, %struct.compressor** %3, align 8
  %93 = getelementptr inbounds %struct.compressor, %struct.compressor* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @dm_write_reg(i32 %94, i32 %95, i32 %96)
  %98 = load %struct.dce110_compressor*, %struct.dce110_compressor** %5, align 8
  %99 = call i32 @wait_for_fbc_state_changed(%struct.dce110_compressor* %98, i32 1)
  br label %100

100:                                              ; preds = %21, %17, %2
  ret void
}

declare dso_local %struct.dce110_compressor* @TO_DCE110_COMPRESSOR(%struct.compressor*) #1

declare dso_local i32 @dce110_compressor_is_fbc_enabled_in_hw(%struct.compressor*, i32*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

declare dso_local i32 @wait_for_fbc_state_changed(%struct.dce110_compressor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
