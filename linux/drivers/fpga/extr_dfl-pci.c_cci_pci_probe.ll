; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-pci.c_cci_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-pci.c_cci_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to enable device %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"PCIE AER unavailable %d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"No suitable DMA support available.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Fail to init drvdata %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"enumeration failure %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cci_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cci_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i32 @pcim_enable_device(%struct.pci_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %93

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %22, %17
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pci_set_master(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @DMA_BIT_MASK(i32 64)
  %37 = call i32 @pci_set_dma_mask(%struct.pci_dev* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @DMA_BIT_MASK(i32 64)
  %42 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %89

46:                                               ; preds = %39
  br label %67

47:                                               ; preds = %32
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = call i32 @DMA_BIT_MASK(i32 32)
  %50 = call i32 @pci_set_dma_mask(%struct.pci_dev* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i32 @DMA_BIT_MASK(i32 32)
  %55 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %89

59:                                               ; preds = %52
  br label %66

60:                                               ; preds = %47
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %89

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %46
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @cci_init_drvdata(%struct.pci_dev* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %89

77:                                               ; preds = %67
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = call i32 @cci_enumerate_feature_devs(%struct.pci_dev* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %93

89:                                               ; preds = %82, %72, %60, %58, %45
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %87, %11
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @cci_init_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @cci_enumerate_feature_devs(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
