; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_fsl-imx25-gcq.c_mx25_gcq_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_fsl-imx25-gcq.c_mx25_gcq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.mx25_gcq_priv = type { i64*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mx25_gcq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25_gcq_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.mx25_gcq_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.iio_dev* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.iio_dev* %7, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.mx25_gcq_priv* @iio_priv(%struct.iio_dev* %8)
  store %struct.mx25_gcq_priv* %9, %struct.mx25_gcq_priv** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %11 = call i32 @iio_device_unregister(%struct.iio_dev* %10)
  %12 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mx25_gcq_priv, %struct.mx25_gcq_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %4, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.mx25_gcq_priv* %15)
  %17 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mx25_gcq_priv, %struct.mx25_gcq_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  store i32 4, i32* %5, align 4
  br label %21

21:                                               ; preds = %43, %1
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = icmp sgt i32 %22, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mx25_gcq_priv, %struct.mx25_gcq_priv* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mx25_gcq_priv, %struct.mx25_gcq_priv* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @regulator_disable(i64 %41)
  br label %43

43:                                               ; preds = %34, %25
  br label %21

44:                                               ; preds = %21
  ret i32 0
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mx25_gcq_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.mx25_gcq_priv*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
