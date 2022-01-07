; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sodaville.c_sdv_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sodaville.c_sdv_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.sdv_gpio_chip_data = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't enable device.\0A\00", align 1
@GPIO_BAR = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"can't alloc PCI BAR #%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"intel,muxctl\00", align 1
@GPMUXCTL = common dso_local global i64 0, align 8
@GPINR = common dso_local global i64 0, align 8
@GPOUTR = common dso_local global i64 0, align 8
@GPOER = common dso_local global i64 0, align 8
@SDV_NUM_PUB_GPIOS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"gpiochip_add() failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Sodaville GPIO driver registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @sdv_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdv_gpio_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.sdv_gpio_chip_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sdv_gpio_chip_data* @devm_kzalloc(%struct.TYPE_8__* %10, i32 16, i32 %11)
  store %struct.sdv_gpio_chip_data* %12, %struct.sdv_gpio_chip_data** %6, align 8
  %13 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %14 = icmp ne %struct.sdv_gpio_chip_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %124

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pcim_enable_device(%struct.pci_dev* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %124

28:                                               ; preds = %18
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* @GPIO_BAR, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* @DRV_NAME, align 4
  %33 = call i32 @pcim_iomap_regions(%struct.pci_dev* %29, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* @GPIO_BAR, align 4
  %40 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %124

42:                                               ; preds = %28
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i64* @pcim_iomap_table(%struct.pci_dev* %43)
  %45 = load i32, i32* @GPIO_BAR, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %50 = getelementptr inbounds %struct.sdv_gpio_chip_data, %struct.sdv_gpio_chip_data* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @of_property_read_u32(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %61 = getelementptr inbounds %struct.sdv_gpio_chip_data, %struct.sdv_gpio_chip_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GPMUXCTL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  br label %66

66:                                               ; preds = %58, %42
  %67 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %68 = getelementptr inbounds %struct.sdv_gpio_chip_data, %struct.sdv_gpio_chip_data* %67, i32 0, i32 0
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %72 = getelementptr inbounds %struct.sdv_gpio_chip_data, %struct.sdv_gpio_chip_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @GPINR, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %77 = getelementptr inbounds %struct.sdv_gpio_chip_data, %struct.sdv_gpio_chip_data* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @GPOUTR, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %82 = getelementptr inbounds %struct.sdv_gpio_chip_data, %struct.sdv_gpio_chip_data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @GPOER, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @bgpio_init(%struct.TYPE_9__* %68, %struct.TYPE_8__* %70, i32 4, i64 %75, i64 %80, i32* null, i64 %85, i32* null, i32 0)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %66
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %124

91:                                               ; preds = %66
  %92 = load i32, i32* @SDV_NUM_PUB_GPIOS, align 4
  %93 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %94 = getelementptr inbounds %struct.sdv_gpio_chip_data, %struct.sdv_gpio_chip_data* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %99 = getelementptr inbounds %struct.sdv_gpio_chip_data, %struct.sdv_gpio_chip_data* %98, i32 0, i32 0
  %100 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %101 = call i32 @devm_gpiochip_add_data(%struct.TYPE_8__* %97, %struct.TYPE_9__* %99, %struct.sdv_gpio_chip_data* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %91
  %105 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %3, align 4
  br label %124

109:                                              ; preds = %91
  %110 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = call i32 @sdv_register_irqsupport(%struct.sdv_gpio_chip_data* %110, %struct.pci_dev* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %124

117:                                              ; preds = %109
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = load %struct.sdv_gpio_chip_data*, %struct.sdv_gpio_chip_data** %6, align 8
  %120 = call i32 @pci_set_drvdata(%struct.pci_dev* %118, %struct.sdv_gpio_chip_data* %119)
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 0
  %123 = call i32 @dev_info(%struct.TYPE_8__* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %117, %115, %104, %89, %36, %23, %15
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.sdv_gpio_chip_data* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i64* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @bgpio_init(%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i64, i64, i32*, i64, i32*, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.sdv_gpio_chip_data*) #1

declare dso_local i32 @sdv_register_irqsupport(%struct.sdv_gpio_chip_data*, %struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.sdv_gpio_chip_data*) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
