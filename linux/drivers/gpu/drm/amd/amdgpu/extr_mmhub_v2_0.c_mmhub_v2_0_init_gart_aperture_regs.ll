; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_init_gart_aperture_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_init_gart_aperture_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmMMVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 = common dso_local global i32 0, align 4
@mmMMVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 = common dso_local global i32 0, align 4
@mmMMVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 = common dso_local global i32 0, align 4
@mmMMVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @mmhub_v2_0_init_gart_aperture_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v2_0_init_gart_aperture_regs(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = call i32 @mmhub_v2_0_init_gart_pt_regs(%struct.amdgpu_device* %3)
  %5 = load i32, i32* @MMHUB, align 4
  %6 = load i32, i32* @mmMMVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 12
  %12 = call i32 @WREG32_SOC15(i32 %5, i32 0, i32 %6, i32 %11)
  %13 = load i32, i32* @MMHUB, align 4
  %14 = load i32, i32* @mmMMVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 44
  %20 = call i32 @WREG32_SOC15(i32 %13, i32 0, i32 %14, i32 %19)
  %21 = load i32, i32* @MMHUB, align 4
  %22 = load i32, i32* @mmMMVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 12
  %28 = call i32 @WREG32_SOC15(i32 %21, i32 0, i32 %22, i32 %27)
  %29 = load i32, i32* @MMHUB, align 4
  %30 = load i32, i32* @mmMMVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32, align 4
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 44
  %36 = call i32 @WREG32_SOC15(i32 %29, i32 0, i32 %30, i32 %35)
  ret void
}

declare dso_local i32 @mmhub_v2_0_init_gart_pt_regs(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
