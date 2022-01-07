; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ioatdma_device = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"Removing dma and dca services\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ioat_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ioatdma_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.ioatdma_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.ioatdma_device* %5, %struct.ioatdma_device** %3, align 8
  %6 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %7 = icmp ne %struct.ioatdma_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @dev_err(i32* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %14 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %19 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 @unregister_dca_provider(i32* %20, i32* %22)
  %24 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %25 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @free_dca_provider(i32* %26)
  %28 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %29 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %17, %9
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %31)
  %33 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %34 = call i32 @ioat_dma_remove(%struct.ioatdma_device* %33)
  br label %35

35:                                               ; preds = %30, %8
  ret void
}

declare dso_local %struct.ioatdma_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @unregister_dca_provider(i32*, i32*) #1

declare dso_local i32 @free_dca_provider(i32*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @ioat_dma_remove(%struct.ioatdma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
