; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ads7846 = type { %struct.ads7846*, i32, i32 (i32)*, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ads784x_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unregistered touchscreen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ads7846_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads7846_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ads7846*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.ads7846* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.ads7846* %5, %struct.ads7846** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @sysfs_remove_group(i32* %8, i32* @ads784x_attr_group)
  %10 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %11 = call i32 @ads7846_disable(%struct.ads7846* %10)
  %12 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %13 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %12, i32 0, i32 7
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.ads7846* %17)
  %19 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %20 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @input_unregister_device(i32 %21)
  %23 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %24 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %25 = call i32 @ads784x_hwmon_unregister(%struct.spi_device* %23, %struct.ads7846* %24)
  %26 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %27 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @regulator_put(i32 %28)
  %30 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %31 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %1
  %35 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %36 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @gpio_free(i32 %37)
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %41 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %40, i32 0, i32 2
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = icmp ne i32 (i32)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %46 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %45, i32 0, i32 2
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %49 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %47(i32 %50)
  br label %52

52:                                               ; preds = %44, %39
  %53 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %54 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %53, i32 0, i32 0
  %55 = load %struct.ads7846*, %struct.ads7846** %54, align 8
  %56 = call i32 @kfree(%struct.ads7846* %55)
  %57 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %58 = call i32 @kfree(%struct.ads7846* %57)
  %59 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 0
  %61 = call i32 @dev_dbg(%struct.TYPE_4__* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.ads7846* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @ads7846_disable(%struct.ads7846*) #1

declare dso_local i32 @free_irq(i32, %struct.ads7846*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @ads784x_hwmon_unregister(%struct.spi_device*, %struct.ads7846*) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(%struct.ads7846*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
