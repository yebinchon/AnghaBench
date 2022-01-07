; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_urgency_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_urgency_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dce_watermarks = type { i32, i32 }

@DPGV0_WATERMARK_MASK_CONTROL = common dso_local global i32 0, align 4
@URGENCY_WATERMARK_MASK = common dso_local global i32 0, align 4
@DPGV0_PIPE_URGENCY_CONTROL = common dso_local global i32 0, align 4
@URGENCY_LOW_WATERMARK = common dso_local global i32 0, align 4
@URGENCY_HIGH_WATERMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_context*, i32, i32, i64, i32)* @program_urgency_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_urgency_watermark(%struct.dc_context* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.dce_watermarks, align 4
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = bitcast %struct.dce_watermarks* %6 to i64*
  store i64 %3, i64* %13, align 4
  store %struct.dc_context* %0, %struct.dc_context** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @dm_read_reg(%struct.dc_context* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @DPGV0_WATERMARK_MASK_CONTROL, align 4
  %19 = load i32, i32* @URGENCY_WATERMARK_MASK, align 4
  %20 = call i32 @set_reg_field_value(i32 %17, i32 1, i32 %18, i32 %19)
  %21 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @dm_write_reg(%struct.dc_context* %21, i32 %22, i32 %23)
  %25 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dm_read_reg(%struct.dc_context* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DPGV0_PIPE_URGENCY_CONTROL, align 4
  %32 = load i32, i32* @URGENCY_LOW_WATERMARK, align 4
  %33 = call i32 @set_reg_field_value(i32 %28, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @DPGV0_PIPE_URGENCY_CONTROL, align 4
  %37 = load i32, i32* @URGENCY_HIGH_WATERMARK, align 4
  %38 = call i32 @set_reg_field_value(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @dm_write_reg(%struct.dc_context* %39, i32 %40, i32 %41)
  %43 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dm_read_reg(%struct.dc_context* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @DPGV0_WATERMARK_MASK_CONTROL, align 4
  %48 = load i32, i32* @URGENCY_WATERMARK_MASK, align 4
  %49 = call i32 @set_reg_field_value(i32 %46, i32 2, i32 %47, i32 %48)
  %50 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @dm_write_reg(%struct.dc_context* %50, i32 %51, i32 %52)
  %54 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dm_read_reg(%struct.dc_context* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DPGV0_PIPE_URGENCY_CONTROL, align 4
  %61 = load i32, i32* @URGENCY_LOW_WATERMARK, align 4
  %62 = call i32 @set_reg_field_value(i32 %57, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @DPGV0_PIPE_URGENCY_CONTROL, align 4
  %66 = load i32, i32* @URGENCY_HIGH_WATERMARK, align 4
  %67 = call i32 @set_reg_field_value(i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @dm_write_reg(%struct.dc_context* %68, i32 %69, i32 %70)
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
