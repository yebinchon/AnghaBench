; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_update_rom_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_update_rom_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@SMUIO = common dso_local global i32 0, align 4
@mmCGTT_ROM_CLK_CTRL0 = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_ROM_MGCG = common dso_local global i32 0, align 4
@CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK = common dso_local global i32 0, align 4
@CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @soc15_update_rom_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc15_update_rom_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SMUIO, align 4
  %8 = load i32, i32* @mmCGTT_ROM_CLK_CTRL0, align 4
  %9 = call i32 @SOC15_REG_OFFSET(i32 %7, i32 0, i32 %8)
  %10 = call i32 @RREG32(i32 %9)
  store i32 %10, i32* %6, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AMD_CG_SUPPORT_ROM_MGCG, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load i32, i32* @CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK, align 4
  %22 = load i32, i32* @CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE1_MASK, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %33

27:                                               ; preds = %13, %2
  %28 = load i32, i32* @CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK, align 4
  %29 = load i32, i32* @CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE1_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @SMUIO, align 4
  %39 = load i32, i32* @mmCGTT_ROM_CLK_CTRL0, align 4
  %40 = call i32 @SOC15_REG_OFFSET(i32 %38, i32 0, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @WREG32(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %33
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
