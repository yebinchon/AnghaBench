; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_init_system_aperture_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_init_system_aperture_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmMMMC_VM_AGP_BASE = common dso_local global i32 0, align 4
@mmMMMC_VM_AGP_TOP = common dso_local global i32 0, align 4
@mmMMMC_VM_AGP_BOT = common dso_local global i32 0, align 4
@mmMMMC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i32 0, align 4
@mmMMMC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i32 0, align 4
@mmMMMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB = common dso_local global i32 0, align 4
@mmMMMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB = common dso_local global i32 0, align 4
@mmMMVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32 = common dso_local global i32 0, align 4
@mmMMVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32 = common dso_local global i32 0, align 4
@mmMMVM_L2_PROTECTION_FAULT_CNTL2 = common dso_local global i32 0, align 4
@MMVM_L2_PROTECTION_FAULT_CNTL2 = common dso_local global i32 0, align 4
@ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @mmhub_v2_0_init_system_aperture_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v2_0_init_system_aperture_regs(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @MMHUB, align 4
  %6 = load i32, i32* @mmMMMC_VM_AGP_BASE, align 4
  %7 = call i32 @WREG32_SOC15(i32 %5, i32 0, i32 %6, i32 0)
  %8 = load i32, i32* @MMHUB, align 4
  %9 = load i32, i32* @mmMMMC_VM_AGP_TOP, align 4
  %10 = call i32 @WREG32_SOC15(i32 %8, i32 0, i32 %9, i32 0)
  %11 = load i32, i32* @MMHUB, align 4
  %12 = load i32, i32* @mmMMMC_VM_AGP_BOT, align 4
  %13 = call i32 @WREG32_SOC15(i32 %11, i32 0, i32 %12, i32 16777215)
  %14 = load i32, i32* @MMHUB, align 4
  %15 = load i32, i32* @mmMMMC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 18
  %21 = call i32 @WREG32_SOC15(i32 %14, i32 0, i32 %15, i32 %20)
  %22 = load i32, i32* @MMHUB, align 4
  %23 = load i32, i32* @mmMMMC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 18
  %29 = call i32 @WREG32_SOC15(i32 %22, i32 0, i32 %23, i32 %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %33, %37
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @MMHUB, align 4
  %45 = load i32, i32* @mmMMMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, align 4
  %46 = load i32, i32* %3, align 4
  %47 = ashr i32 %46, 12
  %48 = call i32 @WREG32_SOC15(i32 %44, i32 0, i32 %45, i32 %47)
  %49 = load i32, i32* @MMHUB, align 4
  %50 = load i32, i32* @mmMMMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB, align 4
  %51 = load i32, i32* %3, align 4
  %52 = ashr i32 %51, 44
  %53 = call i32 @WREG32_SOC15(i32 %49, i32 0, i32 %50, i32 %52)
  %54 = load i32, i32* @MMHUB, align 4
  %55 = load i32, i32* @mmMMVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 12
  %60 = call i32 @WREG32_SOC15(i32 %54, i32 0, i32 %55, i32 %59)
  %61 = load i32, i32* @MMHUB, align 4
  %62 = load i32, i32* @mmMMVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 44
  %67 = call i32 @WREG32_SOC15(i32 %61, i32 0, i32 %62, i32 %66)
  %68 = load i32, i32* @MMHUB, align 4
  %69 = load i32, i32* @mmMMVM_L2_PROTECTION_FAULT_CNTL2, align 4
  %70 = call i32 @RREG32_SOC15(i32 %68, i32 0, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @MMVM_L2_PROTECTION_FAULT_CNTL2, align 4
  %73 = load i32, i32* @ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY, align 4
  %74 = call i32 @REG_SET_FIELD(i32 %71, i32 %72, i32 %73, i32 1)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* @MMHUB, align 4
  %76 = load i32, i32* @mmMMVM_L2_PROTECTION_FAULT_CNTL2, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @WREG32_SOC15(i32 %75, i32 0, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
