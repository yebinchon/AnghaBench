; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_process_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_process_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.amdgpu_vmhub* }
%struct.amdgpu_vmhub = type { i32, i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i64, i32, i32, i32, i32, i32, i64* }
%struct.amdgpu_task_info = type { i32, i32, i32, i32 }

@AMDGPU_GFXHUB_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [94 x i8] c"[%s] page fault (src_id:%u ring:%u vmid:%u pasid:%u, for process %s pid %d thread %s pid %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"mmhub\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gfxhub\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"  in page starting at address 0x%016llx from client %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"GCVM_L2_PROTECTION_FAULT_STATUS:0x%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\09 MORE_FAULTS: 0x%lx\0A\00", align 1
@GCVM_L2_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@MORE_FAULTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"\09 WALKER_ERROR: 0x%lx\0A\00", align 1
@WALKER_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"\09 PERMISSION_FAULTS: 0x%lx\0A\00", align 1
@PERMISSION_FAULTS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"\09 MAPPING_ERROR: 0x%lx\0A\00", align 1
@MAPPING_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"\09 RW: 0x%lx\0A\00", align 1
@RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @gmc_v10_0_process_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v10_0_process_interrupt(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_irq_src*, align 8
  %6 = alloca %struct.amdgpu_iv_entry*, align 8
  %7 = alloca %struct.amdgpu_vmhub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_task_info, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %5, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %12, align 8
  %14 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %13, i64 %16
  store %struct.amdgpu_vmhub* %17, %struct.amdgpu_vmhub** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %19 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %18, i32 0, i32 6
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 12
  store i32 %24, i32* %9, align 4
  %25 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %25, i32 0, i32 6
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 15
  %32 = shl i32 %31, 44
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %3
  %39 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %7, align 8
  %46 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @RREG32(i32 %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %7, align 8
  %51 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @RREG32(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %7, align 8
  %55 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @WREG32_P(i32 %56, i32 1, i32 -2)
  br label %58

58:                                               ; preds = %49, %3
  %59 = call i64 (...) @printk_ratelimit()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %156

61:                                               ; preds = %58
  %62 = call i32 @memset(%struct.amdgpu_task_info* %10, i32 0, i32 16)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %64 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %65 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @amdgpu_vm_get_task_info(%struct.amdgpu_device* %63, i32 %66, %struct.amdgpu_task_info* %10)
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %72 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %77 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %78 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %81 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %84 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %87 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %10, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %10, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %10, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %10, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i8* %76, i32 %79, i32 %82, i32 %85, i32 %88, i32 %90, i32 %92, i32 %94, i32 %96)
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %103 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %107 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %155, label %109

109:                                              ; preds = %61
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i32, i8*, ...) @dev_err(i32 %112, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @GCVM_L2_PROTECTION_FAULT_STATUS, align 4
  %120 = load i32, i32* @MORE_FAULTS, align 4
  %121 = call i32 @REG_GET_FIELD(i32 %118, i32 %119, i32 %120)
  %122 = call i32 (i32, i8*, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @GCVM_L2_PROTECTION_FAULT_STATUS, align 4
  %128 = load i32, i32* @WALKER_ERROR, align 4
  %129 = call i32 @REG_GET_FIELD(i32 %126, i32 %127, i32 %128)
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @GCVM_L2_PROTECTION_FAULT_STATUS, align 4
  %136 = load i32, i32* @PERMISSION_FAULTS, align 4
  %137 = call i32 @REG_GET_FIELD(i32 %134, i32 %135, i32 %136)
  %138 = call i32 (i32, i8*, ...) @dev_err(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @GCVM_L2_PROTECTION_FAULT_STATUS, align 4
  %144 = load i32, i32* @MAPPING_ERROR, align 4
  %145 = call i32 @REG_GET_FIELD(i32 %142, i32 %143, i32 %144)
  %146 = call i32 (i32, i8*, ...) @dev_err(i32 %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %145)
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @GCVM_L2_PROTECTION_FAULT_STATUS, align 4
  %152 = load i32, i32* @RW, align 4
  %153 = call i32 @REG_GET_FIELD(i32 %150, i32 %151, i32 %152)
  %154 = call i32 (i32, i8*, ...) @dev_err(i32 %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %109, %61
  br label %156

156:                                              ; preds = %155, %58
  ret i32 0
}

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @memset(%struct.amdgpu_task_info*, i32, i32) #1

declare dso_local i32 @amdgpu_vm_get_task_info(%struct.amdgpu_device*, i32, %struct.amdgpu_task_info*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
