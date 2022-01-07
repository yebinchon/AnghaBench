; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_program_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_program_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }
%struct.bit_depth_reduction_params = type { i32 }
%struct.clamping_and_pixel_encoding_params = type { i64 }
%struct.dcn10_opp = type { i32 }

@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8
@FMT_MAP420_MEMORY_CONTROL = common dso_local global i32 0, align 4
@FMT_MAP420MEM_PWR_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opp1_program_fmt(%struct.output_pixel_processor* %0, %struct.bit_depth_reduction_params* %1, %struct.clamping_and_pixel_encoding_params* %2) #0 {
  %4 = alloca %struct.output_pixel_processor*, align 8
  %5 = alloca %struct.bit_depth_reduction_params*, align 8
  %6 = alloca %struct.clamping_and_pixel_encoding_params*, align 8
  %7 = alloca %struct.dcn10_opp*, align 8
  store %struct.output_pixel_processor* %0, %struct.output_pixel_processor** %4, align 8
  store %struct.bit_depth_reduction_params* %1, %struct.bit_depth_reduction_params** %5, align 8
  store %struct.clamping_and_pixel_encoding_params* %2, %struct.clamping_and_pixel_encoding_params** %6, align 8
  %8 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %4, align 8
  %9 = call %struct.dcn10_opp* @TO_DCN10_OPP(%struct.output_pixel_processor* %8)
  store %struct.dcn10_opp* %9, %struct.dcn10_opp** %7, align 8
  %10 = load %struct.clamping_and_pixel_encoding_params*, %struct.clamping_and_pixel_encoding_params** %6, align 8
  %11 = getelementptr inbounds %struct.clamping_and_pixel_encoding_params, %struct.clamping_and_pixel_encoding_params* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @FMT_MAP420_MEMORY_CONTROL, align 4
  %17 = load i32, i32* @FMT_MAP420MEM_PWR_FORCE, align 4
  %18 = call i32 @REG_UPDATE(i32 %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %4, align 8
  %21 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %5, align 8
  %22 = call i32 @opp1_program_bit_depth_reduction(%struct.output_pixel_processor* %20, %struct.bit_depth_reduction_params* %21)
  %23 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %4, align 8
  %24 = load %struct.clamping_and_pixel_encoding_params*, %struct.clamping_and_pixel_encoding_params** %6, align 8
  %25 = call i32 @opp1_program_clamping_and_pixel_encoding(%struct.output_pixel_processor* %23, %struct.clamping_and_pixel_encoding_params* %24)
  ret void
}

declare dso_local %struct.dcn10_opp* @TO_DCN10_OPP(%struct.output_pixel_processor*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @opp1_program_bit_depth_reduction(%struct.output_pixel_processor*, %struct.bit_depth_reduction_params*) #1

declare dso_local i32 @opp1_program_clamping_and_pixel_encoding(%struct.output_pixel_processor*, %struct.clamping_and_pixel_encoding_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
