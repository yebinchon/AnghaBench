; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_pci-ish.c_ish_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_pci-ish.c_ish_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.ish_hw = type { i32 }
%struct.ishtp_device = type { i32, i32, i32, %struct.pci_dev*, i32 }

@ish_invalid_pci_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ISH: Failed to enable PCI device\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ISH: Failed to get PCI regions\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ish_event_tracer = common dso_local global i32 0, align 4
@PCI_IRQ_ALL_TYPES = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@ish_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"ISH: request IRQ %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ish_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ish_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ish_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ishtp_device*, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 3
  store %struct.device* %12, %struct.device** %10, align 8
  %13 = load i32, i32* @ish_invalid_pci_ids, align 4
  %14 = call i64 @pci_dev_present(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %116

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pcim_enable_device(%struct.pci_dev* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %10, align 8
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %116

28:                                               ; preds = %19
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @pci_set_master(%struct.pci_dev* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* @KBUILD_MODNAME, align 4
  %33 = call i32 @pcim_iomap_regions(%struct.pci_dev* %31, i32 1, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.device*, %struct.device** %10, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %116

40:                                               ; preds = %28
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call %struct.ishtp_device* @ish_dev_init(%struct.pci_dev* %41)
  store %struct.ishtp_device* %42, %struct.ishtp_device** %9, align 8
  %43 = load %struct.ishtp_device*, %struct.ishtp_device** %9, align 8
  %44 = icmp ne %struct.ishtp_device* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %116

49:                                               ; preds = %40
  %50 = load %struct.ishtp_device*, %struct.ishtp_device** %9, align 8
  %51 = call %struct.ish_hw* @to_ish_hw(%struct.ishtp_device* %50)
  store %struct.ish_hw* %51, %struct.ish_hw** %7, align 8
  %52 = load i32, i32* @ish_event_tracer, align 4
  %53 = load %struct.ishtp_device*, %struct.ishtp_device** %9, align 8
  %54 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32* @pcim_iomap_table(%struct.pci_dev* %55)
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ish_hw*, %struct.ish_hw** %7, align 8
  %60 = getelementptr inbounds %struct.ish_hw, %struct.ish_hw* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = load %struct.ishtp_device*, %struct.ishtp_device** %9, align 8
  %63 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %62, i32 0, i32 3
  store %struct.pci_dev* %61, %struct.pci_dev** %63, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load i32, i32* @PCI_IRQ_ALL_TYPES, align 4
  %66 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %64, i32 1, i32 1, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %49
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %76, %71, %49
  %79 = load %struct.device*, %struct.device** %10, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ish_irq_handler, align 4
  %84 = load i64, i64* %8, align 8
  %85 = load i32, i32* @KBUILD_MODNAME, align 4
  %86 = load %struct.ishtp_device*, %struct.ishtp_device** %9, align 8
  %87 = call i32 @devm_request_irq(%struct.device* %79, i32 %82, i32 %83, i64 %84, i32 %85, %struct.ishtp_device* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load %struct.device*, %struct.device** %10, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %116

97:                                               ; preds = %78
  %98 = load %struct.ishtp_device*, %struct.ishtp_device** %9, align 8
  %99 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ishtp_device*, %struct.ishtp_device** %9, align 8
  %102 = call i32 @dev_set_drvdata(i32 %100, %struct.ishtp_device* %101)
  %103 = load %struct.ishtp_device*, %struct.ishtp_device** %9, align 8
  %104 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %103, i32 0, i32 1
  %105 = call i32 @init_waitqueue_head(i32* %104)
  %106 = load %struct.ishtp_device*, %struct.ishtp_device** %9, align 8
  %107 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %106, i32 0, i32 0
  %108 = call i32 @init_waitqueue_head(i32* %107)
  %109 = load %struct.ishtp_device*, %struct.ishtp_device** %9, align 8
  %110 = call i32 @ish_init(%struct.ishtp_device* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %97
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %116

115:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %113, %90, %45, %36, %24, %16
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @pci_dev_present(i32) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local %struct.ishtp_device* @ish_dev_init(%struct.pci_dev*) #1

declare dso_local %struct.ish_hw* @to_ish_hw(%struct.ishtp_device*) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i64, i32, %struct.ishtp_device*) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.ishtp_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ish_init(%struct.ishtp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
