; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_pci.c_hsu_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_pci.c_hsu_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.hsu_dma_chip = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"I/O memory remapping failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_IRQ_ALL_TYPES = common dso_local global i32 0, align 4
@HSU_PCI_CHAN_OFFSET = common dso_local global i32 0, align 4
@hsu_pci_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"hsu_dma_pci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @hsu_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsu_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.hsu_dma_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pcim_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %111

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i32 @BIT(i32 0)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pci_name(%struct.pci_dev* %17)
  %19 = call i32 @pcim_iomap_regions(%struct.pci_dev* %15, i32 %16, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %111

27:                                               ; preds = %14
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_set_master(%struct.pci_dev* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @pci_try_set_mwi(%struct.pci_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @DMA_BIT_MASK(i32 32)
  %34 = call i32 @pci_set_dma_mask(%struct.pci_dev* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %111

39:                                               ; preds = %27
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @DMA_BIT_MASK(i32 32)
  %42 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %111

47:                                               ; preds = %39
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.hsu_dma_chip* @devm_kzalloc(i32* %49, i32 24, i32 %50)
  store %struct.hsu_dma_chip* %51, %struct.hsu_dma_chip** %6, align 8
  %52 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %53 = icmp ne %struct.hsu_dma_chip* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %111

57:                                               ; preds = %47
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = load i32, i32* @PCI_IRQ_ALL_TYPES, align 4
  %60 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %58, i32 1, i32 1, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %111

65:                                               ; preds = %57
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %69 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %68, i32 0, i32 4
  store i32* %67, i32** %69, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32* @pcim_iomap_table(%struct.pci_dev* %70)
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %75 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = call i32 @pci_resource_len(%struct.pci_dev* %76, i32 0)
  %78 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %79 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @HSU_PCI_CHAN_OFFSET, align 4
  %81 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %82 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = call i32 @pci_irq_vector(%struct.pci_dev* %83, i32 0)
  %85 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %86 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %88 = call i32 @hsu_dma_probe(%struct.hsu_dma_chip* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %65
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %111

93:                                               ; preds = %65
  %94 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %95 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @hsu_pci_irq, align 4
  %98 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %99 = call i32 @request_irq(i32 %96, i32 %97, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.hsu_dma_chip* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %107

103:                                              ; preds = %93
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %106 = call i32 @pci_set_drvdata(%struct.pci_dev* %104, %struct.hsu_dma_chip* %105)
  store i32 0, i32* %3, align 4
  br label %111

107:                                              ; preds = %102
  %108 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %109 = call i32 @hsu_dma_remove(%struct.hsu_dma_chip* %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %103, %91, %63, %54, %45, %37, %22, %12
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_try_set_mwi(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local %struct.hsu_dma_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @hsu_dma_probe(%struct.hsu_dma_chip*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.hsu_dma_chip*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.hsu_dma_chip*) #1

declare dso_local i32 @hsu_dma_remove(%struct.hsu_dma_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
