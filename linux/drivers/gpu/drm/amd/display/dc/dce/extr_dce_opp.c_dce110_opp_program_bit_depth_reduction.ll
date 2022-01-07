; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_dce110_opp_program_bit_depth_reduction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_dce110_opp_program_bit_depth_reduction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }
%struct.bit_depth_reduction_params = type { i32 }
%struct.dce110_opp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_opp_program_bit_depth_reduction(%struct.output_pixel_processor* %0, %struct.bit_depth_reduction_params* %1) #0 {
  %3 = alloca %struct.output_pixel_processor*, align 8
  %4 = alloca %struct.bit_depth_reduction_params*, align 8
  %5 = alloca %struct.dce110_opp*, align 8
  store %struct.output_pixel_processor* %0, %struct.output_pixel_processor** %3, align 8
  store %struct.bit_depth_reduction_params* %1, %struct.bit_depth_reduction_params** %4, align 8
  %6 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %3, align 8
  %7 = call %struct.dce110_opp* @TO_DCE110_OPP(%struct.output_pixel_processor* %6)
  store %struct.dce110_opp* %7, %struct.dce110_opp** %5, align 8
  %8 = load %struct.dce110_opp*, %struct.dce110_opp** %5, align 8
  %9 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %10 = call i32 @set_truncation(%struct.dce110_opp* %8, %struct.bit_depth_reduction_params* %9)
  %11 = load %struct.dce110_opp*, %struct.dce110_opp** %5, align 8
  %12 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %13 = call i32 @set_spatial_dither(%struct.dce110_opp* %11, %struct.bit_depth_reduction_params* %12)
  %14 = load %struct.dce110_opp*, %struct.dce110_opp** %5, align 8
  %15 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %16 = call i32 @set_temporal_dither(%struct.dce110_opp* %14, %struct.bit_depth_reduction_params* %15)
  ret void
}

declare dso_local %struct.dce110_opp* @TO_DCE110_OPP(%struct.output_pixel_processor*) #1

declare dso_local i32 @set_truncation(%struct.dce110_opp*, %struct.bit_depth_reduction_params*) #1

declare dso_local i32 @set_spatial_dither(%struct.dce110_opp*, %struct.bit_depth_reduction_params*) #1

declare dso_local i32 @set_temporal_dither(%struct.dce110_opp*, %struct.bit_depth_reduction_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
