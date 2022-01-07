; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*, i32*)* }

@golden_settings_vega10_hdp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHIP_ARCTURUS = common dso_local global i32 0, align 4
@HDP = common dso_local global i32 0, align 4
@HDP_MISC_CNTL = common dso_local global i32 0, align 4
@FLUSH_INVALIDATE_CACHE = common dso_local global i32 0, align 4
@mmHDP_HOST_PATH_CNTL = common dso_local global i32 0, align 4
@mmHDP_NONSURFACE_BASE = common dso_local global i32 0, align 4
@mmHDP_NONSURFACE_BASE_HI = common dso_local global i32 0, align 4
@amdgpu_vm_fault_stop = common dso_local global i64 0, align 8
@AMDGPU_VM_FAULT_STOP_ALWAYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v9_0_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v9_0_gart_enable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = load i32, i32* @golden_settings_vega10_hdp, align 4
  %10 = load i32, i32* @golden_settings_vega10_hdp, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %8, i32 %9, i32 %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %150

25:                                               ; preds = %1
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = call i32 @amdgpu_gart_table_vram_pin(%struct.amdgpu_device* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %150

32:                                               ; preds = %25
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %39 [
    i32 128, label %36
  ]

36:                                               ; preds = %32
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = call i32 @mmhub_v1_0_update_power_gating(%struct.amdgpu_device* %37, i32 1)
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %36
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = call i32 @gfxhub_v1_0_gart_enable(%struct.amdgpu_device* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %150

47:                                               ; preds = %40
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CHIP_ARCTURUS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = call i32 @mmhub_v9_4_gart_enable(%struct.amdgpu_device* %54)
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %47
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = call i32 @mmhub_v1_0_gart_enable(%struct.amdgpu_device* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %150

64:                                               ; preds = %59
  %65 = load i32, i32* @HDP, align 4
  %66 = load i32, i32* @HDP_MISC_CNTL, align 4
  %67 = load i32, i32* @FLUSH_INVALIDATE_CACHE, align 4
  %68 = call i32 @WREG32_FIELD15(i32 %65, i32 0, i32 %66, i32 %67, i32 1)
  %69 = load i32, i32* @HDP, align 4
  %70 = load i32, i32* @mmHDP_HOST_PATH_CNTL, align 4
  %71 = call i32 @RREG32_SOC15(i32 %69, i32 0, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @HDP, align 4
  %73 = load i32, i32* @mmHDP_HOST_PATH_CNTL, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @WREG32_SOC15(i32 %72, i32 0, i32 %73, i32 %74)
  %76 = load i32, i32* @HDP, align 4
  %77 = load i32, i32* @mmHDP_NONSURFACE_BASE, align 4
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = ashr i32 %81, 8
  %83 = call i32 @WREG32_SOC15(i32 %76, i32 0, i32 %77, i32 %82)
  %84 = load i32, i32* @HDP, align 4
  %85 = load i32, i32* @mmHDP_NONSURFACE_BASE_HI, align 4
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, 40
  %91 = call i32 @WREG32_SOC15(i32 %84, i32 0, i32 %85, i32 %90)
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32 (%struct.amdgpu_device*, i32*)*, i32 (%struct.amdgpu_device*, i32*)** %95, align 8
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %98 = call i32 %96(%struct.amdgpu_device* %97, i32* null)
  %99 = load i64, i64* @amdgpu_vm_fault_stop, align 8
  %100 = load i64, i64* @AMDGPU_VM_FAULT_STOP_ALWAYS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %64
  store i32 0, i32* %6, align 4
  br label %104

103:                                              ; preds = %64
  store i32 1, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %102
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @gfxhub_v1_0_set_fault_enable_default(%struct.amdgpu_device* %105, i32 %106)
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CHIP_ARCTURUS, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @mmhub_v9_4_set_fault_enable_default(%struct.amdgpu_device* %114, i32 %115)
  br label %121

117:                                              ; preds = %104
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @mmhub_v1_0_set_fault_enable_default(%struct.amdgpu_device* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %113
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %132, %121
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @gmc_v9_0_flush_gpu_tlb(%struct.amdgpu_device* %129, i32 0, i32 %130, i32 0)
  br label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %122

135:                                              ; preds = %122
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 20
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @amdgpu_bo_gpu_offset(i32* %144)
  %146 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %140, i64 %145)
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %135, %62, %45, %30, %18
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @amdgpu_gart_table_vram_pin(%struct.amdgpu_device*) #1

declare dso_local i32 @mmhub_v1_0_update_power_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfxhub_v1_0_gart_enable(%struct.amdgpu_device*) #1

declare dso_local i32 @mmhub_v9_4_gart_enable(%struct.amdgpu_device*) #1

declare dso_local i32 @mmhub_v1_0_gart_enable(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_FIELD15(i32, i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @gfxhub_v1_0_set_fault_enable_default(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mmhub_v9_4_set_fault_enable_default(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mmhub_v1_0_set_fault_enable_default(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gmc_v9_0_flush_gpu_tlb(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

declare dso_local i64 @amdgpu_bo_gpu_offset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
