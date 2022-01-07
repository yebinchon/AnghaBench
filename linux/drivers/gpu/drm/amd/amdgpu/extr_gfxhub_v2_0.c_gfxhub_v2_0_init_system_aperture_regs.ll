; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v2_0.c_gfxhub_v2_0_init_system_aperture_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v2_0.c_gfxhub_v2_0_init_system_aperture_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmGCMC_VM_AGP_BASE = common dso_local global i32 0, align 4
@mmGCMC_VM_AGP_TOP = common dso_local global i32 0, align 4
@mmGCMC_VM_AGP_BOT = common dso_local global i32 0, align 4
@mmGCMC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i32 0, align 4
@mmGCMC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i32 0, align 4
@mmGCMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB = common dso_local global i32 0, align 4
@mmGCMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB = common dso_local global i32 0, align 4
@mmGCVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32 = common dso_local global i32 0, align 4
@mmGCVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32 = common dso_local global i32 0, align 4
@GCVM_L2_PROTECTION_FAULT_CNTL2 = common dso_local global i32 0, align 4
@ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfxhub_v2_0_init_system_aperture_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfxhub_v2_0_init_system_aperture_regs(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @GC, align 4
  %5 = load i32, i32* @mmGCMC_VM_AGP_BASE, align 4
  %6 = call i32 @WREG32_SOC15(i32 %4, i32 0, i32 %5, i32 0)
  %7 = load i32, i32* @GC, align 4
  %8 = load i32, i32* @mmGCMC_VM_AGP_TOP, align 4
  %9 = call i32 @WREG32_SOC15(i32 %7, i32 0, i32 %8, i32 0)
  %10 = load i32, i32* @GC, align 4
  %11 = load i32, i32* @mmGCMC_VM_AGP_BOT, align 4
  %12 = call i32 @WREG32_SOC15(i32 %10, i32 0, i32 %11, i32 16777215)
  %13 = load i32, i32* @GC, align 4
  %14 = load i32, i32* @mmGCMC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 18
  %20 = call i32 @WREG32_SOC15(i32 %13, i32 0, i32 %14, i32 %19)
  %21 = load i32, i32* @GC, align 4
  %22 = load i32, i32* @mmGCMC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 18
  %28 = call i32 @WREG32_SOC15(i32 %21, i32 0, i32 %22, i32 %27)
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %32, %36
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %37, %41
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @GC, align 4
  %44 = load i32, i32* @mmGCMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, align 4
  %45 = load i32, i32* %3, align 4
  %46 = ashr i32 %45, 12
  %47 = call i32 @WREG32_SOC15(i32 %43, i32 0, i32 %44, i32 %46)
  %48 = load i32, i32* @GC, align 4
  %49 = load i32, i32* @mmGCMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB, align 4
  %50 = load i32, i32* %3, align 4
  %51 = ashr i32 %50, 44
  %52 = call i32 @WREG32_SOC15(i32 %48, i32 0, i32 %49, i32 %51)
  %53 = load i32, i32* @GC, align 4
  %54 = load i32, i32* @mmGCVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32, align 4
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 12
  %59 = call i32 @WREG32_SOC15(i32 %53, i32 0, i32 %54, i32 %58)
  %60 = load i32, i32* @GC, align 4
  %61 = load i32, i32* @mmGCVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32, align 4
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 44
  %66 = call i32 @WREG32_SOC15(i32 %60, i32 0, i32 %61, i32 %65)
  %67 = load i32, i32* @GC, align 4
  %68 = load i32, i32* @GCVM_L2_PROTECTION_FAULT_CNTL2, align 4
  %69 = load i32, i32* @ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY, align 4
  %70 = call i32 @WREG32_FIELD15(i32 %67, i32 0, i32 %68, i32 %69, i32 1)
  ret void
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_FIELD15(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
