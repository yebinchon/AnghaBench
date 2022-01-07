; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_vm_fault_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_vm_fault_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@VM_CONTEXT1_CNTL__RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL__DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL__PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL__VALID_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL__READ_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL__WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL__EXECUTE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @gmc_v8_0_vm_fault_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v8_0_vm_fault_interrupt_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @VM_CONTEXT1_CNTL__RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %12 = load i32, i32* @VM_CONTEXT1_CNTL__DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VM_CONTEXT1_CNTL__PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @VM_CONTEXT1_CNTL__VALID_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @VM_CONTEXT1_CNTL__READ_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @VM_CONTEXT1_CNTL__WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VM_CONTEXT1_CNTL__EXECUTE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %61 [
    i32 129, label %25
    i32 128, label %44
  ]

25:                                               ; preds = %4
  %26 = load i32, i32* @mmVM_CONTEXT0_CNTL, align 4
  %27 = call i32 @RREG32(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @mmVM_CONTEXT0_CNTL, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @WREG32(i32 %32, i32 %33)
  %35 = load i32, i32* @mmVM_CONTEXT1_CNTL, align 4
  %36 = call i32 @RREG32(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @mmVM_CONTEXT1_CNTL, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  br label %62

44:                                               ; preds = %4
  %45 = load i32, i32* @mmVM_CONTEXT0_CNTL, align 4
  %46 = call i32 @RREG32(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @mmVM_CONTEXT0_CNTL, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @WREG32(i32 %50, i32 %51)
  %53 = load i32, i32* @mmVM_CONTEXT1_CNTL, align 4
  %54 = call i32 @RREG32(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @mmVM_CONTEXT1_CNTL, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @WREG32(i32 %58, i32 %59)
  br label %62

61:                                               ; preds = %4
  br label %62

62:                                               ; preds = %61, %44, %25
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
