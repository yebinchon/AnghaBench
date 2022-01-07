; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_init_gart_aperture_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_init_gart_aperture_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 = common dso_local global i32 0, align 4
@mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 = common dso_local global i32 0, align 4
@mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @mmhub_v9_4_init_gart_aperture_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v9_4_init_gart_aperture_regs(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @amdgpu_gmc_pd_addr(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @mmhub_v9_4_setup_vm_pt_regs(%struct.amdgpu_device* %11, i32 %12, i32 0, i32 %13)
  %15 = load i32, i32* @MMHUB, align 4
  %16 = load i32, i32* @mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 12
  %25 = call i32 @WREG32_SOC15_OFFSET(i32 %15, i32 0, i32 %16, i32 %19, i32 %24)
  %26 = load i32, i32* @MMHUB, align 4
  %27 = load i32, i32* @mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 44
  %36 = call i32 @WREG32_SOC15_OFFSET(i32 %26, i32 0, i32 %27, i32 %30, i32 %35)
  %37 = load i32, i32* @MMHUB, align 4
  %38 = load i32, i32* @mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 12
  %47 = call i32 @WREG32_SOC15_OFFSET(i32 %37, i32 0, i32 %38, i32 %41, i32 %46)
  %48 = load i32, i32* @MMHUB, align 4
  %49 = load i32, i32* @mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 44
  %58 = call i32 @WREG32_SOC15_OFFSET(i32 %48, i32 0, i32 %49, i32 %52, i32 %57)
  ret void
}

declare dso_local i32 @amdgpu_gmc_pd_addr(i32) #1

declare dso_local i32 @mmhub_v9_4_setup_vm_pt_regs(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
