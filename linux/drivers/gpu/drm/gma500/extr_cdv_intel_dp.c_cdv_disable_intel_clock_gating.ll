; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_disable_intel_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_disable_intel_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@DSPCLK_GATE_D = common dso_local global i32 0, align 4
@DPUNIT_PIPEB_GATE_DISABLE = common dso_local global i32 0, align 4
@DPUNIT_PIPEA_GATE_DISABLE = common dso_local global i32 0, align 4
@DPCUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@DPLSUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@DPOUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@DPIOUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @cdv_disable_intel_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_disable_intel_clock_gating(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load i32, i32* @DSPCLK_GATE_D, align 4
  %5 = call i32 @REG_READ(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @DPUNIT_PIPEB_GATE_DISABLE, align 4
  %7 = load i32, i32* @DPUNIT_PIPEA_GATE_DISABLE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @DPCUNIT_CLOCK_GATE_DISABLE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @DPLSUNIT_CLOCK_GATE_DISABLE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DPOUNIT_CLOCK_GATE_DISABLE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DPIOUNIT_CLOCK_GATE_DISABLE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @DSPCLK_GATE_D, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @REG_WRITE(i32 %19, i32 %20)
  %22 = call i32 @udelay(i32 500)
  ret void
}

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
