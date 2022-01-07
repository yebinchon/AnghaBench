; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.xadc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XADC_FLAGS_BUFFERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xadc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.xadc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.iio_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.xadc* @iio_priv(%struct.iio_dev* %7)
  store %struct.xadc* %8, %struct.xadc** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.xadc*, %struct.xadc** %4, align 8
  %12 = getelementptr inbounds %struct.xadc, %struct.xadc* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @XADC_FLAGS_BUFFERED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.xadc*, %struct.xadc** %4, align 8
  %21 = getelementptr inbounds %struct.xadc, %struct.xadc* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iio_trigger_free(i32 %22)
  %24 = load %struct.xadc*, %struct.xadc** %4, align 8
  %25 = getelementptr inbounds %struct.xadc, %struct.xadc* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iio_trigger_free(i32 %26)
  %28 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %29 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.xadc*, %struct.xadc** %4, align 8
  %32 = getelementptr inbounds %struct.xadc, %struct.xadc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %35 = call i32 @free_irq(i32 %33, %struct.iio_dev* %34)
  %36 = load %struct.xadc*, %struct.xadc** %4, align 8
  %37 = getelementptr inbounds %struct.xadc, %struct.xadc* %36, i32 0, i32 2
  %38 = call i32 @cancel_delayed_work_sync(i32* %37)
  %39 = load %struct.xadc*, %struct.xadc** %4, align 8
  %40 = getelementptr inbounds %struct.xadc, %struct.xadc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  %43 = load %struct.xadc*, %struct.xadc** %4, align 8
  %44 = getelementptr inbounds %struct.xadc, %struct.xadc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kfree(i32 %49)
  ret i32 0
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.xadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_free(i32) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.iio_dev*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
