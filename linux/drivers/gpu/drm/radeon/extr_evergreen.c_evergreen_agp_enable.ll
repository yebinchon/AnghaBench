; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_agp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_agp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i32 0, align 4
@VM_L2_CNTL3 = common dso_local global i32 0, align 4
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB0_CNTL = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB1_CNTL = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB2_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB0_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB1_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB2_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB3_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @evergreen_agp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evergreen_agp_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @VM_L2_CNTL, align 4
  %5 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %6 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %11 = or i32 %9, %10
  %12 = call i32 @WREG32(i32 %4, i32 %11)
  %13 = load i32, i32* @VM_L2_CNTL2, align 4
  %14 = call i32 @WREG32(i32 %13, i32 0)
  %15 = load i32, i32* @VM_L2_CNTL3, align 4
  %16 = call i32 @BANK_SELECT(i32 0)
  %17 = call i32 @CACHE_UPDATE_MODE(i32 2)
  %18 = or i32 %16, %17
  %19 = call i32 @WREG32(i32 %15, i32 %18)
  %20 = load i32, i32* @ENABLE_L1_TLB, align 4
  %21 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @EFFECTIVE_L1_TLB_SIZE(i32 5)
  %28 = or i32 %26, %27
  %29 = call i32 @EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @MC_VM_MD_L1_TLB0_CNTL, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @WREG32(i32 %31, i32 %32)
  %34 = load i32, i32* @MC_VM_MD_L1_TLB1_CNTL, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @WREG32(i32 %34, i32 %35)
  %37 = load i32, i32* @MC_VM_MD_L1_TLB2_CNTL, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @WREG32(i32 %37, i32 %38)
  %40 = load i32, i32* @MC_VM_MB_L1_TLB0_CNTL, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @WREG32(i32 %40, i32 %41)
  %43 = load i32, i32* @MC_VM_MB_L1_TLB1_CNTL, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @WREG32(i32 %43, i32 %44)
  %46 = load i32, i32* @MC_VM_MB_L1_TLB2_CNTL, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @WREG32(i32 %46, i32 %47)
  %49 = load i32, i32* @MC_VM_MB_L1_TLB3_CNTL, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  %52 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %53 = call i32 @WREG32(i32 %52, i32 0)
  %54 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %55 = call i32 @WREG32(i32 %54, i32 0)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @BANK_SELECT(i32) #1

declare dso_local i32 @CACHE_UPDATE_MODE(i32) #1

declare dso_local i32 @EFFECTIVE_L1_TLB_SIZE(i32) #1

declare dso_local i32 @EFFECTIVE_L1_QUEUE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
