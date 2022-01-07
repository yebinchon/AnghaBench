; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_enable_optc_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_enable_optc_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.optc = type { i32 }

@OPTC_INPUT_CLOCK_CONTROL = common dso_local global i32 0, align 4
@OPTC_INPUT_CLK_EN = common dso_local global i32 0, align 4
@OPTC_INPUT_CLK_GATE_DIS = common dso_local global i32 0, align 4
@OPTC_INPUT_CLK_ON = common dso_local global i32 0, align 4
@OTG_CLOCK_CONTROL = common dso_local global i32 0, align 4
@OTG_CLOCK_EN = common dso_local global i32 0, align 4
@OTG_CLOCK_GATE_DIS = common dso_local global i32 0, align 4
@OTG_CLOCK_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_enable_optc_clock(%struct.timing_generator* %0, i32 %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %7 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %6)
  store %struct.optc* %7, %struct.optc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load i32, i32* @OPTC_INPUT_CLOCK_CONTROL, align 4
  %12 = load i32, i32* @OPTC_INPUT_CLK_EN, align 4
  %13 = load i32, i32* @OPTC_INPUT_CLK_GATE_DIS, align 4
  %14 = call i32 @REG_UPDATE_2(i32 %11, i32 %12, i32 1, i32 %13, i32 1)
  %15 = load i32, i32* @OPTC_INPUT_CLOCK_CONTROL, align 4
  %16 = load i32, i32* @OPTC_INPUT_CLK_ON, align 4
  %17 = call i32 @REG_WAIT(i32 %15, i32 %16, i32 1, i32 1, i32 1000)
  %18 = load i32, i32* @OTG_CLOCK_CONTROL, align 4
  %19 = load i32, i32* @OTG_CLOCK_EN, align 4
  %20 = load i32, i32* @OTG_CLOCK_GATE_DIS, align 4
  %21 = call i32 @REG_UPDATE_2(i32 %18, i32 %19, i32 1, i32 %20, i32 1)
  %22 = load i32, i32* @OTG_CLOCK_CONTROL, align 4
  %23 = load i32, i32* @OTG_CLOCK_ON, align 4
  %24 = call i32 @REG_WAIT(i32 %22, i32 %23, i32 1, i32 1, i32 1000)
  br label %34

25:                                               ; preds = %2
  %26 = load i32, i32* @OTG_CLOCK_CONTROL, align 4
  %27 = load i32, i32* @OTG_CLOCK_GATE_DIS, align 4
  %28 = load i32, i32* @OTG_CLOCK_EN, align 4
  %29 = call i32 @REG_UPDATE_2(i32 %26, i32 %27, i32 0, i32 %28, i32 0)
  %30 = load i32, i32* @OPTC_INPUT_CLOCK_CONTROL, align 4
  %31 = load i32, i32* @OPTC_INPUT_CLK_GATE_DIS, align 4
  %32 = load i32, i32* @OPTC_INPUT_CLK_EN, align 4
  %33 = call i32 @REG_UPDATE_2(i32 %30, i32 %31, i32 0, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %25, %10
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
