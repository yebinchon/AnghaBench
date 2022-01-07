; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_init_system_aperture_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_init_system_aperture_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmMC_VM_AGP_BASE = common dso_local global i32 0, align 4
@mmMC_VM_AGP_BOT = common dso_local global i32 0, align 4
@mmMC_VM_AGP_TOP = common dso_local global i32 0, align 4
@mmMC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i32 0, align 4
@CHIP_RAVEN = common dso_local global i64 0, align 8
@mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i32 0, align 4
@mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB = common dso_local global i32 0, align 4
@mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB = common dso_local global i32 0, align 4
@mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32 = common dso_local global i32 0, align 4
@mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32 = common dso_local global i32 0, align 4
@mmVM_L2_PROTECTION_FAULT_CNTL2 = common dso_local global i32 0, align 4
@VM_L2_PROTECTION_FAULT_CNTL2 = common dso_local global i32 0, align 4
@ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @mmhub_v1_0_init_system_aperture_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v1_0_init_system_aperture_regs(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @MMHUB, align 4
  %6 = load i32, i32* @mmMC_VM_AGP_BASE, align 4
  %7 = call i32 @WREG32_SOC15(i32 %5, i32 0, i32 %6, i32 0)
  %8 = load i32, i32* @MMHUB, align 4
  %9 = load i32, i32* @mmMC_VM_AGP_BOT, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 24
  %15 = call i32 @WREG32_SOC15(i32 %8, i32 0, i32 %9, i32 %14)
  %16 = load i32, i32* @MMHUB, align 4
  %17 = load i32, i32* @mmMC_VM_AGP_TOP, align 4
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 24
  %23 = call i32 @WREG32_SOC15(i32 %16, i32 0, i32 %17, i32 %22)
  %24 = load i32, i32* @MMHUB, align 4
  %25 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @min(i32 %29, i32 %33)
  %35 = ashr i32 %34, 18
  %36 = call i32 @WREG32_SOC15(i32 %24, i32 0, i32 %25, i32 %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHIP_RAVEN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %1
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %45, 8
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load i32, i32* @MMHUB, align 4
  %49 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 18
  %55 = add nsw i32 %54, 1
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 18
  %61 = call i32 @max(i32 %55, i32 %60)
  %62 = call i32 @WREG32_SOC15(i32 %48, i32 0, i32 %49, i32 %61)
  br label %77

63:                                               ; preds = %42, %1
  %64 = load i32, i32* @MMHUB, align 4
  %65 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @max(i32 %69, i32 %73)
  %75 = ashr i32 %74, 18
  %76 = call i32 @WREG32_SOC15(i32 %64, i32 0, i32 %65, i32 %75)
  br label %77

77:                                               ; preds = %63, %47
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %79 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %132

82:                                               ; preds = %77
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %86, %90
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %91, %95
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* @MMHUB, align 4
  %98 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, align 4
  %99 = load i32, i32* %3, align 4
  %100 = ashr i32 %99, 12
  %101 = call i32 @WREG32_SOC15(i32 %97, i32 0, i32 %98, i32 %100)
  %102 = load i32, i32* @MMHUB, align 4
  %103 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB, align 4
  %104 = load i32, i32* %3, align 4
  %105 = ashr i32 %104, 44
  %106 = call i32 @WREG32_SOC15(i32 %102, i32 0, i32 %103, i32 %105)
  %107 = load i32, i32* @MMHUB, align 4
  %108 = load i32, i32* @mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32, align 4
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 12
  %113 = call i32 @WREG32_SOC15(i32 %107, i32 0, i32 %108, i32 %112)
  %114 = load i32, i32* @MMHUB, align 4
  %115 = load i32, i32* @mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32, align 4
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 44
  %120 = call i32 @WREG32_SOC15(i32 %114, i32 0, i32 %115, i32 %119)
  %121 = load i32, i32* @MMHUB, align 4
  %122 = load i32, i32* @mmVM_L2_PROTECTION_FAULT_CNTL2, align 4
  %123 = call i32 @RREG32_SOC15(i32 %121, i32 0, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL2, align 4
  %126 = load i32, i32* @ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY, align 4
  %127 = call i32 @REG_SET_FIELD(i32 %124, i32 %125, i32 %126, i32 1)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* @MMHUB, align 4
  %129 = load i32, i32* @mmVM_L2_PROTECTION_FAULT_CNTL2, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @WREG32_SOC15(i32 %128, i32 0, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %82, %81
  ret void
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
