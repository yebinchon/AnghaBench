; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_ipp.c_dce_ipp_set_degamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_ipp.c_dce_ipp_set_degamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_pixel_processor = type { i32 }
%struct.dce_ipp = type { i32 }

@IPP_DEGAMMA_MODE_HW_sRGB = common dso_local global i32 0, align 4
@IPP_DEGAMMA_MODE_BYPASS = common dso_local global i32 0, align 4
@DEGAMMA_CONTROL = common dso_local global i32 0, align 4
@GRPH_DEGAMMA_MODE = common dso_local global i32 0, align 4
@CURSOR_DEGAMMA_MODE = common dso_local global i32 0, align 4
@CURSOR2_DEGAMMA_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_pixel_processor*, i32)* @dce_ipp_set_degamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_ipp_set_degamma(%struct.input_pixel_processor* %0, i32 %1) #0 {
  %3 = alloca %struct.input_pixel_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dce_ipp*, align 8
  %6 = alloca i32, align 4
  store %struct.input_pixel_processor* %0, %struct.input_pixel_processor** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %3, align 8
  %8 = call %struct.dce_ipp* @TO_DCE_IPP(%struct.input_pixel_processor* %7)
  store %struct.dce_ipp* %8, %struct.dce_ipp** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IPP_DEGAMMA_MODE_HW_sRGB, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IPP_DEGAMMA_MODE_BYPASS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IPP_DEGAMMA_MODE_HW_sRGB, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i1 [ true, %2 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i32, i32* @DEGAMMA_CONTROL, align 4
  %26 = load i32, i32* @GRPH_DEGAMMA_MODE, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @CURSOR_DEGAMMA_MODE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CURSOR2_DEGAMMA_MODE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @REG_SET_3(i32 %25, i32 0, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  ret void
}

declare dso_local %struct.dce_ipp* @TO_DCE_IPP(%struct.input_pixel_processor*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
