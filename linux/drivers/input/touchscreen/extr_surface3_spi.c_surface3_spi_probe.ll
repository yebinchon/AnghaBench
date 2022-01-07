; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.surface3_ts_data = type { %struct.spi_device* }

@SPI_MODE_0 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@surface3_spi_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Surface3-irq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @surface3_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface3_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.surface3_ts_data*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  store i32 8, i32* %7, align 4
  %8 = load i32, i32* @SPI_MODE_0, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = call i32 @spi_setup(%struct.spi_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %75

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.surface3_ts_data* @devm_kzalloc(i32* %19, i32 8, i32 %20)
  store %struct.surface3_ts_data* %21, %struct.surface3_ts_data** %4, align 8
  %22 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %4, align 8
  %23 = icmp ne %struct.surface3_ts_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %75

27:                                               ; preds = %17
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %4, align 8
  %30 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %29, i32 0, i32 0
  store %struct.spi_device* %28, %struct.spi_device** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %4, align 8
  %33 = call i32 @spi_set_drvdata(%struct.spi_device* %31, %struct.surface3_ts_data* %32)
  %34 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %4, align 8
  %35 = call i32 @surface3_spi_get_gpio_config(%struct.surface3_ts_data* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %75

40:                                               ; preds = %27
  %41 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %4, align 8
  %42 = call i32 @surface3_spi_power(%struct.surface3_ts_data* %41, i32 1)
  %43 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %4, align 8
  %44 = call i32 @surface3_spi_power(%struct.surface3_ts_data* %43, i32 0)
  %45 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %4, align 8
  %46 = call i32 @surface3_spi_power(%struct.surface3_ts_data* %45, i32 1)
  %47 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %4, align 8
  %48 = call i32 @surface3_spi_create_touch_input(%struct.surface3_ts_data* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %75

53:                                               ; preds = %40
  %54 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %4, align 8
  %55 = call i32 @surface3_spi_create_pen_input(%struct.surface3_ts_data* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %75

60:                                               ; preds = %53
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 2
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @surface3_spi_irq_handler, align 4
  %67 = load i32, i32* @IRQF_ONESHOT, align 4
  %68 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %4, align 8
  %69 = call i32 @devm_request_threaded_irq(i32* %62, i32 %65, i32* null, i32 %66, i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.surface3_ts_data* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %72, %58, %51, %38, %24, %15
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.surface3_ts_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.surface3_ts_data*) #1

declare dso_local i32 @surface3_spi_get_gpio_config(%struct.surface3_ts_data*) #1

declare dso_local i32 @surface3_spi_power(%struct.surface3_ts_data*, i32) #1

declare dso_local i32 @surface3_spi_create_touch_input(%struct.surface3_ts_data*) #1

declare dso_local i32 @surface3_spi_create_pen_input(%struct.surface3_ts_data*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.surface3_ts_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
