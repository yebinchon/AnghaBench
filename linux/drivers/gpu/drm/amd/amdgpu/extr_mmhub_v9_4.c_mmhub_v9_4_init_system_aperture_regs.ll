; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_init_system_aperture_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_init_system_aperture_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmVMSHAREDVC0_MC_VM_AGP_BASE = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@mmVMSHAREDVC0_MC_VM_AGP_TOP = common dso_local global i32 0, align 4
@mmVMSHAREDVC0_MC_VM_AGP_BOT = common dso_local global i32 0, align 4
@mmVMSHAREDVC0_MC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i32 0, align 4
@mmVMSHAREDVC0_MC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i32 0, align 4
@mmVMSHAREDPF0_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB = common dso_local global i32 0, align 4
@mmVMSHAREDPF0_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32 = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32 = common dso_local global i32 0, align 4
@mmVML2PF0_VM_L2_PROTECTION_FAULT_CNTL2 = common dso_local global i32 0, align 4
@VML2PF0_VM_L2_PROTECTION_FAULT_CNTL2 = common dso_local global i32 0, align 4
@ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @mmhub_v9_4_init_system_aperture_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v9_4_init_system_aperture_regs(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @MMHUB, align 4
  %8 = load i32, i32* @mmVMSHAREDVC0_MC_VM_AGP_BASE, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %11 = mul nsw i32 %9, %10
  %12 = call i32 @WREG32_SOC15_OFFSET(i32 %7, i32 0, i32 %8, i32 %11, i32 0)
  %13 = load i32, i32* @MMHUB, align 4
  %14 = load i32, i32* @mmVMSHAREDVC0_MC_VM_AGP_TOP, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 24
  %23 = call i32 @WREG32_SOC15_OFFSET(i32 %13, i32 0, i32 %14, i32 %17, i32 %22)
  %24 = load i32, i32* @MMHUB, align 4
  %25 = load i32, i32* @mmVMSHAREDVC0_MC_VM_AGP_BOT, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 24
  %34 = call i32 @WREG32_SOC15_OFFSET(i32 %24, i32 0, i32 %25, i32 %28, i32 %33)
  %35 = load i32, i32* @MMHUB, align 4
  %36 = load i32, i32* @mmVMSHAREDVC0_MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @min(i32 %43, i32 %47)
  %49 = ashr i32 %48, 18
  %50 = call i32 @WREG32_SOC15_OFFSET(i32 %35, i32 0, i32 %36, i32 %39, i32 %49)
  %51 = load i32, i32* @MMHUB, align 4
  %52 = load i32, i32* @mmVMSHAREDVC0_MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @max(i32 %59, i32 %63)
  %65 = ashr i32 %64, 18
  %66 = call i32 @WREG32_SOC15_OFFSET(i32 %51, i32 0, i32 %52, i32 %55, i32 %65)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %70, %74
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %75, %79
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @MMHUB, align 4
  %82 = load i32, i32* @mmVMSHAREDPF0_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %5, align 4
  %87 = ashr i32 %86, 12
  %88 = call i32 @WREG32_SOC15_OFFSET(i32 %81, i32 0, i32 %82, i32 %85, i32 %87)
  %89 = load i32, i32* @MMHUB, align 4
  %90 = load i32, i32* @mmVMSHAREDPF0_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %5, align 4
  %95 = ashr i32 %94, 44
  %96 = call i32 @WREG32_SOC15_OFFSET(i32 %89, i32 0, i32 %90, i32 %93, i32 %95)
  %97 = load i32, i32* @MMHUB, align 4
  %98 = load i32, i32* @mmVML2PF0_VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 12
  %106 = call i32 @WREG32_SOC15_OFFSET(i32 %97, i32 0, i32 %98, i32 %101, i32 %105)
  %107 = load i32, i32* @MMHUB, align 4
  %108 = load i32, i32* @mmVML2PF0_VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 44
  %116 = call i32 @WREG32_SOC15_OFFSET(i32 %107, i32 0, i32 %108, i32 %111, i32 %115)
  %117 = load i32, i32* @MMHUB, align 4
  %118 = load i32, i32* @mmVML2PF0_VM_L2_PROTECTION_FAULT_CNTL2, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %121 = mul nsw i32 %119, %120
  %122 = call i32 @RREG32_SOC15_OFFSET(i32 %117, i32 0, i32 %118, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @VML2PF0_VM_L2_PROTECTION_FAULT_CNTL2, align 4
  %125 = load i32, i32* @ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY, align 4
  %126 = call i32 @REG_SET_FIELD(i32 %123, i32 %124, i32 %125, i32 1)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* @MMHUB, align 4
  %128 = load i32, i32* @mmVML2PF0_VM_L2_PROTECTION_FAULT_CNTL2, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @WREG32_SOC15_OFFSET(i32 %127, i32 0, i32 %128, i32 %131, i32 %132)
  ret void
}

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @RREG32_SOC15_OFFSET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
