; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_fritzpci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_fritzpci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.pci_device_id = type { i64 }
%struct.fritzcard = type { i32, i32, %struct.pci_dev*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No kmem for fritzcard\0A\00", align 1
@PCI_DEVICE_ID_AVM_A1_V2 = common dso_local global i64 0, align 8
@AVM_FRITZ_PCIV2 = common dso_local global i32 0, align 4
@AVM_FRITZ_PCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"mISDN: found adapter %s at %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @fritzpci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fritzpci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fritzcard*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.fritzcard* @kzalloc(i32 24, i32 %10)
  store %struct.fritzcard* %11, %struct.fritzcard** %7, align 8
  %12 = load %struct.fritzcard*, %struct.fritzcard** %7, align 8
  %13 = icmp ne %struct.fritzcard* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI_DEVICE_ID_AVM_A1_V2, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @AVM_FRITZ_PCIV2, align 4
  %25 = load %struct.fritzcard*, %struct.fritzcard** %7, align 8
  %26 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  br label %31

27:                                               ; preds = %17
  %28 = load i32, i32* @AVM_FRITZ_PCI, align 4
  %29 = load %struct.fritzcard*, %struct.fritzcard** %7, align 8
  %30 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load %struct.fritzcard*, %struct.fritzcard** %7, align 8
  %34 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %33, i32 0, i32 2
  store %struct.pci_dev* %32, %struct.pci_dev** %34, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_enable_device(%struct.pci_dev* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.fritzcard*, %struct.fritzcard** %7, align 8
  %41 = call i32 @kfree(%struct.fritzcard* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %72

43:                                               ; preds = %31
  %44 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %45 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = call i32 @pci_name(%struct.pci_dev* %48)
  %50 = call i32 @pr_notice(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = call i32 @pci_resource_start(%struct.pci_dev* %51, i32 1)
  %53 = load %struct.fritzcard*, %struct.fritzcard** %7, align 8
  %54 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fritzcard*, %struct.fritzcard** %7, align 8
  %59 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = load %struct.fritzcard*, %struct.fritzcard** %7, align 8
  %62 = call i32 @pci_set_drvdata(%struct.pci_dev* %60, %struct.fritzcard* %61)
  %63 = load %struct.fritzcard*, %struct.fritzcard** %7, align 8
  %64 = call i32 @setup_instance(%struct.fritzcard* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %43
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pci_set_drvdata(%struct.pci_dev* %68, %struct.fritzcard* null)
  br label %70

70:                                               ; preds = %67, %43
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %39, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.fritzcard* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.fritzcard*) #1

declare dso_local i32 @pr_notice(i8*, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.fritzcard*) #1

declare dso_local i32 @setup_instance(%struct.fritzcard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
