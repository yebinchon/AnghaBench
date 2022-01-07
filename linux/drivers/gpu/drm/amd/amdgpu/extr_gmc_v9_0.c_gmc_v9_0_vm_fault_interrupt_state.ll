; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_vm_fault_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_vm_fault_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.amdgpu_vmhub* }
%struct.amdgpu_vmhub = type { i64 }
%struct.amdgpu_irq_src = type { i32 }

@VM_CONTEXT1_CNTL__RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i64 0, align 8
@VM_CONTEXT1_CNTL__DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i64 0, align 8
@VM_CONTEXT1_CNTL__PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i64 0, align 8
@VM_CONTEXT1_CNTL__VALID_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i64 0, align 8
@VM_CONTEXT1_CNTL__READ_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i64 0, align 8
@VM_CONTEXT1_CNTL__WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i64 0, align 8
@VM_CONTEXT1_CNTL__EXECUTE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @gmc_v9_0_vm_fault_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v9_0_vm_fault_interrupt_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_vmhub*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i64, i64* @VM_CONTEXT1_CNTL__RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 8
  %16 = load i64, i64* @VM_CONTEXT1_CNTL__DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @VM_CONTEXT1_CNTL__PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @VM_CONTEXT1_CNTL__VALID_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @VM_CONTEXT1_CNTL__READ_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @VM_CONTEXT1_CNTL__WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @VM_CONTEXT1_CNTL__EXECUTE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 8
  %27 = or i64 %25, %26
  store i64 %27, i64* %12, align 8
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %106 [
    i32 129, label %29
    i32 128, label %68
  ]

29:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %30
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 1
  %39 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %38, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %39, i64 %40
  store %struct.amdgpu_vmhub* %41, %struct.amdgpu_vmhub** %9, align 8
  store i64 0, i64* %13, align 8
  br label %42

42:                                               ; preds = %60, %36
  %43 = load i64, i64* %13, align 8
  %44 = icmp ult i64 %43, 16
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %9, align 8
  %47 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @RREG32(i64 %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %12, align 8
  %54 = xor i64 %53, -1
  %55 = load i64, i64* %10, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @WREG32(i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i64, i64* %13, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %13, align 8
  br label %42

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %14, align 8
  br label %30

67:                                               ; preds = %30
  br label %107

68:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  br label %69

69:                                               ; preds = %102, %68
  %70 = load i64, i64* %14, align 8
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %69
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 1
  %78 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %78, i64 %79
  store %struct.amdgpu_vmhub* %80, %struct.amdgpu_vmhub** %9, align 8
  store i64 0, i64* %13, align 8
  br label %81

81:                                               ; preds = %98, %75
  %82 = load i64, i64* %13, align 8
  %83 = icmp ult i64 %82, 16
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %9, align 8
  %86 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %87, %88
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @RREG32(i64 %90)
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %10, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @WREG32(i64 %95, i64 %96)
  br label %98

98:                                               ; preds = %84
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %13, align 8
  br label %81

101:                                              ; preds = %81
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %14, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %14, align 8
  br label %69

105:                                              ; preds = %69
  br label %106

106:                                              ; preds = %4, %105
  br label %107

107:                                              ; preds = %106, %67
  ret i32 0
}

declare dso_local i64 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
