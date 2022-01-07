; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_install_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_install_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable_cfg = type { i32, i64 }

@ARM_LPAE_PTE_TYPE_TABLE = common dso_local global i32 0, align 4
@IO_PGTABLE_QUIRK_ARM_NS = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_NSTABLE = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_SW_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.io_pgtable_cfg*)* @arm_lpae_install_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_lpae_install_table(i32* %0, i32* %1, i32 %2, %struct.io_pgtable_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.io_pgtable_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.io_pgtable_cfg* %3, %struct.io_pgtable_cfg** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @__pa(i32* %12)
  %14 = load i32, i32* @ARM_LPAE_PTE_TYPE_TABLE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %9, align 8
  %17 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IO_PGTABLE_QUIRK_ARM_NS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @ARM_LPAE_PTE_NSTABLE, align 4
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %22, %4
  %27 = call i32 (...) @dma_wmb()
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @cmpxchg64_relaxed(i32* %28, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %9, align 8
  %33 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @ARM_LPAE_PTE_SW_SYNC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %26
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %59

43:                                               ; preds = %36
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %9, align 8
  %46 = call i32 @__arm_lpae_sync_pte(i32* %44, %struct.io_pgtable_cfg* %45)
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @ARM_LPAE_PTE_SW_SYNC, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @WRITE_ONCE(i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %50, %43
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %41
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @cmpxchg64_relaxed(i32*, i32, i32) #1

declare dso_local i32 @__arm_lpae_sync_pte(i32*, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
