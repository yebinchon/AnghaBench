; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_pages.c_qib_map_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_pages.c_qib_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_map_page(%struct.pci_dev* %0, %struct.page* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = load %struct.page*, %struct.page** %6, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %13 = call i64 @pci_map_page(%struct.pci_dev* %9, %struct.page* %10, i32 0, i32 %11, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %46

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %29 = call i32 @pci_unmap_page(%struct.pci_dev* %25, i64 %26, i32 %27, i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load %struct.page*, %struct.page** %6, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %34 = call i64 @pci_map_page(%struct.pci_dev* %30, %struct.page* %31, i32 0, i32 %32, i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i64, i64* %8, align 8
  %45 = load i64*, i64** %7, align 8
  store i64 %44, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %39, %18
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @pci_map_page(%struct.pci_dev*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
