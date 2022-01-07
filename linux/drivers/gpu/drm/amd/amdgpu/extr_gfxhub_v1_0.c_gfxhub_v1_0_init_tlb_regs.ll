; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v1_0.c_gfxhub_v1_0_init_tlb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v1_0.c_gfxhub_v1_0_init_tlb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmMC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE = common dso_local global i32 0, align 4
@ENABLE_ADVANCED_DRIVER_MODEL = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS = common dso_local global i32 0, align 4
@ECO_BITS = common dso_local global i32 0, align 4
@MTYPE = common dso_local global i32 0, align 4
@MTYPE_UC = common dso_local global i32 0, align 4
@ATC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfxhub_v1_0_init_tlb_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfxhub_v1_0_init_tlb_regs(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @GC, align 4
  %5 = load i32, i32* @mmMC_VM_MX_L1_TLB_CNTL, align 4
  %6 = call i32 @RREG32_SOC15(i32 %4, i32 0, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %9 = load i32, i32* @ENABLE_L1_TLB, align 4
  %10 = call i32 @REG_SET_FIELD(i32 %7, i32 %8, i32 %9, i32 1)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %13 = load i32, i32* @SYSTEM_ACCESS_MODE, align 4
  %14 = call i32 @REG_SET_FIELD(i32 %11, i32 %12, i32 %13, i32 3)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %17 = load i32, i32* @ENABLE_ADVANCED_DRIVER_MODEL, align 4
  %18 = call i32 @REG_SET_FIELD(i32 %15, i32 %16, i32 %17, i32 1)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %21 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS, align 4
  %22 = call i32 @REG_SET_FIELD(i32 %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %25 = load i32, i32* @ECO_BITS, align 4
  %26 = call i32 @REG_SET_FIELD(i32 %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %29 = load i32, i32* @MTYPE, align 4
  %30 = load i32, i32* @MTYPE_UC, align 4
  %31 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %34 = load i32, i32* @ATC_EN, align 4
  %35 = call i32 @REG_SET_FIELD(i32 %32, i32 %33, i32 %34, i32 1)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @GC, align 4
  %37 = load i32, i32* @mmMC_VM_MX_L1_TLB_CNTL, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @WREG32_SOC15_RLC(i32 %36, i32 0, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15_RLC(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
