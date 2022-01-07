; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa-pci.c_ce4100_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa-pci.c_ce4100_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.ce4100_devices = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"Missing device tree node.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ce4100_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce4100_i2c_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ce4100_devices*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_enable_device_mem(%struct.pci_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %100

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_err(%struct.TYPE_2__* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %100

27:                                               ; preds = %15
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ce4100_devices* @kzalloc(i32 8, i32 %28)
  store %struct.ce4100_devices* %29, %struct.ce4100_devices** %8, align 8
  %30 = load %struct.ce4100_devices*, %struct.ce4100_devices** %8, align 8
  %31 = icmp ne %struct.ce4100_devices* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %96

35:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %86, %35
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ce4100_devices*, %struct.ce4100_devices** %8, align 8
  %39 = getelementptr inbounds %struct.ce4100_devices, %struct.ce4100_devices* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %36
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @add_i2c_device(%struct.pci_dev* %44, i32 %45)
  %47 = load %struct.ce4100_devices*, %struct.ce4100_devices** %8, align 8
  %48 = getelementptr inbounds %struct.ce4100_devices, %struct.ce4100_devices* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.ce4100_devices*, %struct.ce4100_devices** %8, align 8
  %54 = getelementptr inbounds %struct.ce4100_devices, %struct.ce4100_devices* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %43
  %63 = load %struct.ce4100_devices*, %struct.ce4100_devices** %8, align 8
  %64 = getelementptr inbounds %struct.ce4100_devices, %struct.ce4100_devices* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %75, %62
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load %struct.ce4100_devices*, %struct.ce4100_devices** %8, align 8
  %77 = getelementptr inbounds %struct.ce4100_devices, %struct.ce4100_devices* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @platform_device_unregister(i32 %82)
  br label %71

84:                                               ; preds = %71
  br label %93

85:                                               ; preds = %43
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %36

89:                                               ; preds = %36
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load %struct.ce4100_devices*, %struct.ce4100_devices** %8, align 8
  %92 = call i32 @pci_set_drvdata(%struct.pci_dev* %90, %struct.ce4100_devices* %91)
  store i32 0, i32* %3, align 4
  br label %100

93:                                               ; preds = %84
  %94 = load %struct.ce4100_devices*, %struct.ce4100_devices** %8, align 8
  %95 = call i32 @kfree(%struct.ce4100_devices* %94)
  br label %96

96:                                               ; preds = %93, %32
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = call i32 @pci_disable_device(%struct.pci_dev* %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %89, %21, %13
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.ce4100_devices* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @add_i2c_device(%struct.pci_dev*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ce4100_devices*) #1

declare dso_local i32 @kfree(%struct.ce4100_devices*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
