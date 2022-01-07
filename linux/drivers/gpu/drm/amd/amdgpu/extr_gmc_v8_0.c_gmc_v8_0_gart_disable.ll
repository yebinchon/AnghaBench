; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_gart_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_gart_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmVM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@mmMC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@ENABLE_ADVANCED_DRIVER_MODEL = common dso_local global i32 0, align 4
@mmVM_L2_CNTL = common dso_local global i32 0, align 4
@VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@mmVM_L2_CNTL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gmc_v8_0_gart_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v8_0_gart_disable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @mmVM_CONTEXT0_CNTL, align 4
  %5 = call i32 @WREG32(i32 %4, i64 0)
  %6 = load i32, i32* @mmVM_CONTEXT1_CNTL, align 4
  %7 = call i32 @WREG32(i32 %6, i64 0)
  %8 = load i32, i32* @mmMC_VM_MX_L1_TLB_CNTL, align 4
  %9 = call i64 @RREG32(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %12 = load i32, i32* @ENABLE_L1_TLB, align 4
  %13 = call i64 @REG_SET_FIELD(i64 %10, i32 %11, i32 %12, i32 0)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %16 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %17 = call i64 @REG_SET_FIELD(i64 %14, i32 %15, i32 %16, i32 0)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %20 = load i32, i32* @ENABLE_ADVANCED_DRIVER_MODEL, align 4
  %21 = call i64 @REG_SET_FIELD(i64 %18, i32 %19, i32 %20, i32 0)
  store i64 %21, i64* %3, align 8
  %22 = load i32, i32* @mmMC_VM_MX_L1_TLB_CNTL, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @WREG32(i32 %22, i64 %23)
  %25 = load i32, i32* @mmVM_L2_CNTL, align 4
  %26 = call i64 @RREG32(i32 %25)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* @VM_L2_CNTL, align 4
  %29 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %30 = call i64 @REG_SET_FIELD(i64 %27, i32 %28, i32 %29, i32 0)
  store i64 %30, i64* %3, align 8
  %31 = load i32, i32* @mmVM_L2_CNTL, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @WREG32(i32 %31, i64 %32)
  %34 = load i32, i32* @mmVM_L2_CNTL2, align 4
  %35 = call i32 @WREG32(i32 %34, i64 0)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = call i32 @amdgpu_gart_table_vram_unpin(%struct.amdgpu_device* %36)
  ret void
}

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @amdgpu_gart_table_vram_unpin(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
