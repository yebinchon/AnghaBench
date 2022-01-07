; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_sfaxpci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_sfaxpci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.sfax_hw = type { i32, i32, %struct.pci_dev* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No memory for Speedfax+ PCI\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"mISDN: Speedfax found adapter %s at %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @sfaxpci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfaxpci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sfax_hw*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sfax_hw* @kzalloc(i32 16, i32 %10)
  store %struct.sfax_hw* %11, %struct.sfax_hw** %7, align 8
  %12 = load %struct.sfax_hw*, %struct.sfax_hw** %7, align 8
  %13 = icmp ne %struct.sfax_hw* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load %struct.sfax_hw*, %struct.sfax_hw** %7, align 8
  %20 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %19, i32 0, i32 2
  store %struct.pci_dev* %18, %struct.pci_dev** %20, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @pci_enable_device(%struct.pci_dev* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.sfax_hw*, %struct.sfax_hw** %7, align 8
  %27 = call i32 @kfree(%struct.sfax_hw* %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %17
  %30 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_name(%struct.pci_dev* %34)
  %36 = call i32 @pr_notice(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @pci_resource_start(%struct.pci_dev* %37, i32 0)
  %39 = load %struct.sfax_hw*, %struct.sfax_hw** %7, align 8
  %40 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sfax_hw*, %struct.sfax_hw** %7, align 8
  %45 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load %struct.sfax_hw*, %struct.sfax_hw** %7, align 8
  %48 = call i32 @pci_set_drvdata(%struct.pci_dev* %46, %struct.sfax_hw* %47)
  %49 = load %struct.sfax_hw*, %struct.sfax_hw** %7, align 8
  %50 = call i32 @setup_instance(%struct.sfax_hw* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %29
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = call i32 @pci_set_drvdata(%struct.pci_dev* %54, %struct.sfax_hw* null)
  br label %56

56:                                               ; preds = %53, %29
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %25, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.sfax_hw* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.sfax_hw*) #1

declare dso_local i32 @pr_notice(i8*, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.sfax_hw*) #1

declare dso_local i32 @setup_instance(%struct.sfax_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
