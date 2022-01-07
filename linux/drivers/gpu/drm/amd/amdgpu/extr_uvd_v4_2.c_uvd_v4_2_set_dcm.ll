; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_set_dcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_set_dcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@UVD_CGC_GATE = common dso_local global i32 0, align 4
@REGS = common dso_local global i32 0, align 4
@mmUVD_CGC_CTRL = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__CLK_OFF_DELAY_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__CLK_GATE_DLY_TIMER_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT = common dso_local global i32 0, align 4
@UVD_CGC_CTRL2__DYN_OCLK_RAMP_EN_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL2__DYN_RCLK_RAMP_EN_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL2__GATER_DIV_ID__SHIFT = common dso_local global i32 0, align 4
@ixUVD_CGC_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @uvd_v4_2_set_dcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v4_2_set_dcm(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @UVD_CGC_GATE, align 4
  %8 = load i32, i32* @REGS, align 4
  %9 = call i32 @WREG32_FIELD(i32 %7, i32 %8, i32 0)
  %10 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %11 = call i32 @RREG32(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @UVD_CGC_CTRL__CLK_OFF_DELAY_MASK, align 4
  %13 = load i32, i32* @UVD_CGC_CTRL__CLK_GATE_DLY_TIMER_MASK, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK, align 4
  %19 = load i32, i32* @UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %20 = shl i32 1, %19
  %21 = or i32 %18, %20
  %22 = load i32, i32* @UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %23 = shl i32 4, %22
  %24 = or i32 %21, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, -2147481601
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @UVD_CGC_CTRL2__DYN_OCLK_RAMP_EN_MASK, align 4
  %33 = load i32, i32* @UVD_CGC_CTRL2__DYN_RCLK_RAMP_EN_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @UVD_CGC_CTRL2__GATER_DIV_ID__SHIFT, align 4
  %36 = shl i32 7, %35
  %37 = or i32 %34, %36
  store i32 %37, i32* %6, align 4
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, 2147481600
  store i32 %40, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %29
  %42 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @WREG32(i32 %42, i32 %43)
  %45 = load i32, i32* @ixUVD_CGC_CTRL2, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @WREG32_UVD_CTX(i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_UVD_CTX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
