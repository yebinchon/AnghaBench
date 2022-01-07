; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_main.c_zip_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_main.c_zip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.zip_device = type { i64, i64, %struct.pci_dev* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Found ZIP device %d %x:%x on Node %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to enable PCI device\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"PCI request regions failed 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Unable to get usable DMA configuration\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Unable to get 48-bit DMA for allocations\0A\00", align 1
@PCI_CFG_ZIP_PF_BAR0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"ZIP: Cannot map BAR0 CSR memory space, aborting\00", align 1
@zip_dev = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @zip_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.zip_device*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 2
  store %struct.device* %10, %struct.device** %6, align 8
  store %struct.zip_device* null, %struct.zip_device** %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call %struct.zip_device* @zip_alloc_device(%struct.pci_dev* %11)
  store %struct.zip_device* %12, %struct.zip_device** %7, align 8
  %13 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %14 = icmp ne %struct.zip_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %123

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %21 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @dev_to_node(%struct.device* %29)
  %31 = call i32 @dev_info(%struct.device* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %25, i32 %28, i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %34 = call i32 @pci_set_drvdata(%struct.pci_dev* %32, %struct.zip_device* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %37 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %36, i32 0, i32 2
  store %struct.pci_dev* %35, %struct.pci_dev** %37, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i32 @pci_enable_device(%struct.pci_dev* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %111

45:                                               ; preds = %18
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load i32, i32* @DRV_NAME, align 4
  %48 = call i32 @pci_request_regions(%struct.pci_dev* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %108

55:                                               ; preds = %45
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = call i32 @DMA_BIT_MASK(i32 48)
  %58 = call i32 @pci_set_dma_mask(%struct.pci_dev* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %95

64:                                               ; preds = %55
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = call i32 @DMA_BIT_MASK(i32 48)
  %67 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %95

73:                                               ; preds = %64
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load i32, i32* @PCI_CFG_ZIP_PF_BAR0, align 4
  %76 = call i64 @pci_ioremap_bar(%struct.pci_dev* %74, i32 %75)
  %77 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %78 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %80 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %73
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %95

88:                                               ; preds = %73
  %89 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %90 = call i32 @zip_init_hw(%struct.zip_device* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %95

94:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %123

95:                                               ; preds = %93, %83, %70, %61
  %96 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %97 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %102 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @iounmap(i64 %103)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = call i32 @pci_release_regions(%struct.pci_dev* %106)
  br label %108

108:                                              ; preds = %105, %51
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = call i32 @pci_disable_device(%struct.pci_dev* %109)
  br label %111

111:                                              ; preds = %108, %42
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = call i32 @pci_set_drvdata(%struct.pci_dev* %112, %struct.zip_device* null)
  %114 = load i32**, i32*** @zip_dev, align 8
  %115 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %116 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32*, i32** %114, i64 %117
  store i32* null, i32** %118, align 8
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = load %struct.zip_device*, %struct.zip_device** %7, align 8
  %121 = call i32 @devm_kfree(%struct.device* %119, %struct.zip_device* %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %111, %94, %15
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.zip_device* @zip_alloc_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.zip_device*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @zip_init_hw(%struct.zip_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.zip_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
