; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v2_0.c_vce_v2_0_init_cg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v2_0.c_vce_v2_0_init_cg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@VCE_CLOCK_GATING_A = common dso_local global i32 0, align 4
@CGC_CLK_GATE_DLY_TIMER_MASK = common dso_local global i32 0, align 4
@CGC_CLK_GATER_OFF_DLY_TIMER_MASK = common dso_local global i32 0, align 4
@CGC_UENC_WAIT_AWAKE = common dso_local global i32 0, align 4
@VCE_UENC_CLOCK_GATING = common dso_local global i32 0, align 4
@CLOCK_ON_DELAY_MASK = common dso_local global i32 0, align 4
@CLOCK_OFF_DELAY_MASK = common dso_local global i32 0, align 4
@VCE_CLOCK_GATING_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @vce_v2_0_init_cg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vce_v2_0_init_cg(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @VCE_CLOCK_GATING_A, align 4
  %5 = call i32 @RREG32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @CGC_CLK_GATE_DLY_TIMER_MASK, align 4
  %7 = load i32, i32* @CGC_CLK_GATER_OFF_DLY_TIMER_MASK, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = call i32 @CGC_CLK_GATE_DLY_TIMER(i32 0)
  %13 = call i32 @CGC_CLK_GATER_OFF_DLY_TIMER(i32 4)
  %14 = or i32 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @CGC_UENC_WAIT_AWAKE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @VCE_CLOCK_GATING_A, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @WREG32(i32 %20, i32 %21)
  %23 = load i32, i32* @VCE_UENC_CLOCK_GATING, align 4
  %24 = call i32 @RREG32(i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @CLOCK_ON_DELAY_MASK, align 4
  %26 = load i32, i32* @CLOCK_OFF_DELAY_MASK, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = call i32 @CLOCK_ON_DELAY(i32 0)
  %32 = call i32 @CLOCK_OFF_DELAY(i32 4)
  %33 = or i32 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @VCE_UENC_CLOCK_GATING, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @WREG32(i32 %36, i32 %37)
  %39 = load i32, i32* @VCE_CLOCK_GATING_B, align 4
  %40 = call i32 @RREG32(i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, 16
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, -1048577
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @VCE_CLOCK_GATING_B, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @WREG32(i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @CGC_CLK_GATE_DLY_TIMER(i32) #1

declare dso_local i32 @CGC_CLK_GATER_OFF_DLY_TIMER(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @CLOCK_ON_DELAY(i32) #1

declare dso_local i32 @CLOCK_OFF_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
