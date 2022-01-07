; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_enable_lpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_enable_lpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32 }
%struct.dce112_compressor = type { i32 }

@mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH = common dso_local global i32 0, align 4
@DPG_PIPE_STUTTER_CONTROL_NONLPTCH = common dso_local global i32 0, align 4
@STUTTER_ENABLE_NONLPTCH = common dso_local global i32 0, align 4
@mmDPGV0_PIPE_STUTTER_CONTROL_NONLPTCH = common dso_local global i32 0, align 4
@DPGV0_PIPE_STUTTER_CONTROL_NONLPTCH = common dso_local global i32 0, align 4
@mmLOW_POWER_TILING_CONTROL = common dso_local global i32 0, align 4
@LOW_POWER_TILING_CONTROL = common dso_local global i32 0, align 4
@LOW_POWER_TILING_MODE = common dso_local global i32 0, align 4
@mmGMCON_LPT_TARGET = common dso_local global i32 0, align 4
@GMCON_LPT_TARGET = common dso_local global i32 0, align 4
@STCTRL_LPT_TARGET = common dso_local global i32 0, align 4
@LOW_POWER_TILING_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce112_compressor_enable_lpt(%struct.compressor* %0) #0 {
  %2 = alloca %struct.compressor*, align 8
  %3 = alloca %struct.dce112_compressor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.compressor* %0, %struct.compressor** %2, align 8
  %8 = load %struct.compressor*, %struct.compressor** %2, align 8
  %9 = call %struct.dce112_compressor* @TO_DCE112_COMPRESSOR(%struct.compressor* %8)
  store %struct.dce112_compressor* %9, %struct.dce112_compressor** %3, align 8
  %10 = load %struct.compressor*, %struct.compressor** %2, align 8
  %11 = getelementptr inbounds %struct.compressor, %struct.compressor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH, align 4
  %14 = call i32 @DMIF_REG(i32 %13)
  %15 = call i32 @dm_read_reg(i32 %12, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL_NONLPTCH, align 4
  %18 = load i32, i32* @STUTTER_ENABLE_NONLPTCH, align 4
  %19 = call i32 @set_reg_field_value(i32 %16, i32 1, i32 %17, i32 %18)
  %20 = load %struct.compressor*, %struct.compressor** %2, align 8
  %21 = getelementptr inbounds %struct.compressor, %struct.compressor* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH, align 4
  %24 = call i32 @DMIF_REG(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dm_write_reg(i32 %22, i32 %24, i32 %25)
  %27 = load i32, i32* @mmDPGV0_PIPE_STUTTER_CONTROL_NONLPTCH, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.compressor*, %struct.compressor** %2, align 8
  %29 = getelementptr inbounds %struct.compressor, %struct.compressor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dm_read_reg(i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @DPGV0_PIPE_STUTTER_CONTROL_NONLPTCH, align 4
  %35 = load i32, i32* @STUTTER_ENABLE_NONLPTCH, align 4
  %36 = call i32 @set_reg_field_value(i32 %33, i32 1, i32 %34, i32 %35)
  %37 = load %struct.compressor*, %struct.compressor** %2, align 8
  %38 = getelementptr inbounds %struct.compressor, %struct.compressor* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dm_write_reg(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @mmLOW_POWER_TILING_CONTROL, align 4
  store i32 %43, i32* %5, align 4
  %44 = load %struct.compressor*, %struct.compressor** %2, align 8
  %45 = getelementptr inbounds %struct.compressor, %struct.compressor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dm_read_reg(i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @LOW_POWER_TILING_CONTROL, align 4
  %51 = load i32, i32* @LOW_POWER_TILING_MODE, align 4
  %52 = call i32 @get_reg_field_value(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @mmGMCON_LPT_TARGET, align 4
  store i32 %53, i32* %5, align 4
  %54 = load %struct.compressor*, %struct.compressor** %2, align 8
  %55 = getelementptr inbounds %struct.compressor, %struct.compressor* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dm_read_reg(i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* @GMCON_LPT_TARGET, align 4
  %63 = load i32, i32* @STCTRL_LPT_TARGET, align 4
  %64 = call i32 @set_reg_field_value(i32 %59, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.compressor*, %struct.compressor** %2, align 8
  %66 = getelementptr inbounds %struct.compressor, %struct.compressor* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @dm_write_reg(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @mmLOW_POWER_TILING_CONTROL, align 4
  store i32 %71, i32* %5, align 4
  %72 = load %struct.compressor*, %struct.compressor** %2, align 8
  %73 = getelementptr inbounds %struct.compressor, %struct.compressor* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @dm_read_reg(i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @LOW_POWER_TILING_CONTROL, align 4
  %79 = load i32, i32* @LOW_POWER_TILING_ENABLE, align 4
  %80 = call i32 @set_reg_field_value(i32 %77, i32 1, i32 %78, i32 %79)
  %81 = load %struct.compressor*, %struct.compressor** %2, align 8
  %82 = getelementptr inbounds %struct.compressor, %struct.compressor* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @dm_write_reg(i32 %83, i32 %84, i32 %85)
  ret void
}

declare dso_local %struct.dce112_compressor* @TO_DCE112_COMPRESSOR(%struct.compressor*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @DMIF_REG(i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

declare dso_local i32 @get_reg_field_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
