; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_pcie_gart_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_pcie_gart_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i32 0, align 4
@VM_L2_CNTL3 = common dso_local global i32 0, align 4
@L2_CACHE_BIGK_ASSOCIATIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @cayman_pcie_gart_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cayman_pcie_gart_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %9 = load i32, i32* %3, align 4
  %10 = shl i32 %9, 2
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  %13 = call i32 @RREG32(i64 %12)
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %13, i32* %20, align 4
  br label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %3, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  %25 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %26 = call i32 @WREG32(i32 %25, i32 0)
  %27 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %28 = call i32 @WREG32(i32 %27, i32 0)
  %29 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %30 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %31 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @WREG32(i32 %29, i32 %34)
  %36 = load i32, i32* @VM_L2_CNTL, align 4
  %37 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %38 = load i32, i32* @ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %41 = or i32 %39, %40
  %42 = call i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32 1)
  %43 = or i32 %41, %42
  %44 = call i32 @WREG32(i32 %36, i32 %43)
  %45 = load i32, i32* @VM_L2_CNTL2, align 4
  %46 = call i32 @WREG32(i32 %45, i32 0)
  %47 = load i32, i32* @VM_L2_CNTL3, align 4
  %48 = load i32, i32* @L2_CACHE_BIGK_ASSOCIATIVITY, align 4
  %49 = call i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32 6)
  %50 = or i32 %48, %49
  %51 = call i32 @WREG32(i32 %47, i32 %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = call i32 @radeon_gart_table_vram_unpin(%struct.radeon_device* %52)
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32) #1

declare dso_local i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32) #1

declare dso_local i32 @radeon_gart_table_vram_unpin(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
