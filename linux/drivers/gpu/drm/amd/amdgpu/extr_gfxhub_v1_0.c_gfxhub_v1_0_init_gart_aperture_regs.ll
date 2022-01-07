; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v1_0.c_gfxhub_v1_0_init_gart_aperture_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v1_0.c_gfxhub_v1_0_init_gart_aperture_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfxhub_v1_0_init_gart_aperture_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfxhub_v1_0_init_gart_aperture_regs(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @amdgpu_gmc_pd_addr(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @gfxhub_v1_0_setup_vm_pt_regs(%struct.amdgpu_device* %9, i32 0, i32 %10)
  %12 = load i32, i32* @GC, align 4
  %13 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 12
  %19 = call i32 @WREG32_SOC15(i32 %12, i32 0, i32 %13, i32 %18)
  %20 = load i32, i32* @GC, align 4
  %21 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 44
  %27 = call i32 @WREG32_SOC15(i32 %20, i32 0, i32 %21, i32 %26)
  %28 = load i32, i32* @GC, align 4
  %29 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32, align 4
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 12
  %35 = call i32 @WREG32_SOC15(i32 %28, i32 0, i32 %29, i32 %34)
  %36 = load i32, i32* @GC, align 4
  %37 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32, align 4
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 44
  %43 = call i32 @WREG32_SOC15(i32 %36, i32 0, i32 %37, i32 %42)
  ret void
}

declare dso_local i32 @amdgpu_gmc_pd_addr(i32) #1

declare dso_local i32 @gfxhub_v1_0_setup_vm_pt_regs(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
