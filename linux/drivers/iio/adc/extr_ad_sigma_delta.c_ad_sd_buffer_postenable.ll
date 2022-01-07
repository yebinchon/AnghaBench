; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_buffer_postenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_buffer_postenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ad_sigma_delta = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@AD_SD_MODE_CONTINUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad_sd_buffer_postenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_sd_buffer_postenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad_sigma_delta*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.ad_sigma_delta* @iio_device_get_drvdata(%struct.iio_dev* %7)
  store %struct.ad_sigma_delta* %8, %struct.ad_sigma_delta** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_triggered_buffer_postenable(%struct.iio_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %71

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @find_first_bit(i32 %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ad_sigma_delta_set_channel(%struct.ad_sigma_delta* %23, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %15
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %71

37:                                               ; preds = %15
  %38 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %39 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @spi_bus_lock(i32 %42)
  %44 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %45 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %47 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %49 = load i32, i32* @AD_SD_MODE_CONTINUOUS, align 4
  %50 = call i32 @ad_sigma_delta_set_mode(%struct.ad_sigma_delta* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %63

54:                                               ; preds = %37
  %55 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %56 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %58 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @enable_irq(i32 %61)
  store i32 0, i32* %2, align 4
  br label %71

63:                                               ; preds = %53
  %64 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %65 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @spi_bus_unlock(i32 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %63, %54, %35, %13
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.ad_sigma_delta* @iio_device_get_drvdata(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_postenable(%struct.iio_dev*) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @ad_sigma_delta_set_channel(%struct.ad_sigma_delta*, i32) #1

declare dso_local i32 @spi_bus_lock(i32) #1

declare dso_local i32 @ad_sigma_delta_set_mode(%struct.ad_sigma_delta*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @spi_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
