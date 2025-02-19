; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_decoder.c_au8522_setup_cvbs_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_decoder.c_au8522_setup_cvbs_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au8522_state = type { i32 }

@AU8522_MODULE_CLOCK_CONTROL_REG0A3H = common dso_local global i32 0, align 4
@AU8522_MODULE_CLOCK_CONTROL_REG0A3H_CVBS = common dso_local global i32 0, align 4
@AU8522_PGA_CONTROL_REG082H = common dso_local global i32 0, align 4
@AU8522_CLAMPING_CONTROL_REG083H = common dso_local global i32 0, align 4
@AU8522_INPUT_CONTROL_REG081H = common dso_local global i32 0, align 4
@AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H = common dso_local global i32 0, align 4
@AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H_CVBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au8522_state*, i32)* @au8522_setup_cvbs_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au8522_setup_cvbs_mode(%struct.au8522_state* %0, i32 %1) #0 {
  %3 = alloca %struct.au8522_state*, align 8
  %4 = alloca i32, align 4
  store %struct.au8522_state* %0, %struct.au8522_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %6 = load i32, i32* @AU8522_MODULE_CLOCK_CONTROL_REG0A3H, align 4
  %7 = load i32, i32* @AU8522_MODULE_CLOCK_CONTROL_REG0A3H_CVBS, align 4
  %8 = call i32 @au8522_writereg(%struct.au8522_state* %5, i32 %6, i32 %7)
  %9 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %10 = load i32, i32* @AU8522_PGA_CONTROL_REG082H, align 4
  %11 = call i32 @au8522_writereg(%struct.au8522_state* %9, i32 %10, i32 0)
  %12 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %13 = load i32, i32* @AU8522_CLAMPING_CONTROL_REG083H, align 4
  %14 = call i32 @au8522_writereg(%struct.au8522_state* %12, i32 %13, i32 0)
  %15 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %16 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @au8522_writereg(%struct.au8522_state* %15, i32 %16, i32 %17)
  %19 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %20 = call i32 @setup_decoder_defaults(%struct.au8522_state* %19, i32 0)
  %21 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %22 = load i32, i32* @AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H, align 4
  %23 = load i32, i32* @AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H_CVBS, align 4
  %24 = call i32 @au8522_writereg(%struct.au8522_state* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @au8522_writereg(%struct.au8522_state*, i32, i32) #1

declare dso_local i32 @setup_decoder_defaults(%struct.au8522_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
