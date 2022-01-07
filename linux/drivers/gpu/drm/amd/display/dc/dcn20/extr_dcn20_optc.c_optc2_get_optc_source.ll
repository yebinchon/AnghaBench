; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_get_optc_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_get_optc_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.optc = type { i32 }

@OPTC_DATA_SOURCE_SELECT = common dso_local global i32 0, align 4
@OPTC_NUM_OF_INPUT_SEGMENT = common dso_local global i32 0, align 4
@OPTC_SEG0_SRC_SEL = common dso_local global i32 0, align 4
@OPTC_SEG1_SRC_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc2_get_optc_source(%struct.timing_generator* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.timing_generator*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %12 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %11)
  store %struct.optc* %12, %struct.optc** %10, align 8
  %13 = load i32, i32* @OPTC_DATA_SOURCE_SELECT, align 4
  %14 = load i32, i32* @OPTC_NUM_OF_INPUT_SEGMENT, align 4
  %15 = load i32, i32* @OPTC_SEG0_SRC_SEL, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @OPTC_SEG1_SRC_SEL, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @REG_GET_3(i32 %13, i32 %14, i32* %9, i32 %15, i32* %16, i32 %17, i32* %18)
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  store i32 2, i32* %23, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %22
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_GET_3(i32, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
