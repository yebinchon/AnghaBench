; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_disable_lpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_disable_lpt.c"
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
@LOW_POWER_TILING_ENABLE = common dso_local global i32 0, align 4
@mmGMCON_LPT_TARGET = common dso_local global i32 0, align 4
@GMCON_LPT_TARGET = common dso_local global i32 0, align 4
@STCTRL_LPT_TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce112_compressor_disable_lpt(%struct.compressor* %0) #0 {
  %2 = alloca %struct.compressor*, align 8
  %3 = alloca %struct.dce112_compressor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.compressor* %0, %struct.compressor** %2, align 8
  %7 = load %struct.compressor*, %struct.compressor** %2, align 8
  %8 = call %struct.dce112_compressor* @TO_DCE112_COMPRESSOR(%struct.compressor* %7)
  store %struct.dce112_compressor* %8, %struct.dce112_compressor** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load %struct.compressor*, %struct.compressor** %2, align 8
  %14 = getelementptr inbounds %struct.compressor, %struct.compressor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH, align 4
  %17 = call i32 @DMIF_REG(i32 %16)
  %18 = call i32 @dm_read_reg(i32 %15, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL_NONLPTCH, align 4
  %21 = load i32, i32* @STUTTER_ENABLE_NONLPTCH, align 4
  %22 = call i32 @set_reg_field_value(i32 %19, i32 0, i32 %20, i32 %21)
  %23 = load %struct.compressor*, %struct.compressor** %2, align 8
  %24 = getelementptr inbounds %struct.compressor, %struct.compressor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH, align 4
  %27 = call i32 @DMIF_REG(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dm_write_reg(i32 %25, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %12
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load i32, i32* @mmDPGV0_PIPE_STUTTER_CONTROL_NONLPTCH, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.compressor*, %struct.compressor** %2, align 8
  %36 = getelementptr inbounds %struct.compressor, %struct.compressor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dm_read_reg(i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @DPGV0_PIPE_STUTTER_CONTROL_NONLPTCH, align 4
  %42 = load i32, i32* @STUTTER_ENABLE_NONLPTCH, align 4
  %43 = call i32 @set_reg_field_value(i32 %40, i32 0, i32 %41, i32 %42)
  %44 = load %struct.compressor*, %struct.compressor** %2, align 8
  %45 = getelementptr inbounds %struct.compressor, %struct.compressor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dm_write_reg(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @mmLOW_POWER_TILING_CONTROL, align 4
  store i32 %50, i32* %5, align 4
  %51 = load %struct.compressor*, %struct.compressor** %2, align 8
  %52 = getelementptr inbounds %struct.compressor, %struct.compressor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dm_read_reg(i32 %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @LOW_POWER_TILING_CONTROL, align 4
  %58 = load i32, i32* @LOW_POWER_TILING_ENABLE, align 4
  %59 = call i32 @set_reg_field_value(i32 %56, i32 0, i32 %57, i32 %58)
  %60 = load %struct.compressor*, %struct.compressor** %2, align 8
  %61 = getelementptr inbounds %struct.compressor, %struct.compressor* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @dm_write_reg(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @mmGMCON_LPT_TARGET, align 4
  store i32 %66, i32* %5, align 4
  %67 = load %struct.compressor*, %struct.compressor** %2, align 8
  %68 = getelementptr inbounds %struct.compressor, %struct.compressor* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @dm_read_reg(i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @GMCON_LPT_TARGET, align 4
  %74 = load i32, i32* @STCTRL_LPT_TARGET, align 4
  %75 = call i32 @set_reg_field_value(i32 %72, i32 -1, i32 %73, i32 %74)
  %76 = load %struct.compressor*, %struct.compressor** %2, align 8
  %77 = getelementptr inbounds %struct.compressor, %struct.compressor* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @mmGMCON_LPT_TARGET, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @dm_write_reg(i32 %78, i32 %79, i32 %80)
  ret void
}

declare dso_local %struct.dce112_compressor* @TO_DCE112_COMPRESSOR(%struct.compressor*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @DMIF_REG(i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
