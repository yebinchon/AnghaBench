; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_program_oppbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_program_oppbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }
%struct.oppbuf_params = type { i32, i32, i32, i32, i32 }
%struct.dcn10_opp = type { i32 }

@OPPBUF_CONTROL = common dso_local global i32 0, align 4
@OPPBUF_ACTIVE_WIDTH = common dso_local global i32 0, align 4
@OPPBUF_DISPLAY_SEGMENTATION = common dso_local global i32 0, align 4
@OPPBUF_OVERLAP_PIXEL_NUM = common dso_local global i32 0, align 4
@OPPBUF_PIXEL_REPETITION = common dso_local global i32 0, align 4
@OPPBUF_CONTROL1 = common dso_local global i32 0, align 4
@OPPBUF_NUM_SEGMENT_PADDED_PIXELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opp1_program_oppbuf(%struct.output_pixel_processor* %0, %struct.oppbuf_params* %1) #0 {
  %3 = alloca %struct.output_pixel_processor*, align 8
  %4 = alloca %struct.oppbuf_params*, align 8
  %5 = alloca %struct.dcn10_opp*, align 8
  store %struct.output_pixel_processor* %0, %struct.output_pixel_processor** %3, align 8
  store %struct.oppbuf_params* %1, %struct.oppbuf_params** %4, align 8
  %6 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %3, align 8
  %7 = call %struct.dcn10_opp* @TO_DCN10_OPP(%struct.output_pixel_processor* %6)
  store %struct.dcn10_opp* %7, %struct.dcn10_opp** %5, align 8
  %8 = load i32, i32* @OPPBUF_CONTROL, align 4
  %9 = load i32, i32* @OPPBUF_ACTIVE_WIDTH, align 4
  %10 = load %struct.oppbuf_params*, %struct.oppbuf_params** %4, align 8
  %11 = getelementptr inbounds %struct.oppbuf_params, %struct.oppbuf_params* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @REG_UPDATE(i32 %8, i32 %9, i32 %12)
  %14 = load i32, i32* @OPPBUF_CONTROL, align 4
  %15 = load i32, i32* @OPPBUF_DISPLAY_SEGMENTATION, align 4
  %16 = load %struct.oppbuf_params*, %struct.oppbuf_params** %4, align 8
  %17 = getelementptr inbounds %struct.oppbuf_params, %struct.oppbuf_params* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @REG_UPDATE(i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* @OPPBUF_CONTROL, align 4
  %21 = load i32, i32* @OPPBUF_OVERLAP_PIXEL_NUM, align 4
  %22 = load %struct.oppbuf_params*, %struct.oppbuf_params** %4, align 8
  %23 = getelementptr inbounds %struct.oppbuf_params, %struct.oppbuf_params* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 %24)
  %26 = load i32, i32* @OPPBUF_CONTROL, align 4
  %27 = load i32, i32* @OPPBUF_PIXEL_REPETITION, align 4
  %28 = load %struct.oppbuf_params*, %struct.oppbuf_params** %4, align 8
  %29 = getelementptr inbounds %struct.oppbuf_params, %struct.oppbuf_params* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @REG_UPDATE(i32 %26, i32 %27, i32 %30)
  ret void
}

declare dso_local %struct.dcn10_opp* @TO_DCN10_OPP(%struct.output_pixel_processor*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
