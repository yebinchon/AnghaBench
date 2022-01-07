; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ssp_data = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SSP_MSG2SSP_AP_STATUS_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SSP_MSG2SSP_AP_STATUS_SHUTDOWN failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ssp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssp_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ssp_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.ssp_data* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.ssp_data* %5, %struct.ssp_data** %3, align 8
  %6 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %7 = load i32, i32* @SSP_MSG2SSP_AP_STATUS_SHUTDOWN, align 4
  %8 = call i64 @ssp_command(%struct.ssp_data* %6, i32 %7, i32 0)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %12 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %18 = call i32 @ssp_enable_mcu(%struct.ssp_data* %17, i32 0)
  %19 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %20 = call i32 @ssp_disable_wdt_timer(%struct.ssp_data* %19)
  %21 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %22 = call i32 @ssp_clean_pending_list(%struct.ssp_data* %21)
  %23 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %24 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %29 = call i32 @free_irq(i32 %27, %struct.ssp_data* %28)
  %30 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %31 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %30, i32 0, i32 3
  %32 = call i32 @del_timer_sync(i32* %31)
  %33 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %34 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %33, i32 0, i32 2
  %35 = call i32 @cancel_work_sync(i32* %34)
  %36 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %37 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_destroy(i32* %37)
  %39 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %40 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_destroy(i32* %40)
  %42 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  %44 = call i32 @mfd_remove_devices(i32* %43)
  ret i32 0
}

declare dso_local %struct.ssp_data* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i64 @ssp_command(%struct.ssp_data*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ssp_enable_mcu(%struct.ssp_data*, i32) #1

declare dso_local i32 @ssp_disable_wdt_timer(%struct.ssp_data*) #1

declare dso_local i32 @ssp_clean_pending_list(%struct.ssp_data*) #1

declare dso_local i32 @free_irq(i32, %struct.ssp_data*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @mfd_remove_devices(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
