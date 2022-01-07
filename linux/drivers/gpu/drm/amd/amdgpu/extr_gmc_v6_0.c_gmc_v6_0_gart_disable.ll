; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_gart_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_gart_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmVM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@mmMC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL__SYSTEM_ACCESS_MODE_MASK = common dso_local global i64 0, align 8
@MC_VM_MX_L1_TLB_CNTL__SYSTEM_APERTURE_UNMAPPED_ACCESS__SHIFT = common dso_local global i64 0, align 8
@mmVM_L2_CNTL = common dso_local global i32 0, align 4
@VM_L2_CNTL__ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE_MASK = common dso_local global i64 0, align 8
@VM_L2_CNTL__ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE_MASK = common dso_local global i64 0, align 8
@VM_L2_CNTL__EFFECTIVE_L2_QUEUE_SIZE__SHIFT = common dso_local global i64 0, align 8
@VM_L2_CNTL__CONTEXT1_IDENTITY_ACCESS_MODE__SHIFT = common dso_local global i64 0, align 8
@mmVM_L2_CNTL2 = common dso_local global i32 0, align 4
@mmVM_L2_CNTL3 = common dso_local global i32 0, align 4
@VM_L2_CNTL3__L2_CACHE_BIGK_ASSOCIATIVITY_MASK = common dso_local global i64 0, align 8
@VM_L2_CNTL3__L2_CACHE_BIGK_FRAGMENT_SIZE__SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gmc_v6_0_gart_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v6_0_gart_disable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load i32, i32* @mmVM_CONTEXT0_CNTL, align 4
  %4 = call i32 @WREG32(i32 %3, i64 0)
  %5 = load i32, i32* @mmVM_CONTEXT1_CNTL, align 4
  %6 = call i32 @WREG32(i32 %5, i64 0)
  %7 = load i32, i32* @mmMC_VM_MX_L1_TLB_CNTL, align 4
  %8 = load i64, i64* @MC_VM_MX_L1_TLB_CNTL__SYSTEM_ACCESS_MODE_MASK, align 8
  %9 = load i64, i64* @MC_VM_MX_L1_TLB_CNTL__SYSTEM_APERTURE_UNMAPPED_ACCESS__SHIFT, align 8
  %10 = shl i64 0, %9
  %11 = or i64 %8, %10
  %12 = call i32 @WREG32(i32 %7, i64 %11)
  %13 = load i32, i32* @mmVM_L2_CNTL, align 4
  %14 = load i64, i64* @VM_L2_CNTL__ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE_MASK, align 8
  %15 = load i64, i64* @VM_L2_CNTL__ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE_MASK, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @VM_L2_CNTL__EFFECTIVE_L2_QUEUE_SIZE__SHIFT, align 8
  %18 = shl i64 7, %17
  %19 = or i64 %16, %18
  %20 = load i64, i64* @VM_L2_CNTL__CONTEXT1_IDENTITY_ACCESS_MODE__SHIFT, align 8
  %21 = shl i64 1, %20
  %22 = or i64 %19, %21
  %23 = call i32 @WREG32(i32 %13, i64 %22)
  %24 = load i32, i32* @mmVM_L2_CNTL2, align 4
  %25 = call i32 @WREG32(i32 %24, i64 0)
  %26 = load i32, i32* @mmVM_L2_CNTL3, align 4
  %27 = load i64, i64* @VM_L2_CNTL3__L2_CACHE_BIGK_ASSOCIATIVITY_MASK, align 8
  %28 = load i64, i64* @VM_L2_CNTL3__L2_CACHE_BIGK_FRAGMENT_SIZE__SHIFT, align 8
  %29 = shl i64 0, %28
  %30 = or i64 %27, %29
  %31 = call i32 @WREG32(i32 %26, i64 %30)
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = call i32 @amdgpu_gart_table_vram_unpin(%struct.amdgpu_device* %32)
  ret void
}

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i32 @amdgpu_gart_table_vram_unpin(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
