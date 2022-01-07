; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7616_write_scale_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7616_write_scale_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7606_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ad7606_state*, i32, i32, i32)* }

@AD7616_RANGE_CH_A_ADDR_OFF = common dso_local global i64 0, align 8
@AD7616_RANGE_CH_B_ADDR_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @ad7616_write_scale_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7616_write_scale_sw(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad7606_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = call %struct.ad7606_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.ad7606_state* %12, %struct.ad7606_state** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 1
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @AD7616_RANGE_CH_ADDR(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i64, i64* @AD7616_RANGE_CH_A_ADDR_OFF, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  br label %32

26:                                               ; preds = %3
  %27 = load i64, i64* @AD7616_RANGE_CH_B_ADDR_OFF, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = and i32 %35, 3
  %37 = call i32 @AD7616_RANGE_CH_MODE(i32 %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ad7606_state*, %struct.ad7606_state** %7, align 8
  %39 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.ad7606_state*, i32, i32, i32)*, i32 (%struct.ad7606_state*, i32, i32, i32)** %41, align 8
  %43 = load %struct.ad7606_state*, %struct.ad7606_state** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @AD7616_RANGE_CH_MSK(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 %42(%struct.ad7606_state* %43, i32 %44, i32 %46, i32 %47)
  ret i32 %48
}

declare dso_local %struct.ad7606_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @AD7616_RANGE_CH_ADDR(i32) #1

declare dso_local i32 @AD7616_RANGE_CH_MODE(i32, i32) #1

declare dso_local i32 @AD7616_RANGE_CH_MSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
