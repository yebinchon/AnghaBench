; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_process_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_process_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.kfd_vm_fault_info* }
%struct.kfd_vm_fault_info = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32, i32*, i32 }
%struct.amdgpu_task_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"GPU fault detected: %d 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c" Can't decode VM fault info here on SRIOV VF\0A\00", align 1
@mmVM_CONTEXT1_PROTECTION_FAULT_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PROTECTION_FAULT_MCCLIENT = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@amdgpu_vm_fault_stop = common dso_local global i64 0, align 8
@AMDGPU_VM_FAULT_STOP_FIRST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"GPU fault detected: %d 0x%08x for process %s pid %d thread %s pid %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@VM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@VMID = common dso_local global i32 0, align 4
@PROTECTIONS = common dso_local global i32 0, align 4
@MEMORY_CLIENT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @gmc_v8_0_process_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v8_0_process_interrupt(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca %struct.amdgpu_iv_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.amdgpu_task_info, align 4
  %13 = alloca %struct.kfd_vm_fault_info*, align 8
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %7, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %16 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %23 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %180

35:                                               ; preds = %3
  %36 = load i32, i32* @mmVM_CONTEXT1_PROTECTION_FAULT_ADDR, align 4
  %37 = call i32 @RREG32(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @mmVM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %39 = call i32 @RREG32(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @mmVM_CONTEXT1_PROTECTION_FAULT_MCCLIENT, align 4
  %41 = call i32 @RREG32(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @mmVM_CONTEXT1_CNTL2, align 4
  %43 = call i32 @WREG32_P(i32 %42, i32 1, i32 -2)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %180

50:                                               ; preds = %46, %35
  %51 = load i64, i64* @amdgpu_vm_fault_stop, align 8
  %52 = load i64, i64* @AMDGPU_VM_FAULT_STOP_FIRST, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %56 = call i32 @gmc_v8_0_set_fault_enable_default(%struct.amdgpu_device* %55, i32 0)
  br label %57

57:                                               ; preds = %54, %50
  %58 = call i64 (...) @printk_ratelimit()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %105

60:                                               ; preds = %57
  %61 = call i32 @memset(%struct.amdgpu_task_info* %12, i32 0, i32 16)
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %63 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %64 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @amdgpu_vm_get_task_info(%struct.amdgpu_device* %62, i32 %65, %struct.amdgpu_task_info* %12)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %71 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %74 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %12, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %12, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %12, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %12, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %77, i32 %79, i32 %81, i32 %83, i32 %85)
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (i32, i8*, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %102 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @gmc_v8_0_vm_decode_fault(%struct.amdgpu_device* %97, i32 %98, i32 %99, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %60, %57
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %108 = load i32, i32* @VMID, align 4
  %109 = call i8* @REG_GET_FIELD(i32 %106, i32 %107, i32 %108)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %11, align 4
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i64 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %179

115:                                              ; preds = %105
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = call i32 @atomic_read(i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %179, label %121

121:                                              ; preds = %115
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %123 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %124, align 8
  store %struct.kfd_vm_fault_info* %125, %struct.kfd_vm_fault_info** %13, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %128 = load i32, i32* @PROTECTIONS, align 4
  %129 = call i8* @REG_GET_FIELD(i32 %126, i32 %127, i32 %128)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %13, align 8
  %133 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %136 = load i32, i32* @MEMORY_CLIENT_ID, align 4
  %137 = call i8* @REG_GET_FIELD(i32 %134, i32 %135, i32 %136)
  %138 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %13, align 8
  %139 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %138, i32 0, i32 7
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %13, align 8
  %142 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %13, align 8
  %145 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %14, align 4
  %147 = and i32 %146, 7
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 1, i32 0
  %151 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %13, align 8
  %152 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %14, align 4
  %154 = and i32 %153, 8
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 1, i32 0
  %158 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %13, align 8
  %159 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %14, align 4
  %161 = and i32 %160, 16
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 1, i32 0
  %165 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %13, align 8
  %166 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %14, align 4
  %168 = and i32 %167, 32
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 1, i32 0
  %172 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %13, align 8
  %173 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 8
  %174 = call i32 (...) @mb()
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = call i32 @atomic_set(i32* %177, i32 1)
  br label %179

179:                                              ; preds = %121, %115, %105
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %179, %49, %18
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @gmc_v8_0_set_fault_enable_default(%struct.amdgpu_device*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @memset(%struct.amdgpu_task_info*, i32, i32) #1

declare dso_local i32 @amdgpu_vm_get_task_info(%struct.amdgpu_device*, i32, %struct.amdgpu_task_info*) #1

declare dso_local i32 @gmc_v8_0_vm_decode_fault(%struct.amdgpu_device*, i32, i32, i32, i32) #1

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
