; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_enable_display_gap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_enable_display_gap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@CG_DISPLAY_GAP_CNTL = common dso_local global i32 0, align 4
@DISP1_GAP_MASK = common dso_local global i32 0, align 4
@DISP2_GAP_MASK = common dso_local global i32 0, align 4
@R600_PM_DISPLAY_GAP_IGNORE = common dso_local global i32 0, align 4
@DISP1_GAP_MCHG_MASK = common dso_local global i32 0, align 4
@DISP2_GAP_MCHG_MASK = common dso_local global i32 0, align 4
@R600_PM_DISPLAY_GAP_VBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @si_enable_display_gap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_enable_display_gap(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @CG_DISPLAY_GAP_CNTL, align 4
  %5 = call i32 @RREG32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @DISP1_GAP_MASK, align 4
  %7 = load i32, i32* @DISP2_GAP_MASK, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @R600_PM_DISPLAY_GAP_IGNORE, align 4
  %13 = call i32 @DISP1_GAP(i32 %12)
  %14 = load i32, i32* @R600_PM_DISPLAY_GAP_IGNORE, align 4
  %15 = call i32 @DISP2_GAP(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @DISP1_GAP_MCHG_MASK, align 4
  %20 = load i32, i32* @DISP2_GAP_MCHG_MASK, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @R600_PM_DISPLAY_GAP_VBLANK, align 4
  %26 = call i32 @DISP1_GAP_MCHG(i32 %25)
  %27 = load i32, i32* @R600_PM_DISPLAY_GAP_IGNORE, align 4
  %28 = call i32 @DISP2_GAP_MCHG(i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @CG_DISPLAY_GAP_CNTL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @WREG32(i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DISP1_GAP(i32) #1

declare dso_local i32 @DISP2_GAP(i32) #1

declare dso_local i32 @DISP1_GAP_MCHG(i32) #1

declare dso_local i32 @DISP2_GAP_MCHG(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
