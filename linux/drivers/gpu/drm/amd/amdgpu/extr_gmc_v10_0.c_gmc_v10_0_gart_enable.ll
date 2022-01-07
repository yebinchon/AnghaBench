; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*, i32*)* }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HDP = common dso_local global i32 0, align 4
@mmHDP_MISC_CNTL = common dso_local global i32 0, align 4
@HDP_MISC_CNTL__FLUSH_INVALIDATE_CACHE_MASK = common dso_local global i32 0, align 4
@mmHDP_HOST_PATH_CNTL = common dso_local global i32 0, align 4
@amdgpu_vm_fault_stop = common dso_local global i64 0, align 8
@AMDGPU_VM_FAULT_STOP_ALWAYS = common dso_local global i64 0, align 8
@AMDGPU_MMHUB_0 = common dso_local global i32 0, align 4
@AMDGPU_GFXHUB_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v10_0_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v10_0_gart_enable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %96

19:                                               ; preds = %1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 @amdgpu_gart_table_vram_pin(%struct.amdgpu_device* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %96

26:                                               ; preds = %19
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = call i32 @gfxhub_v2_0_gart_enable(%struct.amdgpu_device* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %96

33:                                               ; preds = %26
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = call i32 @mmhub_v2_0_gart_enable(%struct.amdgpu_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %96

40:                                               ; preds = %33
  %41 = load i32, i32* @HDP, align 4
  %42 = load i32, i32* @mmHDP_MISC_CNTL, align 4
  %43 = call i32 @RREG32_SOC15(i32 %41, i32 0, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @HDP_MISC_CNTL__FLUSH_INVALIDATE_CACHE_MASK, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @HDP, align 4
  %48 = load i32, i32* @mmHDP_MISC_CNTL, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @WREG32_SOC15(i32 %47, i32 0, i32 %48, i32 %49)
  %51 = load i32, i32* @HDP, align 4
  %52 = load i32, i32* @mmHDP_HOST_PATH_CNTL, align 4
  %53 = call i32 @RREG32_SOC15(i32 %51, i32 0, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @HDP, align 4
  %55 = load i32, i32* @mmHDP_HOST_PATH_CNTL, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @WREG32_SOC15(i32 %54, i32 0, i32 %55, i32 %56)
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.amdgpu_device*, i32*)*, i32 (%struct.amdgpu_device*, i32*)** %61, align 8
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = call i32 %62(%struct.amdgpu_device* %63, i32* null)
  %65 = load i64, i64* @amdgpu_vm_fault_stop, align 8
  %66 = load i64, i64* @AMDGPU_VM_FAULT_STOP_ALWAYS, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 1
  store i32 %69, i32* %5, align 4
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @gfxhub_v2_0_set_fault_enable_default(%struct.amdgpu_device* %70, i32 %71)
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @mmhub_v2_0_set_fault_enable_default(%struct.amdgpu_device* %73, i32 %74)
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %77 = load i32, i32* @AMDGPU_MMHUB_0, align 4
  %78 = call i32 @gmc_v10_0_flush_gpu_tlb(%struct.amdgpu_device* %76, i32 0, i32 %77, i32 0)
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = load i32, i32* @AMDGPU_GFXHUB_0, align 4
  %81 = call i32 @gmc_v10_0_flush_gpu_tlb(%struct.amdgpu_device* %79, i32 0, i32 %80, i32 0)
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = ashr i32 %85, 20
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @amdgpu_bo_gpu_offset(i32* %90)
  %92 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %86, i64 %91)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %40, %38, %31, %24, %12
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @amdgpu_gart_table_vram_pin(%struct.amdgpu_device*) #1

declare dso_local i32 @gfxhub_v2_0_gart_enable(%struct.amdgpu_device*) #1

declare dso_local i32 @mmhub_v2_0_gart_enable(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @gfxhub_v2_0_set_fault_enable_default(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mmhub_v2_0_set_fault_enable_default(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gmc_v10_0_flush_gpu_tlb(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

declare dso_local i64 @amdgpu_bo_gpu_offset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
