; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_setup_vertical_interrupt1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_setup_vertical_interrupt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.optc = type { i32 }

@OTG_VERTICAL_INTERRUPT1_POSITION = common dso_local global i32 0, align 4
@OTG_VERTICAL_INTERRUPT1_LINE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_setup_vertical_interrupt1(%struct.timing_generator* %0, i32 %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %7 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %6)
  store %struct.optc* %7, %struct.optc** %5, align 8
  %8 = load i32, i32* @OTG_VERTICAL_INTERRUPT1_POSITION, align 4
  %9 = load i32, i32* @OTG_VERTICAL_INTERRUPT1_LINE_START, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @REG_SET(i32 %8, i32 0, i32 %9, i32 %10)
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
