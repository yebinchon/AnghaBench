; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ss4200.c_ich7_lpc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ss4200.c_ich7_lpc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"pci_enable_device failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@nas_gpio_pci_dev = common dso_local global %struct.pci_dev* null, align 8
@PMBASE = common dso_local global i32 0, align 4
@g_pm_io_base = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@GPIO_EN = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ERROR: The LPC GPIO Block has not been enabled.\0A\00", align 1
@GPIO_BASE = common dso_local global i32 0, align 4
@nas_gpio_io_base = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to read GPIOBASE.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c": GPIOBASE = 0x%08x\0A\00", align 1
@ICH7_GPIO_SIZE = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@gp_gpio_resource = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"ERROR Unable to register GPIO I/O addresses.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ich7_lpc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ich7_lpc_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %84

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** @nas_gpio_pci_dev, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load i32, i32* @PMBASE, align 4
  %22 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i32 %21, i32* @g_pm_io_base)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %73

26:                                               ; preds = %18
  %27 = load i32, i32* @g_pm_io_base, align 4
  %28 = and i32 %27, 65408
  store i32 %28, i32* @g_pm_io_base, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* @GPIO_CTRL, align 4
  %31 = call i32 @pci_read_config_dword(%struct.pci_dev* %29, i32 %30, i32* %7)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @GPIO_EN, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @EEXIST, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %73

42:                                               ; preds = %26
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = load i32, i32* @GPIO_BASE, align 4
  %45 = call i32 @pci_read_config_dword(%struct.pci_dev* %43, i32 %44, i32* @nas_gpio_io_base)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 0, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = call i32 @dev_info(i32* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %73

52:                                               ; preds = %42
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* @nas_gpio_io_base, align 4
  %56 = call i32 @dev_dbg(i32* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @nas_gpio_io_base, align 4
  %58 = and i32 %57, 65472
  store i32 %58, i32* @nas_gpio_io_base, align 4
  %59 = load i32, i32* @nas_gpio_io_base, align 4
  %60 = load i32, i32* @ICH7_GPIO_SIZE, align 4
  %61 = load i32, i32* @KBUILD_MODNAME, align 4
  %62 = call i32* @request_region(i32 %59, i32 %60, i32 %61)
  store i32* %62, i32** @gp_gpio_resource, align 8
  %63 = load i32*, i32** @gp_gpio_resource, align 8
  %64 = icmp eq i32* null, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = call i32 @dev_info(i32* %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %73

69:                                               ; preds = %52
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = call i32 @ich7_gpio_init(i32* %71)
  br label %73

73:                                               ; preds = %69, %65, %48, %36, %25
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = call i32 @ich7_lpc_cleanup(i32* %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = call i32 @pci_disable_device(%struct.pci_dev* %80)
  br label %82

82:                                               ; preds = %76, %73
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %12
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32* @request_region(i32, i32, i32) #1

declare dso_local i32 @ich7_gpio_init(i32*) #1

declare dso_local i32 @ich7_lpc_cleanup(i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
