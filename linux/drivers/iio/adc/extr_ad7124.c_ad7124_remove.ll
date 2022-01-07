; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7124_state = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7124_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7124_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad7124_state*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = call %struct.iio_dev* @spi_get_drvdata(%struct.spi_device* %6)
  store %struct.iio_dev* %7, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.ad7124_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.ad7124_state* %9, %struct.ad7124_state** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %11 = call i32 @iio_device_unregister(%struct.iio_dev* %10)
  %12 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %13 = call i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev* %12)
  %14 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %15 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_disable_unprepare(i32 %16)
  %18 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %19 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %46, %1
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %28 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IS_ERR_OR_NULL(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %26
  %37 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %38 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regulator_disable(i32 %43)
  br label %45

45:                                               ; preds = %36, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  br label %23

49:                                               ; preds = %23
  ret i32 0
}

declare dso_local %struct.iio_dev* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local %struct.ad7124_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
