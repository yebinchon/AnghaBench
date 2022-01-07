; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5764.c_ad5764_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5764.c_ad5764_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad5764_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.spi_transfer = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*)* @ad5764_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5764_read(%struct.iio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ad5764_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.ad5764_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.ad5764_state* %11, %struct.ad5764_state** %7, align 8
  %12 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32 3, i32* %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 3
  %17 = load %struct.ad5764_state*, %struct.ad5764_state** %7, align 8
  %18 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32* %23, i32** %16, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i64 1
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 0
  store i32 3, i32* %25, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 2
  %28 = load %struct.ad5764_state*, %struct.ad5764_state** %7, align 8
  %29 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32* %34, i32** %27, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 16
  %41 = or i32 8388608, %40
  %42 = call i32 @cpu_to_be32(i32 %41)
  %43 = load %struct.ad5764_state*, %struct.ad5764_state** %7, align 8
  %44 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 8
  %48 = load %struct.ad5764_state*, %struct.ad5764_state** %7, align 8
  %49 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %52 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %53 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %52)
  %54 = call i32 @spi_sync_transfer(i32 %50, %struct.spi_transfer* %51, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %3
  %58 = load %struct.ad5764_state*, %struct.ad5764_state** %7, align 8
  %59 = getelementptr inbounds %struct.ad5764_state, %struct.ad5764_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @be32_to_cpu(i32 %63)
  %65 = and i32 %64, 65535
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %57, %3
  %68 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.ad5764_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
