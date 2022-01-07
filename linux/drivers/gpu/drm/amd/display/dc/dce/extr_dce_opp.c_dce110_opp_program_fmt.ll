; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_dce110_opp_program_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_dce110_opp_program_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }
%struct.bit_depth_reduction_params = type { i32 }
%struct.clamping_and_pixel_encoding_params = type { i64 }

@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_opp_program_fmt(%struct.output_pixel_processor* %0, %struct.bit_depth_reduction_params* %1, %struct.clamping_and_pixel_encoding_params* %2) #0 {
  %4 = alloca %struct.output_pixel_processor*, align 8
  %5 = alloca %struct.bit_depth_reduction_params*, align 8
  %6 = alloca %struct.clamping_and_pixel_encoding_params*, align 8
  store %struct.output_pixel_processor* %0, %struct.output_pixel_processor** %4, align 8
  store %struct.bit_depth_reduction_params* %1, %struct.bit_depth_reduction_params** %5, align 8
  store %struct.clamping_and_pixel_encoding_params* %2, %struct.clamping_and_pixel_encoding_params** %6, align 8
  %7 = load %struct.clamping_and_pixel_encoding_params*, %struct.clamping_and_pixel_encoding_params** %6, align 8
  %8 = getelementptr inbounds %struct.clamping_and_pixel_encoding_params, %struct.clamping_and_pixel_encoding_params* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %4, align 8
  %14 = call i32 @program_formatter_420_memory(%struct.output_pixel_processor* %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %4, align 8
  %17 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %5, align 8
  %18 = call i32 @dce110_opp_program_bit_depth_reduction(%struct.output_pixel_processor* %16, %struct.bit_depth_reduction_params* %17)
  %19 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %4, align 8
  %20 = load %struct.clamping_and_pixel_encoding_params*, %struct.clamping_and_pixel_encoding_params** %6, align 8
  %21 = call i32 @dce110_opp_program_clamping_and_pixel_encoding(%struct.output_pixel_processor* %19, %struct.clamping_and_pixel_encoding_params* %20)
  %22 = load %struct.clamping_and_pixel_encoding_params*, %struct.clamping_and_pixel_encoding_params** %6, align 8
  %23 = getelementptr inbounds %struct.clamping_and_pixel_encoding_params, %struct.clamping_and_pixel_encoding_params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %4, align 8
  %29 = call i32 @program_formatter_reset_dig_resync_fifo(%struct.output_pixel_processor* %28)
  br label %30

30:                                               ; preds = %27, %15
  ret void
}

declare dso_local i32 @program_formatter_420_memory(%struct.output_pixel_processor*) #1

declare dso_local i32 @dce110_opp_program_bit_depth_reduction(%struct.output_pixel_processor*, %struct.bit_depth_reduction_params*) #1

declare dso_local i32 @dce110_opp_program_clamping_and_pixel_encoding(%struct.output_pixel_processor*, %struct.clamping_and_pixel_encoding_params*) #1

declare dso_local i32 @program_formatter_reset_dig_resync_fifo(%struct.output_pixel_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
