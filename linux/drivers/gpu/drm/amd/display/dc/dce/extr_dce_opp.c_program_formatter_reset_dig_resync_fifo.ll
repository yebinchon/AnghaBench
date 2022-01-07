; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_program_formatter_reset_dig_resync_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_program_formatter_reset_dig_resync_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }
%struct.dce110_opp = type { i32 }

@FMT_CONTROL = common dso_local global i32 0, align 4
@FMT_420_PIXEL_PHASE_LOCKED_CLEAR = common dso_local global i32 0, align 4
@FMT_420_PIXEL_PHASE_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.output_pixel_processor*)* @program_formatter_reset_dig_resync_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_formatter_reset_dig_resync_fifo(%struct.output_pixel_processor* %0) #0 {
  %2 = alloca %struct.output_pixel_processor*, align 8
  %3 = alloca %struct.dce110_opp*, align 8
  store %struct.output_pixel_processor* %0, %struct.output_pixel_processor** %2, align 8
  %4 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %2, align 8
  %5 = call %struct.dce110_opp* @TO_DCE110_OPP(%struct.output_pixel_processor* %4)
  store %struct.dce110_opp* %5, %struct.dce110_opp** %3, align 8
  %6 = load i32, i32* @FMT_CONTROL, align 4
  %7 = load i32, i32* @FMT_420_PIXEL_PHASE_LOCKED_CLEAR, align 4
  %8 = call i32 @REG_UPDATE(i32 %6, i32 %7, i32 1)
  %9 = load i32, i32* @FMT_CONTROL, align 4
  %10 = load i32, i32* @FMT_420_PIXEL_PHASE_LOCKED, align 4
  %11 = call i32 @REG_WAIT(i32 %9, i32 %10, i32 1, i32 10, i32 10)
  ret void
}

declare dso_local %struct.dce110_opp* @TO_DCE110_OPP(%struct.output_pixel_processor*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
