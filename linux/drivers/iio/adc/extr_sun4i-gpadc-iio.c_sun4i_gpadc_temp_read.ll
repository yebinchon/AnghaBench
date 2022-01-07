; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_temp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_temp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sun4i_gpadc_iio = type { i32, i32, i64 }

@SUN4I_GPADC_TEMP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32*)* @sun4i_gpadc_temp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_gpadc_temp_read(%struct.iio_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sun4i_gpadc_iio*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %8 = call %struct.sun4i_gpadc_iio* @iio_priv(%struct.iio_dev* %7)
  store %struct.sun4i_gpadc_iio* %8, %struct.sun4i_gpadc_iio** %6, align 8
  %9 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %6, align 8
  %10 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  %19 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %6, align 8
  %20 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SUN4I_GPADC_TEMP_DATA, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @regmap_read(i32 %21, i32 %22, i32* %23)
  %25 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_mark_last_busy(i32 %28)
  %30 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pm_runtime_put_autosuspend(i32 %33)
  store i32 0, i32* %3, align 4
  br label %42

35:                                               ; preds = %2
  %36 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %6, align 8
  %39 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sun4i_gpadc_read(%struct.iio_dev* %36, i32 0, i32* %37, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.sun4i_gpadc_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @sun4i_gpadc_read(%struct.iio_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
