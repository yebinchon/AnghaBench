; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_device = type { i32, %struct.pci_dev*, %struct.dma_device }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.dma_device = type { i32, %struct.device*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"completion_pool\00", align 1
@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"channel enumeration error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioatdma_device*)* @ioat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_probe(%struct.ioatdma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioatdma_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_device*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.ioatdma_device* %0, %struct.ioatdma_device** %3, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %11 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %10, i32 0, i32 2
  store %struct.dma_device* %11, %struct.dma_device** %5, align 8
  %12 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %13 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %12, i32 0, i32 1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %19 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %20 = call i32 @dma_pool_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.device* %17, i32 4, i32 %18, i32 %19)
  %21 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %22 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %24 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %70

30:                                               ; preds = %1
  %31 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %32 = call i32 @ioat_enumerate_channels(%struct.ioatdma_device* %31)
  %33 = load i32, i32* @DMA_MEMCPY, align 4
  %34 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %35 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_cap_set(i32 %33, i32 %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %41 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %40, i32 0, i32 1
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %43 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %30
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %65

49:                                               ; preds = %30
  %50 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %51 = call i32 @ioat_dma_setup_interrupts(%struct.ioatdma_device* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %65

55:                                               ; preds = %49
  %56 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %57 = call i32 @ioat3_dma_self_test(%struct.ioatdma_device* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %62

61:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %72

62:                                               ; preds = %60
  %63 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %64 = call i32 @ioat_disable_interrupts(%struct.ioatdma_device* %63)
  br label %65

65:                                               ; preds = %62, %54, %46
  %66 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %67 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dma_pool_destroy(i32 %68)
  br label %70

70:                                               ; preds = %65, %27
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %61
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @dma_pool_create(i8*, %struct.device*, i32, i32, i32) #1

declare dso_local i32 @ioat_enumerate_channels(%struct.ioatdma_device*) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ioat_dma_setup_interrupts(%struct.ioatdma_device*) #1

declare dso_local i32 @ioat3_dma_self_test(%struct.ioatdma_device*) #1

declare dso_local i32 @ioat_disable_interrupts(%struct.ioatdma_device*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
