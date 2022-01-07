; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_ipp.c_dce_ipp_program_prescale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_ipp.c_dce_ipp_program_prescale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_pixel_processor = type { i32 }
%struct.ipp_prescale_params = type { i64, i32, i32 }
%struct.dce_ipp = type { i32 }

@PRESCALE_GRPH_CONTROL = common dso_local global i32 0, align 4
@GRPH_PRESCALE_BYPASS = common dso_local global i32 0, align 4
@PRESCALE_VALUES_GRPH_R = common dso_local global i32 0, align 4
@GRPH_PRESCALE_SCALE_R = common dso_local global i32 0, align 4
@GRPH_PRESCALE_BIAS_R = common dso_local global i32 0, align 4
@PRESCALE_VALUES_GRPH_G = common dso_local global i32 0, align 4
@GRPH_PRESCALE_SCALE_G = common dso_local global i32 0, align 4
@GRPH_PRESCALE_BIAS_G = common dso_local global i32 0, align 4
@PRESCALE_VALUES_GRPH_B = common dso_local global i32 0, align 4
@GRPH_PRESCALE_SCALE_B = common dso_local global i32 0, align 4
@GRPH_PRESCALE_BIAS_B = common dso_local global i32 0, align 4
@IPP_PRESCALE_MODE_BYPASS = common dso_local global i64 0, align 8
@INPUT_GAMMA_CONTROL = common dso_local global i32 0, align 4
@GRPH_INPUT_GAMMA_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_pixel_processor*, %struct.ipp_prescale_params*)* @dce_ipp_program_prescale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_ipp_program_prescale(%struct.input_pixel_processor* %0, %struct.ipp_prescale_params* %1) #0 {
  %3 = alloca %struct.input_pixel_processor*, align 8
  %4 = alloca %struct.ipp_prescale_params*, align 8
  %5 = alloca %struct.dce_ipp*, align 8
  store %struct.input_pixel_processor* %0, %struct.input_pixel_processor** %3, align 8
  store %struct.ipp_prescale_params* %1, %struct.ipp_prescale_params** %4, align 8
  %6 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %3, align 8
  %7 = call %struct.dce_ipp* @TO_DCE_IPP(%struct.input_pixel_processor* %6)
  store %struct.dce_ipp* %7, %struct.dce_ipp** %5, align 8
  %8 = load i32, i32* @PRESCALE_GRPH_CONTROL, align 4
  %9 = load i32, i32* @GRPH_PRESCALE_BYPASS, align 4
  %10 = call i32 @REG_UPDATE(i32 %8, i32 %9, i32 1)
  %11 = load i32, i32* @PRESCALE_VALUES_GRPH_R, align 4
  %12 = load i32, i32* @GRPH_PRESCALE_SCALE_R, align 4
  %13 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %4, align 8
  %14 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GRPH_PRESCALE_BIAS_R, align 4
  %17 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %4, align 8
  %18 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @REG_SET_2(i32 %11, i32 0, i32 %12, i32 %15, i32 %16, i32 %19)
  %21 = load i32, i32* @PRESCALE_VALUES_GRPH_G, align 4
  %22 = load i32, i32* @GRPH_PRESCALE_SCALE_G, align 4
  %23 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %4, align 8
  %24 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GRPH_PRESCALE_BIAS_G, align 4
  %27 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %4, align 8
  %28 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @REG_SET_2(i32 %21, i32 0, i32 %22, i32 %25, i32 %26, i32 %29)
  %31 = load i32, i32* @PRESCALE_VALUES_GRPH_B, align 4
  %32 = load i32, i32* @GRPH_PRESCALE_SCALE_B, align 4
  %33 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %4, align 8
  %34 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GRPH_PRESCALE_BIAS_B, align 4
  %37 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %4, align 8
  %38 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @REG_SET_2(i32 %31, i32 0, i32 %32, i32 %35, i32 %36, i32 %39)
  %41 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %4, align 8
  %42 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IPP_PRESCALE_MODE_BYPASS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %2
  %47 = load i32, i32* @PRESCALE_GRPH_CONTROL, align 4
  %48 = load i32, i32* @GRPH_PRESCALE_BYPASS, align 4
  %49 = call i32 @REG_UPDATE(i32 %47, i32 %48, i32 0)
  %50 = load i32, i32* @INPUT_GAMMA_CONTROL, align 4
  %51 = load i32, i32* @GRPH_INPUT_GAMMA_MODE, align 4
  %52 = call i32 @REG_UPDATE(i32 %50, i32 %51, i32 1)
  br label %53

53:                                               ; preds = %46, %2
  ret void
}

declare dso_local %struct.dce_ipp* @TO_DCE_IPP(%struct.input_pixel_processor*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
