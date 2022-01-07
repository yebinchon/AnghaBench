; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v1_0.c_gfxhub_v1_0_init_system_aperture_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v1_0.c_gfxhub_v1_0_init_system_aperture_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GC = common dso_local global i32 0, align 4
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
@VM_L2_PROTECTION_FAULT_CNTL2 = common dso_local global i32 0, align 4
@ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfxhub_v1_0_init_system_aperture_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfxhub_v1_0_init_system_aperture_regs(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @GC, align 4
  %5 = load i32, i32* @mmMC_VM_AGP_BASE, align 4
  %6 = call i32 @WREG32_SOC15_RLC(i32 %4, i32 0, i32 %5, i32 0)
  %7 = load i32, i32* @GC, align 4
  %8 = load i32, i32* @mmMC_VM_AGP_BOT, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 24
  %14 = call i32 @WREG32_SOC15_RLC(i32 %7, i32 0, i32 %8, i32 %13)
  %15 = load i32, i32* @GC, align 4
  %16 = load i32, i32* @mmMC_VM_AGP_TOP, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 24
  %22 = call i32 @WREG32_SOC15_RLC(i32 %15, i32 0, i32 %16, i32 %21)
  %23 = load i32, i32* @GC, align 4
  %24 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @min(i32 %28, i32 %32)
  %34 = ashr i32 %33, 18
  %35 = call i32 @WREG32_SOC15_RLC(i32 %23, i32 0, i32 %24, i32 %34)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CHIP_RAVEN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %1
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 8
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load i32, i32* @GC, align 4
  %48 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 18
  %54 = add nsw i32 %53, 1
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 18
  %60 = call i32 @max(i32 %54, i32 %59)
  %61 = call i32 @WREG32_SOC15_RLC(i32 %47, i32 0, i32 %48, i32 %60)
  br label %76

62:                                               ; preds = %41, %1
  %63 = load i32, i32* @GC, align 4
  %64 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @max(i32 %68, i32 %72)
  %74 = ashr i32 %73, 18
  %75 = call i32 @WREG32_SOC15_RLC(i32 %63, i32 0, i32 %64, i32 %74)
  br label %76

76:                                               ; preds = %62, %46
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %80, %84
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %85, %89
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @GC, align 4
  %92 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, align 4
  %93 = load i32, i32* %3, align 4
  %94 = ashr i32 %93, 12
  %95 = call i32 @WREG32_SOC15(i32 %91, i32 0, i32 %92, i32 %94)
  %96 = load i32, i32* @GC, align 4
  %97 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB, align 4
  %98 = load i32, i32* %3, align 4
  %99 = ashr i32 %98, 44
  %100 = call i32 @WREG32_SOC15(i32 %96, i32 0, i32 %97, i32 %99)
  %101 = load i32, i32* @GC, align 4
  %102 = load i32, i32* @mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32, align 4
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 12
  %107 = call i32 @WREG32_SOC15(i32 %101, i32 0, i32 %102, i32 %106)
  %108 = load i32, i32* @GC, align 4
  %109 = load i32, i32* @mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32, align 4
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 44
  %114 = call i32 @WREG32_SOC15(i32 %108, i32 0, i32 %109, i32 %113)
  %115 = load i32, i32* @GC, align 4
  %116 = load i32, i32* @VM_L2_PROTECTION_FAULT_CNTL2, align 4
  %117 = load i32, i32* @ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY, align 4
  %118 = call i32 @WREG32_FIELD15(i32 %115, i32 0, i32 %116, i32 %117, i32 1)
  ret void
}

declare dso_local i32 @WREG32_SOC15_RLC(i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_FIELD15(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
