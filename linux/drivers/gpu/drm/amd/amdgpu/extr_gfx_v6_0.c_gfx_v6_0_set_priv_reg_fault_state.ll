; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_set_priv_reg_fault_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_set_priv_reg_fault_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@mmCP_INT_CNTL_RING0 = common dso_local global i32 0, align 4
@CP_INT_CNTL_RING0__PRIV_REG_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @gfx_v6_0_set_priv_reg_fault_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v6_0_set_priv_reg_fault_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %30 [
    i32 129, label %11
    i32 128, label %21
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @mmCP_INT_CNTL_RING0, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @CP_INT_CNTL_RING0__PRIV_REG_INT_ENABLE_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @mmCP_INT_CNTL_RING0, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @WREG32(i32 %18, i32 %19)
  br label %31

21:                                               ; preds = %4
  %22 = load i32, i32* @mmCP_INT_CNTL_RING0, align 4
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @CP_INT_CNTL_RING0__PRIV_REG_INT_ENABLE_MASK, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @mmCP_INT_CNTL_RING0, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @WREG32(i32 %27, i32 %28)
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %21, %11
  ret i32 0
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
