; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_process_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_process_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.kfd_vm_fault_info* }
%struct.kfd_vm_fault_info = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32, i32*, i32 }

@mmVM_CONTEXT1_PROTECTION_FAULT_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PROTECTION_FAULT_MCCLIENT = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@amdgpu_vm_fault_stop = common dso_local global i64 0, align 8
@AMDGPU_VM_FAULT_STOP_FIRST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"GPU fault detected: %d 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@VM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@VMID = common dso_local global i32 0, align 4
@PROTECTIONS = common dso_local global i32 0, align 4
@MEMORY_CLIENT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @gmc_v7_0_process_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v7_0_process_interrupt(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca %struct.amdgpu_iv_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kfd_vm_fault_info*, align 8
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %7, align 8
  %14 = load i32, i32* @mmVM_CONTEXT1_PROTECTION_FAULT_ADDR, align 4
  %15 = call i32 @RREG32(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @mmVM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @mmVM_CONTEXT1_PROTECTION_FAULT_MCCLIENT, align 4
  %19 = call i32 @RREG32(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @mmVM_CONTEXT1_CNTL2, align 4
  %21 = call i32 @WREG32_P(i32 %20, i32 1, i32 -2)
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %144

28:                                               ; preds = %24, %3
  %29 = load i64, i64* @amdgpu_vm_fault_stop, align 8
  %30 = load i64, i64* @AMDGPU_VM_FAULT_STOP_FIRST, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %34 = call i32 @gmc_v7_0_set_fault_enable_default(%struct.amdgpu_device* %33, i32 0)
  br label %35

35:                                               ; preds = %32, %28
  %36 = call i64 (...) @printk_ratelimit()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %46 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %49)
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %66 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @gmc_v7_0_vm_decode_fault(%struct.amdgpu_device* %61, i32 %62, i32 %63, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %38, %35
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %72 = load i32, i32* @VMID, align 4
  %73 = call i8* @REG_GET_FIELD(i32 %70, i32 %71, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i64 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %143

79:                                               ; preds = %69
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @atomic_read(i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %143, label %85

85:                                               ; preds = %79
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %88, align 8
  store %struct.kfd_vm_fault_info* %89, %struct.kfd_vm_fault_info** %12, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %92 = load i32, i32* @PROTECTIONS, align 4
  %93 = call i8* @REG_GET_FIELD(i32 %90, i32 %91, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %12, align 8
  %97 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %100 = load i32, i32* @MEMORY_CLIENT_ID, align 4
  %101 = call i8* @REG_GET_FIELD(i32 %98, i32 %99, i32 %100)
  %102 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %12, align 8
  %103 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %102, i32 0, i32 7
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %12, align 8
  %106 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %12, align 8
  %109 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %13, align 4
  %111 = and i32 %110, 7
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 1, i32 0
  %115 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %12, align 8
  %116 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %13, align 4
  %118 = and i32 %117, 8
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 1, i32 0
  %122 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %12, align 8
  %123 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %13, align 4
  %125 = and i32 %124, 16
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 0
  %129 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %12, align 8
  %130 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %13, align 4
  %132 = and i32 %131, 32
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 1, i32 0
  %136 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %12, align 8
  %137 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 8
  %138 = call i32 (...) @mb()
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = call i32 @atomic_set(i32* %141, i32 1)
  br label %143

143:                                              ; preds = %85, %79, %69
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %27
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @gmc_v7_0_set_fault_enable_default(%struct.amdgpu_device*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @gmc_v7_0_vm_decode_fault(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i8* @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i64 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
