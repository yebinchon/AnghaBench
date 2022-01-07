; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_mali_lpae_alloc_pgtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_mali_lpae_alloc_pgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable = type { i32 }
%struct.io_pgtable_cfg = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.arm_lpae_io_pgtable = type { i64, i32, %struct.io_pgtable, i32 }

@SZ_4K = common dso_local global i32 0, align 4
@SZ_2M = common dso_local global i32 0, align 4
@SZ_1G = common dso_local global i32 0, align 4
@ARM_LPAE_MAX_LEVELS = common dso_local global i64 0, align 8
@ARM_MALI_LPAE_MEMATTR_IMP_DEF = common dso_local global i32 0, align 4
@ARM_LPAE_MAIR_ATTR_IDX_NC = common dso_local global i32 0, align 4
@ARM_MALI_LPAE_MEMATTR_WRITE_ALLOC = common dso_local global i32 0, align 4
@ARM_LPAE_MAIR_ATTR_IDX_CACHE = common dso_local global i32 0, align 4
@ARM_LPAE_MAIR_ATTR_IDX_DEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ARM_MALI_LPAE_TTBR_READ_INNER = common dso_local global i32 0, align 4
@ARM_MALI_LPAE_TTBR_ADRMODE_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.io_pgtable* (%struct.io_pgtable_cfg*, i8*)* @arm_mali_lpae_alloc_pgtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.io_pgtable* @arm_mali_lpae_alloc_pgtable(%struct.io_pgtable_cfg* %0, i8* %1) #0 {
  %3 = alloca %struct.io_pgtable*, align 8
  %4 = alloca %struct.io_pgtable_cfg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arm_lpae_io_pgtable*, align 8
  store %struct.io_pgtable_cfg* %0, %struct.io_pgtable_cfg** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.io_pgtable* null, %struct.io_pgtable** %3, align 8
  br label %99

12:                                               ; preds = %2
  %13 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 48
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 40
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12
  store %struct.io_pgtable* null, %struct.io_pgtable** %3, align 8
  br label %99

23:                                               ; preds = %17
  %24 = load i32, i32* @SZ_4K, align 4
  %25 = load i32, i32* @SZ_2M, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SZ_1G, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %34 = call %struct.arm_lpae_io_pgtable* @arm_lpae_alloc_pgtable(%struct.io_pgtable_cfg* %33)
  store %struct.arm_lpae_io_pgtable* %34, %struct.arm_lpae_io_pgtable** %6, align 8
  %35 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %36 = icmp ne %struct.arm_lpae_io_pgtable* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %23
  store %struct.io_pgtable* null, %struct.io_pgtable** %3, align 8
  br label %99

38:                                               ; preds = %23
  %39 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %40 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ARM_LPAE_MAX_LEVELS, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i64, i64* @ARM_LPAE_MAX_LEVELS, align 8
  %46 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %47 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %49 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %48, i32 0, i32 1
  store i32 4, i32* %49, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @ARM_MALI_LPAE_MEMATTR_IMP_DEF, align 4
  %52 = load i32, i32* @ARM_LPAE_MAIR_ATTR_IDX_NC, align 4
  %53 = call i32 @ARM_LPAE_MAIR_ATTR_SHIFT(i32 %52)
  %54 = shl i32 %51, %53
  %55 = load i32, i32* @ARM_MALI_LPAE_MEMATTR_WRITE_ALLOC, align 4
  %56 = load i32, i32* @ARM_LPAE_MAIR_ATTR_IDX_CACHE, align 4
  %57 = call i32 @ARM_LPAE_MAIR_ATTR_SHIFT(i32 %56)
  %58 = shl i32 %55, %57
  %59 = or i32 %54, %58
  %60 = load i32, i32* @ARM_MALI_LPAE_MEMATTR_IMP_DEF, align 4
  %61 = load i32, i32* @ARM_LPAE_MAIR_ATTR_IDX_DEV, align 4
  %62 = call i32 @ARM_LPAE_MAIR_ATTR_SHIFT(i32 %61)
  %63 = shl i32 %60, %62
  %64 = or i32 %59, %63
  %65 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %66 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %69 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %73 = call i32 @__arm_lpae_alloc_pages(i32 %70, i32 %71, %struct.io_pgtable_cfg* %72)
  %74 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %75 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %77 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %50
  br label %96

81:                                               ; preds = %50
  %82 = call i32 (...) @wmb()
  %83 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %84 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @virt_to_phys(i32 %85)
  %87 = load i32, i32* @ARM_MALI_LPAE_TTBR_READ_INNER, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @ARM_MALI_LPAE_TTBR_ADRMODE_TABLE, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %92 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %95 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %94, i32 0, i32 2
  store %struct.io_pgtable* %95, %struct.io_pgtable** %3, align 8
  br label %99

96:                                               ; preds = %80
  %97 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %98 = call i32 @kfree(%struct.arm_lpae_io_pgtable* %97)
  store %struct.io_pgtable* null, %struct.io_pgtable** %3, align 8
  br label %99

99:                                               ; preds = %96, %81, %37, %22, %11
  %100 = load %struct.io_pgtable*, %struct.io_pgtable** %3, align 8
  ret %struct.io_pgtable* %100
}

declare dso_local %struct.arm_lpae_io_pgtable* @arm_lpae_alloc_pgtable(%struct.io_pgtable_cfg*) #1

declare dso_local i32 @ARM_LPAE_MAIR_ATTR_SHIFT(i32) #1

declare dso_local i32 @__arm_lpae_alloc_pages(i32, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @kfree(%struct.arm_lpae_io_pgtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
