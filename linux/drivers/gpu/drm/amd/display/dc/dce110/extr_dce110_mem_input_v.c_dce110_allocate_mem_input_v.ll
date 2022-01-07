; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce110_allocate_mem_input_v.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce110_allocate_mem_input_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { i32 }

@mmDPGV0_PIPE_ARBITRATION_CONTROL1 = common dso_local global i64 0, align 8
@DPGV0_PIPE_ARBITRATION_CONTROL1 = common dso_local global i32 0, align 4
@PIXEL_DURATION = common dso_local global i32 0, align 4
@mmDPGV1_PIPE_ARBITRATION_CONTROL1 = common dso_local global i64 0, align 8
@DPGV1_PIPE_ARBITRATION_CONTROL1 = common dso_local global i32 0, align 4
@mmDPGV0_PIPE_ARBITRATION_CONTROL2 = common dso_local global i64 0, align 8
@mmDPGV1_PIPE_ARBITRATION_CONTROL2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_allocate_mem_input_v(%struct.mem_input* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mem_input*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.mem_input* %0, %struct.mem_input** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %5
  %17 = load i64, i64* @mmDPGV0_PIPE_ARBITRATION_CONTROL1, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.mem_input*, %struct.mem_input** %6, align 8
  %19 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %11, align 8
  %22 = call i64 @dm_read_reg(i32 %20, i64 %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %9, align 8
  %24 = udiv i64 1000000000, %23
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i32, i32* @DPGV0_PIPE_ARBITRATION_CONTROL1, align 4
  %28 = load i32, i32* @PIXEL_DURATION, align 4
  %29 = call i32 @set_reg_field_value(i64 %25, i64 %26, i32 %27, i32 %28)
  %30 = load %struct.mem_input*, %struct.mem_input** %6, align 8
  %31 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @dm_write_reg(i32 %32, i64 %33, i64 %34)
  %36 = load i64, i64* @mmDPGV1_PIPE_ARBITRATION_CONTROL1, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.mem_input*, %struct.mem_input** %6, align 8
  %38 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @dm_read_reg(i32 %39, i64 %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %9, align 8
  %43 = udiv i64 1000000000, %42
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i32, i32* @DPGV1_PIPE_ARBITRATION_CONTROL1, align 4
  %47 = load i32, i32* @PIXEL_DURATION, align 4
  %48 = call i32 @set_reg_field_value(i64 %44, i64 %45, i32 %46, i32 %47)
  %49 = load %struct.mem_input*, %struct.mem_input** %6, align 8
  %50 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @dm_write_reg(i32 %51, i64 %52, i64 %53)
  %55 = load i64, i64* @mmDPGV0_PIPE_ARBITRATION_CONTROL2, align 8
  store i64 %55, i64* %11, align 8
  store i64 67110912, i64* %12, align 8
  %56 = load %struct.mem_input*, %struct.mem_input** %6, align 8
  %57 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @dm_write_reg(i32 %58, i64 %59, i64 %60)
  %62 = load i64, i64* @mmDPGV1_PIPE_ARBITRATION_CONTROL2, align 8
  store i64 %62, i64* %11, align 8
  store i64 67110912, i64* %12, align 8
  %63 = load %struct.mem_input*, %struct.mem_input** %6, align 8
  %64 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @dm_write_reg(i32 %65, i64 %66, i64 %67)
  br label %69

69:                                               ; preds = %16, %5
  ret void
}

declare dso_local i64 @dm_read_reg(i32, i64) #1

declare dso_local i32 @set_reg_field_value(i64, i64, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
