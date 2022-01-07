; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_aspeed_adc.c_aspeed_adc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_aspeed_adc.c_aspeed_adc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.aspeed_adc_data = type { %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@ASPEED_OPERATION_MODE_POWER_DOWN = common dso_local global i32 0, align 4
@ASPEED_REG_ENGINE_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_adc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_adc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.aspeed_adc_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.iio_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.aspeed_adc_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.aspeed_adc_data* %8, %struct.aspeed_adc_data** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load i32, i32* @ASPEED_OPERATION_MODE_POWER_DOWN, align 4
  %12 = load %struct.aspeed_adc_data*, %struct.aspeed_adc_data** %4, align 8
  %13 = getelementptr inbounds %struct.aspeed_adc_data, %struct.aspeed_adc_data* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ASPEED_REG_ENGINE_CONTROL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load %struct.aspeed_adc_data*, %struct.aspeed_adc_data** %4, align 8
  %19 = getelementptr inbounds %struct.aspeed_adc_data, %struct.aspeed_adc_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  %24 = load %struct.aspeed_adc_data*, %struct.aspeed_adc_data** %4, align 8
  %25 = getelementptr inbounds %struct.aspeed_adc_data, %struct.aspeed_adc_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @reset_control_assert(i32 %26)
  %28 = load %struct.aspeed_adc_data*, %struct.aspeed_adc_data** %4, align 8
  %29 = getelementptr inbounds %struct.aspeed_adc_data, %struct.aspeed_adc_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @clk_hw_unregister_divider(%struct.TYPE_2__* %30)
  %32 = load %struct.aspeed_adc_data*, %struct.aspeed_adc_data** %4, align 8
  %33 = getelementptr inbounds %struct.aspeed_adc_data, %struct.aspeed_adc_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @clk_hw_unregister_divider(%struct.TYPE_2__* %34)
  ret i32 0
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.aspeed_adc_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_hw_unregister_divider(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
