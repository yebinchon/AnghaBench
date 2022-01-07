; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_pci.c_dw_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_pci.c_dw_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.dw_dma_chip_pdata = type { i32 (%struct.dw_dma_chip*)*, %struct.dw_dma_chip.0*, i32 }
%struct.dw_dma_chip = type opaque
%struct.dw_dma_chip.0 = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"I/O memory remapping failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @dw_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.dw_dma_chip_pdata*, align 8
  %7 = alloca %struct.dw_dma_chip_pdata*, align 8
  %8 = alloca %struct.dw_dma_chip.0*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.dw_dma_chip_pdata*
  store %struct.dw_dma_chip_pdata* %14, %struct.dw_dma_chip_pdata** %6, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i32 @pcim_enable_device(%struct.pci_dev* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %117

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_name(%struct.pci_dev* %23)
  %25 = call i32 @pcim_iomap_regions(%struct.pci_dev* %22, i32 1, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 2
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %117

33:                                               ; preds = %21
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_set_master(%struct.pci_dev* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @pci_try_set_mwi(%struct.pci_dev* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i32 @DMA_BIT_MASK(i32 32)
  %40 = call i32 @pci_set_dma_mask(%struct.pci_dev* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %117

45:                                               ; preds = %33
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call i32 @DMA_BIT_MASK(i32 32)
  %48 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %117

53:                                               ; preds = %45
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 2
  %56 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %6, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.dw_dma_chip_pdata* @devm_kmemdup(i32* %55, %struct.dw_dma_chip_pdata* %56, i32 24, i32 %57)
  store %struct.dw_dma_chip_pdata* %58, %struct.dw_dma_chip_pdata** %7, align 8
  %59 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %7, align 8
  %60 = icmp ne %struct.dw_dma_chip_pdata* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %117

64:                                               ; preds = %53
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 2
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.dw_dma_chip.0* @devm_kzalloc(i32* %66, i32 24, i32 %67)
  store %struct.dw_dma_chip.0* %68, %struct.dw_dma_chip.0** %8, align 8
  %69 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %8, align 8
  %70 = icmp ne %struct.dw_dma_chip.0* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %117

74:                                               ; preds = %64
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 2
  %77 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %8, align 8
  %78 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %77, i32 0, i32 4
  store i32* %76, i32** %78, align 8
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %8, align 8
  %83 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = call i32* @pcim_iomap_table(%struct.pci_dev* %84)
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %8, align 8
  %89 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %8, align 8
  %94 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %7, align 8
  %96 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %8, align 8
  %99 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %8, align 8
  %101 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %7, align 8
  %102 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %101, i32 0, i32 1
  store %struct.dw_dma_chip.0* %100, %struct.dw_dma_chip.0** %102, align 8
  %103 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %7, align 8
  %104 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %103, i32 0, i32 0
  %105 = load i32 (%struct.dw_dma_chip*)*, i32 (%struct.dw_dma_chip*)** %104, align 8
  %106 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %8, align 8
  %107 = bitcast %struct.dw_dma_chip.0* %106 to %struct.dw_dma_chip*
  %108 = call i32 %105(%struct.dw_dma_chip* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %74
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %117

113:                                              ; preds = %74
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %7, align 8
  %116 = call i32 @pci_set_drvdata(%struct.pci_dev* %114, %struct.dw_dma_chip_pdata* %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %111, %71, %61, %51, %43, %28, %19
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_try_set_mwi(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local %struct.dw_dma_chip_pdata* @devm_kmemdup(i32*, %struct.dw_dma_chip_pdata*, i32, i32) #1

declare dso_local %struct.dw_dma_chip.0* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.dw_dma_chip_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
