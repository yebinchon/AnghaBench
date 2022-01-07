; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_program_vc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_program_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@SCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@RESET_SCLK_CNT = common dso_local global i32 0, align 4
@RESET_BUSY_CNT = common dso_local global i32 0, align 4
@CG_FTV_0 = common dso_local global i32 0, align 4
@CISLANDS_VRC_DFLT0 = common dso_local global i32 0, align 4
@CG_FTV_1 = common dso_local global i32 0, align 4
@CISLANDS_VRC_DFLT1 = common dso_local global i32 0, align 4
@CG_FTV_2 = common dso_local global i32 0, align 4
@CISLANDS_VRC_DFLT2 = common dso_local global i32 0, align 4
@CG_FTV_3 = common dso_local global i32 0, align 4
@CISLANDS_VRC_DFLT3 = common dso_local global i32 0, align 4
@CG_FTV_4 = common dso_local global i32 0, align 4
@CISLANDS_VRC_DFLT4 = common dso_local global i32 0, align 4
@CG_FTV_5 = common dso_local global i32 0, align 4
@CISLANDS_VRC_DFLT5 = common dso_local global i32 0, align 4
@CG_FTV_6 = common dso_local global i32 0, align 4
@CISLANDS_VRC_DFLT6 = common dso_local global i32 0, align 4
@CG_FTV_7 = common dso_local global i32 0, align 4
@CISLANDS_VRC_DFLT7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @ci_program_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_program_vc(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %5 = call i32 @RREG32_SMC(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @RESET_SCLK_CNT, align 4
  %7 = load i32, i32* @RESET_BUSY_CNT, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @WREG32_SMC(i32 %12, i32 %13)
  %15 = load i32, i32* @CG_FTV_0, align 4
  %16 = load i32, i32* @CISLANDS_VRC_DFLT0, align 4
  %17 = call i32 @WREG32_SMC(i32 %15, i32 %16)
  %18 = load i32, i32* @CG_FTV_1, align 4
  %19 = load i32, i32* @CISLANDS_VRC_DFLT1, align 4
  %20 = call i32 @WREG32_SMC(i32 %18, i32 %19)
  %21 = load i32, i32* @CG_FTV_2, align 4
  %22 = load i32, i32* @CISLANDS_VRC_DFLT2, align 4
  %23 = call i32 @WREG32_SMC(i32 %21, i32 %22)
  %24 = load i32, i32* @CG_FTV_3, align 4
  %25 = load i32, i32* @CISLANDS_VRC_DFLT3, align 4
  %26 = call i32 @WREG32_SMC(i32 %24, i32 %25)
  %27 = load i32, i32* @CG_FTV_4, align 4
  %28 = load i32, i32* @CISLANDS_VRC_DFLT4, align 4
  %29 = call i32 @WREG32_SMC(i32 %27, i32 %28)
  %30 = load i32, i32* @CG_FTV_5, align 4
  %31 = load i32, i32* @CISLANDS_VRC_DFLT5, align 4
  %32 = call i32 @WREG32_SMC(i32 %30, i32 %31)
  %33 = load i32, i32* @CG_FTV_6, align 4
  %34 = load i32, i32* @CISLANDS_VRC_DFLT6, align 4
  %35 = call i32 @WREG32_SMC(i32 %33, i32 %34)
  %36 = load i32, i32* @CG_FTV_7, align 4
  %37 = load i32, i32* @CISLANDS_VRC_DFLT7, align 4
  %38 = call i32 @WREG32_SMC(i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
