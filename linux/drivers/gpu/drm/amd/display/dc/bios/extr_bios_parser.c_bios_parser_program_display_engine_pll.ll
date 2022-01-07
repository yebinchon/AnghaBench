; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_program_display_engine_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_program_display_engine_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.bp_pixel_clock_parameters = type { i32 }
%struct.bios_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.bios_parser.0*, %struct.bp_pixel_clock_parameters*)* }
%struct.bios_parser.0 = type opaque

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, %struct.bp_pixel_clock_parameters*)* @bios_parser_program_display_engine_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_program_display_engine_pll(%struct.dc_bios* %0, %struct.bp_pixel_clock_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_bios*, align 8
  %5 = alloca %struct.bp_pixel_clock_parameters*, align 8
  %6 = alloca %struct.bios_parser*, align 8
  store %struct.dc_bios* %0, %struct.dc_bios** %4, align 8
  store %struct.bp_pixel_clock_parameters* %1, %struct.bp_pixel_clock_parameters** %5, align 8
  %7 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %8 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %7)
  store %struct.bios_parser* %8, %struct.bios_parser** %6, align 8
  %9 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %10 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.bios_parser.0*, %struct.bp_pixel_clock_parameters*)*, i32 (%struct.bios_parser.0*, %struct.bp_pixel_clock_parameters*)** %11, align 8
  %13 = icmp ne i32 (%struct.bios_parser.0*, %struct.bp_pixel_clock_parameters*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %18 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.bios_parser.0*, %struct.bp_pixel_clock_parameters*)*, i32 (%struct.bios_parser.0*, %struct.bp_pixel_clock_parameters*)** %19, align 8
  %21 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %22 = bitcast %struct.bios_parser* %21 to %struct.bios_parser.0*
  %23 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %24 = call i32 %20(%struct.bios_parser.0* %22, %struct.bp_pixel_clock_parameters* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
