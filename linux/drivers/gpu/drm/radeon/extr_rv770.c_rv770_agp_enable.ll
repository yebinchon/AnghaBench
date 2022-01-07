; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_agp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_agp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@VM_L2_CNTL = common dso_local global i64 0, align 8
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i64 0, align 8
@VM_L2_CNTL3 = common dso_local global i64 0, align 8
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB0_CNTL = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB1_CNTL = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB2_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB0_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB1_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB2_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB3_CNTL = common dso_local global i64 0, align 8
@VM_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv770_agp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_agp_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load i64, i64* @VM_L2_CNTL, align 8
  %6 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %7 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %12 = or i32 %10, %11
  %13 = call i32 @WREG32(i64 %5, i32 %12)
  %14 = load i64, i64* @VM_L2_CNTL2, align 8
  %15 = call i32 @WREG32(i64 %14, i32 0)
  %16 = load i64, i64* @VM_L2_CNTL3, align 8
  %17 = call i32 @BANK_SELECT(i32 0)
  %18 = call i32 @CACHE_UPDATE_MODE(i32 2)
  %19 = or i32 %17, %18
  %20 = call i32 @WREG32(i64 %16, i32 %19)
  %21 = load i32, i32* @ENABLE_L1_TLB, align 4
  %22 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @EFFECTIVE_L1_TLB_SIZE(i32 5)
  %29 = or i32 %27, %28
  %30 = call i32 @EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  %32 = load i64, i64* @MC_VM_MD_L1_TLB0_CNTL, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @WREG32(i64 %32, i32 %33)
  %35 = load i64, i64* @MC_VM_MD_L1_TLB1_CNTL, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @WREG32(i64 %35, i32 %36)
  %38 = load i64, i64* @MC_VM_MD_L1_TLB2_CNTL, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @WREG32(i64 %38, i32 %39)
  %41 = load i64, i64* @MC_VM_MB_L1_TLB0_CNTL, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @WREG32(i64 %41, i32 %42)
  %44 = load i64, i64* @MC_VM_MB_L1_TLB1_CNTL, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @WREG32(i64 %44, i32 %45)
  %47 = load i64, i64* @MC_VM_MB_L1_TLB2_CNTL, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @WREG32(i64 %47, i32 %48)
  %50 = load i64, i64* @MC_VM_MB_L1_TLB3_CNTL, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @WREG32(i64 %50, i32 %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %63, %1
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 7
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i64, i64* @VM_CONTEXT0_CNTL, align 8
  %58 = load i32, i32* %4, align 4
  %59 = mul nsw i32 %58, 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = call i32 @WREG32(i64 %61, i32 0)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %53

66:                                               ; preds = %53
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

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
