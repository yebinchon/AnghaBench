; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis5595.c_sis5595_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis5595.c_sis5595_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"SIS5595 not detected, module not inserted.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@sis5595_adapter = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"SMBus SIS5595 adapter at %04x\00", align 1
@sis5595_base = common dso_local global i32 0, align 4
@SMB_INDEX = common dso_local global i32 0, align 4
@sis5595_pdev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @sis5595_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis5595_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i64 @sis5595_setup(%struct.pci_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  store i32* %18, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sis5595_adapter, i32 0, i32 1, i32 0), align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sis5595_adapter, i32 0, i32 0), align 8
  %20 = load i32, i32* @sis5595_base, align 4
  %21 = load i32, i32* @SMB_INDEX, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 @snprintf(i32 %19, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = call i32 @i2c_add_adapter(%struct.TYPE_5__* @sis5595_adapter)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load i32, i32* @sis5595_base, align 4
  %29 = load i32, i32* @SMB_INDEX, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @release_region(i32 %30, i32 2)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %16
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_dev_get(%struct.pci_dev* %34)
  store i32 %35, i32* @sis5595_pdev, align 4
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %27, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @sis5595_setup(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_5__*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
