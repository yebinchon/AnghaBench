; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_process_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_process_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.amdgpu_vmhub* }
%struct.amdgpu_vmhub = type { i32, i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32*, i64, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_task_info = type { i32, i32, i32, i32 }

@SOC15_IH_CLIENTID_VMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mmhub0\00", align 1
@AMDGPU_MMHUB_0 = common dso_local global i64 0, align 8
@SOC15_IH_CLIENTID_VMC1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mmhub1\00", align 1
@AMDGPU_MMHUB_1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"gfxhub0\00", align 1
@AMDGPU_GFXHUB_0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [97 x i8] c"[%s] %s page fault (src_id:%u ring:%u vmid:%u pasid:%u, for process %s pid %d thread %s pid %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"no-retry\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"  in page starting at address 0x%016llx from client %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"VM_L2_PROTECTION_FAULT_STATUS:0x%08X\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\09 MORE_FAULTS: 0x%lx\0A\00", align 1
@VM_L2_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@MORE_FAULTS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"\09 WALKER_ERROR: 0x%lx\0A\00", align 1
@WALKER_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"\09 PERMISSION_FAULTS: 0x%lx\0A\00", align 1
@PERMISSION_FAULTS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"\09 MAPPING_ERROR: 0x%lx\0A\00", align 1
@MAPPING_ERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"\09 RW: 0x%lx\0A\00", align 1
@RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @gmc_v9_0_process_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v9_0_process_interrupt(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca %struct.amdgpu_iv_entry*, align 8
  %8 = alloca %struct.amdgpu_vmhub*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i8], align 1
  %13 = alloca %struct.amdgpu_task_info, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %7, align 8
  %14 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %15 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %25 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 12
  store i32 %29, i32* %11, align 4
  %30 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %31 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 15
  %36 = shl i32 %35, 44
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %3
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %45 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %48 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @amdgpu_gmc_filter_faults(%struct.amdgpu_device* %42, i32 %43, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %212

53:                                               ; preds = %41, %3
  %54 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %55 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SOC15_IH_CLIENTID_VMC, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %61 = call i32 @snprintf(i8* %60, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 1
  %64 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %63, align 8
  %65 = load i64, i64* @AMDGPU_MMHUB_0, align 8
  %66 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %64, i64 %65
  store %struct.amdgpu_vmhub* %66, %struct.amdgpu_vmhub** %8, align 8
  br label %90

67:                                               ; preds = %53
  %68 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %69 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SOC15_IH_CLIENTID_VMC1, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %75 = call i32 @snprintf(i8* %74, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 1
  %78 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %77, align 8
  %79 = load i64, i64* @AMDGPU_MMHUB_1, align 8
  %80 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %78, i64 %79
  store %struct.amdgpu_vmhub* %80, %struct.amdgpu_vmhub** %8, align 8
  br label %89

81:                                               ; preds = %67
  %82 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %83 = call i32 @snprintf(i8* %82, i32 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 1
  %86 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %85, align 8
  %87 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %88 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %86, i64 %87
  store %struct.amdgpu_vmhub* %88, %struct.amdgpu_vmhub** %8, align 8
  br label %89

89:                                               ; preds = %81, %73
  br label %90

90:                                               ; preds = %89, %59
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %92 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %90
  %95 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %96 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %8, align 8
  %102 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @RREG32(i32 %103)
  br label %105

105:                                              ; preds = %100, %94
  %106 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %8, align 8
  %107 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @RREG32(i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %8, align 8
  %111 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @WREG32_P(i32 %112, i32 1, i32 -2)
  br label %114

114:                                              ; preds = %105, %90
  %115 = call i64 (...) @printk_ratelimit()
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %211

117:                                              ; preds = %114
  %118 = call i32 @memset(%struct.amdgpu_task_info* %13, i32 0, i32 16)
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %120 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %121 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @amdgpu_vm_get_task_info(%struct.amdgpu_device* %119, i32 %122, %struct.amdgpu_task_info* %13)
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %132 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %133 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %136 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %139 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %142 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %13, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %13, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %13, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.amdgpu_task_info, %struct.amdgpu_task_info* %13, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32, i8*, ...) @dev_err(i32 %126, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i64 0, i64 0), i8* %127, i8* %131, i32 %134, i32 %137, i32 %140, i32 %143, i32 %145, i32 %147, i32 %149, i32 %151)
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %158 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @dev_err(i32 %155, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %156, i32 %159)
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %162 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %210, label %164

164:                                              ; preds = %117
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %166 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = call i32 (i32, i8*, ...) @dev_err(i32 %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %168)
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %171 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @VM_L2_PROTECTION_FAULT_STATUS, align 4
  %175 = load i32, i32* @MORE_FAULTS, align 4
  %176 = call i32 @REG_GET_FIELD(i32 %173, i32 %174, i32 %175)
  %177 = call i32 (i32, i8*, ...) @dev_err(i32 %172, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %176)
  %178 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %179 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @VM_L2_PROTECTION_FAULT_STATUS, align 4
  %183 = load i32, i32* @WALKER_ERROR, align 4
  %184 = call i32 @REG_GET_FIELD(i32 %181, i32 %182, i32 %183)
  %185 = call i32 (i32, i8*, ...) @dev_err(i32 %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %184)
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %187 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @VM_L2_PROTECTION_FAULT_STATUS, align 4
  %191 = load i32, i32* @PERMISSION_FAULTS, align 4
  %192 = call i32 @REG_GET_FIELD(i32 %189, i32 %190, i32 %191)
  %193 = call i32 (i32, i8*, ...) @dev_err(i32 %188, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %192)
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %195 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @VM_L2_PROTECTION_FAULT_STATUS, align 4
  %199 = load i32, i32* @MAPPING_ERROR, align 4
  %200 = call i32 @REG_GET_FIELD(i32 %197, i32 %198, i32 %199)
  %201 = call i32 (i32, i8*, ...) @dev_err(i32 %196, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %200)
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %203 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @VM_L2_PROTECTION_FAULT_STATUS, align 4
  %207 = load i32, i32* @RW, align 4
  %208 = call i32 @REG_GET_FIELD(i32 %205, i32 %206, i32 %207)
  %209 = call i32 (i32, i8*, ...) @dev_err(i32 %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %164, %117
  br label %211

211:                                              ; preds = %210, %114
  store i32 0, i32* %4, align 4
  br label %212

212:                                              ; preds = %211, %52
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i64 @amdgpu_gmc_filter_faults(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

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
