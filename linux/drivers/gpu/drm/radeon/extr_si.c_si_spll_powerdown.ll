; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_spll_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_spll_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@SPLL_CNTL_MODE = common dso_local global i32 0, align 4
@SPLL_SW_DIR_CONTROL = common dso_local global i32 0, align 4
@CG_SPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@SPLL_RESET = common dso_local global i32 0, align 4
@SPLL_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_spll_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_spll_powerdown(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @SPLL_CNTL_MODE, align 4
  %5 = call i32 @RREG32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @SPLL_SW_DIR_CONTROL, align 4
  %7 = load i32, i32* %3, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @SPLL_CNTL_MODE, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @WREG32(i32 %9, i32 %10)
  %12 = load i32, i32* @CG_SPLL_FUNC_CNTL, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @SPLL_RESET, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @CG_SPLL_FUNC_CNTL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @WREG32(i32 %17, i32 %18)
  %20 = load i32, i32* @CG_SPLL_FUNC_CNTL, align 4
  %21 = call i32 @RREG32(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @SPLL_SLEEP, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @CG_SPLL_FUNC_CNTL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @WREG32(i32 %25, i32 %26)
  %28 = load i32, i32* @SPLL_CNTL_MODE, align 4
  %29 = call i32 @RREG32(i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @SPLL_SW_DIR_CONTROL, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @SPLL_CNTL_MODE, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @WREG32(i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
