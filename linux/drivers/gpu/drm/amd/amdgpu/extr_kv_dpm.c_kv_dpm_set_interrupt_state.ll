; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_set_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_set_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@ixCG_THERMAL_INT_CTRL = common dso_local global i32 0, align 4
@CG_THERMAL_INT_CTRL__THERM_INTH_MASK_MASK = common dso_local global i32 0, align 4
@CG_THERMAL_INT_CTRL__THERM_INTL_MASK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @kv_dpm_set_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_dpm_set_interrupt_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %57 [
    i32 128, label %11
    i32 129, label %34
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %32 [
    i32 131, label %13
    i32 130, label %23
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @ixCG_THERMAL_INT_CTRL, align 4
  %15 = call i32 @RREG32_SMC(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @CG_THERMAL_INT_CTRL__THERM_INTH_MASK_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @ixCG_THERMAL_INT_CTRL, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @WREG32_SMC(i32 %20, i32 %21)
  br label %33

23:                                               ; preds = %11
  %24 = load i32, i32* @ixCG_THERMAL_INT_CTRL, align 4
  %25 = call i32 @RREG32_SMC(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @CG_THERMAL_INT_CTRL__THERM_INTH_MASK_MASK, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @ixCG_THERMAL_INT_CTRL, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @WREG32_SMC(i32 %29, i32 %30)
  br label %33

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %32, %23, %13
  br label %58

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %55 [
    i32 131, label %36
    i32 130, label %46
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @ixCG_THERMAL_INT_CTRL, align 4
  %38 = call i32 @RREG32_SMC(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @CG_THERMAL_INT_CTRL__THERM_INTL_MASK_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* @ixCG_THERMAL_INT_CTRL, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @WREG32_SMC(i32 %43, i32 %44)
  br label %56

46:                                               ; preds = %34
  %47 = load i32, i32* @ixCG_THERMAL_INT_CTRL, align 4
  %48 = call i32 @RREG32_SMC(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @CG_THERMAL_INT_CTRL__THERM_INTL_MASK_MASK, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @ixCG_THERMAL_INT_CTRL, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @WREG32_SMC(i32 %52, i32 %53)
  br label %56

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %46, %36
  br label %58

57:                                               ; preds = %4
  br label %58

58:                                               ; preds = %57, %56, %33
  ret i32 0
}

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
