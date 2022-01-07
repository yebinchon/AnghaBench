; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_gfx_clockgating_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_gfx_clockgating_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@SCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@DYN_GFX_CLK_OFF_EN = common dso_local global i32 0, align 4
@CG_RLC_REQ_AND_RSP = common dso_local global i32 0, align 4
@CG_RLC_RSP_TYPE_MASK = common dso_local global i32 0, align 4
@CG_RLC_RSP_TYPE_SHIFT = common dso_local global i32 0, align 4
@GRBM_PWR_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_gfx_clockgating_enable(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %10 = load i32, i32* @DYN_GFX_CLK_OFF_EN, align 4
  %11 = load i32, i32* @DYN_GFX_CLK_OFF_EN, align 4
  %12 = xor i32 %11, -1
  %13 = call i32 @WREG32_P(i32 %9, i32 %10, i32 %12)
  br label %48

14:                                               ; preds = %2
  %15 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %16 = load i32, i32* @DYN_GFX_CLK_OFF_EN, align 4
  %17 = xor i32 %16, -1
  %18 = call i32 @WREG32_P(i32 %15, i32 0, i32 %17)
  %19 = load i32, i32* @CG_RLC_REQ_AND_RSP, align 4
  %20 = call i32 @WREG32(i32 %19, i32 2)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %38, %14
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, i32* @CG_RLC_REQ_AND_RSP, align 4
  %29 = call i32 @RREG32(i32 %28)
  %30 = load i32, i32* @CG_RLC_RSP_TYPE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @CG_RLC_RSP_TYPE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %41

36:                                               ; preds = %27
  %37 = call i32 @udelay(i32 1)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %21

41:                                               ; preds = %35, %21
  %42 = load i32, i32* @CG_RLC_REQ_AND_RSP, align 4
  %43 = call i32 @WREG32(i32 %42, i32 0)
  %44 = load i32, i32* @GRBM_PWR_CNTL, align 4
  %45 = call i32 @WREG32(i32 %44, i32 1)
  %46 = load i32, i32* @GRBM_PWR_CNTL, align 4
  %47 = call i32 @RREG32(i32 %46)
  br label %48

48:                                               ; preds = %41, %8
  ret void
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
