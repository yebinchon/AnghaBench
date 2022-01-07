; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_set_engine_clock_ssc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_set_engine_clock_ssc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@FVTHROT_FB_US_REG0 = common dso_local global i32 0, align 4
@RS780_FVTHROTFBUSREG0_DFLT = common dso_local global i32 0, align 4
@FVTHROT_FB_US_REG1 = common dso_local global i32 0, align 4
@RS780_FVTHROTFBUSREG1_DFLT = common dso_local global i32 0, align 4
@FVTHROT_FB_DS_REG0 = common dso_local global i32 0, align 4
@RS780_FVTHROTFBDSREG0_DFLT = common dso_local global i32 0, align 4
@FVTHROT_FB_DS_REG1 = common dso_local global i32 0, align 4
@RS780_FVTHROTFBDSREG1_DFLT = common dso_local global i32 0, align 4
@FVTHROT_FBDIV_REG1 = common dso_local global i32 0, align 4
@MAX_FEEDBACK_STEP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rs780_set_engine_clock_ssc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs780_set_engine_clock_ssc(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load i32, i32* @FVTHROT_FB_US_REG0, align 4
  %4 = load i32, i32* @RS780_FVTHROTFBUSREG0_DFLT, align 4
  %5 = call i32 @WREG32(i32 %3, i32 %4)
  %6 = load i32, i32* @FVTHROT_FB_US_REG1, align 4
  %7 = load i32, i32* @RS780_FVTHROTFBUSREG1_DFLT, align 4
  %8 = call i32 @WREG32(i32 %6, i32 %7)
  %9 = load i32, i32* @FVTHROT_FB_DS_REG0, align 4
  %10 = load i32, i32* @RS780_FVTHROTFBDSREG0_DFLT, align 4
  %11 = call i32 @WREG32(i32 %9, i32 %10)
  %12 = load i32, i32* @FVTHROT_FB_DS_REG1, align 4
  %13 = load i32, i32* @RS780_FVTHROTFBDSREG1_DFLT, align 4
  %14 = call i32 @WREG32(i32 %12, i32 %13)
  %15 = load i32, i32* @FVTHROT_FBDIV_REG1, align 4
  %16 = call i32 @MAX_FEEDBACK_STEP(i32 1)
  %17 = load i32, i32* @MAX_FEEDBACK_STEP_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = call i32 @WREG32_P(i32 %15, i32 %16, i32 %18)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @MAX_FEEDBACK_STEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
