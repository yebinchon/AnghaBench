; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_pwr_10_0_gfxip_control_over_cgpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_pwr_10_0_gfxip_control_over_cgpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@PWR = common dso_local global i32 0, align 4
@mmPWR_MISC_CNTL_STATUS = common dso_local global i32 0, align 4
@PWR_MISC_CNTL_STATUS__PWR_GFX_RLC_CGPG_EN_MASK = common dso_local global i32 0, align 4
@PWR_MISC_CNTL_STATUS__PWR_GFXOFF_STATUS_MASK = common dso_local global i32 0, align 4
@PWR_MISC_CNTL_STATUS__PWR_GFXOFF_STATUS__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @pwr_10_0_gfxip_control_over_cgpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwr_10_0_gfxip_control_over_cgpg(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @PWR, align 4
  %8 = load i32, i32* @mmPWR_MISC_CNTL_STATUS, align 4
  %9 = call i32 @SOC15_REG_OFFSET(i32 %7, i32 0, i32 %8)
  %10 = call i32 @RREG32(i32 %9)
  store i32 %10, i32* %5, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = load i32, i32* @PWR_MISC_CNTL_STATUS__PWR_GFX_RLC_CGPG_EN_MASK, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i32, i32* @PWR, align 4
  %22 = load i32, i32* @mmPWR_MISC_CNTL_STATUS, align 4
  %23 = call i32 @SOC15_REG_OFFSET(i32 %21, i32 0, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @WREG32(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %13
  %27 = load i32, i32* @PWR_MISC_CNTL_STATUS__PWR_GFXOFF_STATUS_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @PWR_MISC_CNTL_STATUS__PWR_GFXOFF_STATUS__SHIFT, align 4
  %32 = shl i32 2, %31
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load i32, i32* @PWR, align 4
  %40 = load i32, i32* @mmPWR_MISC_CNTL_STATUS, align 4
  %41 = call i32 @SOC15_REG_OFFSET(i32 %39, i32 0, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %26
  br label %60

45:                                               ; preds = %2
  %46 = load i32, i32* @PWR_MISC_CNTL_STATUS__PWR_GFX_RLC_CGPG_EN_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, i32* @PWR, align 4
  %55 = load i32, i32* @mmPWR_MISC_CNTL_STATUS, align 4
  %56 = call i32 @SOC15_REG_OFFSET(i32 %54, i32 0, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @WREG32(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %45
  br label %60

60:                                               ; preds = %59, %44
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
