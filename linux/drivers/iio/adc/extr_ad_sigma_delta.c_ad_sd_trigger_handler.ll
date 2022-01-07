; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ad_sigma_delta = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@AD_SD_REG_DATA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ad_sd_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_sd_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ad_sigma_delta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %13, %struct.iio_poll_func** %5, align 8
  %14 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %15 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %14, i32 0, i32 1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %15, align 8
  store %struct.iio_dev* %16, %struct.iio_dev** %6, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call %struct.ad_sigma_delta* @iio_device_get_drvdata(%struct.iio_dev* %17)
  store %struct.ad_sigma_delta* %18, %struct.ad_sigma_delta** %7, align 8
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %20 = call i32 @memset(i32* %19, i32 0, i32 16)
  %21 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %22 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %27, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @DIV_ROUND_UP(i32 %36, i32 8)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %7, align 8
  %39 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %7, align 8
  %46 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  br label %52

50:                                               ; preds = %2
  %51 = load i32, i32* @AD_SD_REG_DATA, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %66 [
    i32 4, label %54
    i32 2, label %54
    i32 1, label %54
    i32 3, label %60
  ]

54:                                               ; preds = %52, %52, %52
  %55 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %59 = call i32 @ad_sd_read_reg_raw(%struct.ad_sigma_delta* %55, i32 %56, i32 %57, i32* %58)
  store i32 %59, i32* %11, align 4
  br label %66

60:                                               ; preds = %52
  %61 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 1
  %65 = call i32 @ad_sd_read_reg_raw(%struct.ad_sigma_delta* %61, i32 %62, i32 %63, i32* %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %52, %60, %54
  %67 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %69 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %70 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %67, i32* %68, i32 %71)
  %73 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @iio_trigger_notify_done(i32 %75)
  %77 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %7, align 8
  %78 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %7, align 8
  %80 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @enable_irq(i32 %83)
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %85
}

declare dso_local %struct.ad_sigma_delta* @iio_device_get_drvdata(%struct.iio_dev*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ad_sd_read_reg_raw(%struct.ad_sigma_delta*, i32, i32, i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
