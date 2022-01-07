; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_nbp_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_nbp_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dce_watermarks = type { i32, i32 }

@DPGV0_WATERMARK_MASK_CONTROL = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_WATERMARK_MASK = common dso_local global i32 0, align 4
@DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_ENABLE = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_URGENT_DURING_REQUEST = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_WATERMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_context*, i32, i32, i64)* @program_nbp_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_nbp_watermark(%struct.dc_context* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.dce_watermarks, align 4
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.dce_watermarks* %5 to i64*
  store i64 %3, i64* %10, align 4
  store %struct.dc_context* %0, %struct.dc_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  %11 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @dm_read_reg(%struct.dc_context* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @DPGV0_WATERMARK_MASK_CONTROL, align 4
  %16 = load i32, i32* @NB_PSTATE_CHANGE_WATERMARK_MASK, align 4
  %17 = call i32 @set_reg_field_value(i32 %14, i32 1, i32 %15, i32 %16)
  %18 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @dm_write_reg(%struct.dc_context* %18, i32 %19, i32 %20)
  %22 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dm_read_reg(%struct.dc_context* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  %27 = load i32, i32* @NB_PSTATE_CHANGE_ENABLE, align 4
  %28 = call i32 @set_reg_field_value(i32 %25, i32 1, i32 %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  %31 = load i32, i32* @NB_PSTATE_CHANGE_URGENT_DURING_REQUEST, align 4
  %32 = call i32 @set_reg_field_value(i32 %29, i32 1, i32 %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  %35 = load i32, i32* @NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST, align 4
  %36 = call i32 @set_reg_field_value(i32 %33, i32 1, i32 %34, i32 %35)
  %37 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dm_write_reg(%struct.dc_context* %37, i32 %38, i32 %39)
  %41 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dm_read_reg(%struct.dc_context* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  %48 = load i32, i32* @NB_PSTATE_CHANGE_WATERMARK, align 4
  %49 = call i32 @set_reg_field_value(i32 %44, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @dm_write_reg(%struct.dc_context* %50, i32 %51, i32 %52)
  %54 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dm_read_reg(%struct.dc_context* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @DPGV0_WATERMARK_MASK_CONTROL, align 4
  %59 = load i32, i32* @NB_PSTATE_CHANGE_WATERMARK_MASK, align 4
  %60 = call i32 @set_reg_field_value(i32 %57, i32 2, i32 %58, i32 %59)
  %61 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dm_write_reg(%struct.dc_context* %61, i32 %62, i32 %63)
  %65 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dm_read_reg(%struct.dc_context* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  %70 = load i32, i32* @NB_PSTATE_CHANGE_ENABLE, align 4
  %71 = call i32 @set_reg_field_value(i32 %68, i32 1, i32 %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  %74 = load i32, i32* @NB_PSTATE_CHANGE_URGENT_DURING_REQUEST, align 4
  %75 = call i32 @set_reg_field_value(i32 %72, i32 1, i32 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  %78 = load i32, i32* @NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST, align 4
  %79 = call i32 @set_reg_field_value(i32 %76, i32 1, i32 %77, i32 %78)
  %80 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @dm_write_reg(%struct.dc_context* %80, i32 %81, i32 %82)
  %84 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @dm_read_reg(%struct.dc_context* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %5, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  %91 = load i32, i32* @NB_PSTATE_CHANGE_WATERMARK, align 4
  %92 = call i32 @set_reg_field_value(i32 %87, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @dm_write_reg(%struct.dc_context* %93, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @dm_read_reg(%struct.dc_context*, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
