; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_process_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_process_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32*, i32 }

@mmVM_CONTEXT1_PROTECTION_FAULT_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@amdgpu_vm_fault_stop = common dso_local global i64 0, align 8
@AMDGPU_VM_FAULT_STOP_FIRST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"GPU fault detected: %d 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @gmc_v6_0_process_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v6_0_process_interrupt(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca %struct.amdgpu_iv_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %7, align 8
  %10 = load i32, i32* @mmVM_CONTEXT1_PROTECTION_FAULT_ADDR, align 4
  %11 = call i32 @RREG32(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @mmVM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @mmVM_CONTEXT1_CNTL2, align 4
  %15 = call i32 @WREG32_P(i32 %14, i32 1, i32 -2)
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %60

22:                                               ; preds = %18, %3
  %23 = load i64, i64* @amdgpu_vm_fault_stop, align 8
  %24 = load i64, i64* @AMDGPU_VM_FAULT_STOP_FIRST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %28 = call i32 @gmc_v6_0_set_fault_enable_default(%struct.amdgpu_device* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %22
  %30 = call i64 (...) @printk_ratelimit()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %37 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %43)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @gmc_v6_0_vm_decode_fault(%struct.amdgpu_device* %55, i32 %56, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %32, %29
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %21
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @gmc_v6_0_set_fault_enable_default(%struct.amdgpu_device*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @gmc_v6_0_vm_decode_fault(%struct.amdgpu_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
