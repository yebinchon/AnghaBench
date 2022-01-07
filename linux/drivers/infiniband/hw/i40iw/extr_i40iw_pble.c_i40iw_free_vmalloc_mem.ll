; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_i40iw_free_vmalloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_i40iw_free_vmalloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_hw = type { i64 }
%struct.i40iw_chunk = type { i32, i64, i32*, i32* }
%struct.pci_dev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_hw*, %struct.i40iw_chunk*)* @i40iw_free_vmalloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_free_vmalloc_mem(%struct.i40iw_hw* %0, %struct.i40iw_chunk* %1) #0 {
  %3 = alloca %struct.i40iw_hw*, align 8
  %4 = alloca %struct.i40iw_chunk*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.i40iw_hw* %0, %struct.i40iw_hw** %3, align 8
  store %struct.i40iw_chunk* %1, %struct.i40iw_chunk** %4, align 8
  %7 = load %struct.i40iw_hw*, %struct.i40iw_hw** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_hw, %struct.i40iw_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.pci_dev*
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  %11 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %4, align 8
  %12 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %40

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %36, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %4, align 8
  %20 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %4, align 8
  %27 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %35 = call i32 @dma_unmap_page(i32* %25, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %17

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %4, align 8
  %42 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %4, align 8
  %46 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %4, align 8
  %48 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @vfree(i32* %49)
  %51 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %4, align 8
  %52 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %4, align 8
  %54 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  ret void
}

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
