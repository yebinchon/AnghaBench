; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_pcie_gart_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_pcie_gart_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i32 0, align 4
@VM_L2_CNTL3 = common dso_local global i32 0, align 4
@L2_CACHE_BIGK_ASSOCIATIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_pcie_gart_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_pcie_gart_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 16
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  store i64 %16, i64* %4, align 8
  br label %24

17:                                               ; preds = %8
  %18 = load i64, i64* @VM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sub i32 %19, 8
  %21 = shl i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %17, %11
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @RREG32(i64 %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %26, i32* %33, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %3, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %5

37:                                               ; preds = %5
  %38 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %39 = call i32 @WREG32(i32 %38, i32 0)
  %40 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %41 = call i32 @WREG32(i32 %40, i32 0)
  %42 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %43 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %44 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @WREG32(i32 %42, i32 %45)
  %47 = load i32, i32* @VM_L2_CNTL, align 4
  %48 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %49 = load i32, i32* @ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %52 = or i32 %50, %51
  %53 = call i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32 1)
  %54 = or i32 %52, %53
  %55 = call i32 @WREG32(i32 %47, i32 %54)
  %56 = load i32, i32* @VM_L2_CNTL2, align 4
  %57 = call i32 @WREG32(i32 %56, i32 0)
  %58 = load i32, i32* @VM_L2_CNTL3, align 4
  %59 = load i32, i32* @L2_CACHE_BIGK_ASSOCIATIVITY, align 4
  %60 = call i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32 0)
  %61 = or i32 %59, %60
  %62 = call i32 @WREG32(i32 %58, i32 %61)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = call i32 @radeon_gart_table_vram_unpin(%struct.radeon_device* %63)
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
