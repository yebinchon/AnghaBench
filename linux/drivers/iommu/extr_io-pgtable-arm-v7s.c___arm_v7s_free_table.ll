; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c___arm_v7s_free_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c___arm_v7s_free_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_v7s_io_pgtable = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.io_pgtable_cfg }
%struct.io_pgtable_cfg = type { i32, %struct.device* }
%struct.device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.arm_v7s_io_pgtable*)* @__arm_v7s_free_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__arm_v7s_free_table(i8* %0, i32 %1, %struct.arm_v7s_io_pgtable* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arm_v7s_io_pgtable*, align 8
  %7 = alloca %struct.io_pgtable_cfg*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.arm_v7s_io_pgtable* %2, %struct.arm_v7s_io_pgtable** %6, align 8
  %10 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %6, align 8
  %11 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.io_pgtable_cfg* %12, %struct.io_pgtable_cfg** %7, align 8
  %13 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %7, align 8
  %14 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %13, i32 0, i32 1
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @ARM_V7S_TABLE_SIZE(i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %7, align 8
  %19 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @__arm_v7s_dma_addr(i8* %24)
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = call i32 @dma_unmap_single(%struct.device* %23, i32 %25, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @get_order(i64 %35)
  %37 = call i32 @free_pages(i64 %34, i32 %36)
  br label %44

38:                                               ; preds = %29
  %39 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %6, align 8
  %40 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @kmem_cache_free(i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %38, %32
  ret void
}

declare dso_local i64 @ARM_V7S_TABLE_SIZE(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @__arm_v7s_dma_addr(i8*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @kmem_cache_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
