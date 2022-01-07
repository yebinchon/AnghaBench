; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad9523_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32* }
%struct.spi_transfer = type { i32, i32* }

@AD9523_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"write failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @ad9523_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9523_write(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad9523_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.ad9523_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.ad9523_state* %11, %struct.ad9523_state** %7, align 8
  %12 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32 2, i32* %13, align 16
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  %15 = load %struct.ad9523_state*, %struct.ad9523_state** %7, align 8
  %16 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32* %21, i32** %14, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i64 1
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @AD9523_TRANSF_LEN(i32 %24)
  store i32 %25, i32* %23, align 16
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  %27 = load %struct.ad9523_state*, %struct.ad9523_state** %7, align 8
  %28 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @AD9523_TRANSF_LEN(i32 %33)
  %35 = sub nsw i32 4, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32* %37, i32** %26, align 8
  %38 = load i32, i32* @AD9523_WRITE, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @AD9523_TRANSF_LEN(i32 %39)
  %41 = call i32 @AD9523_CNT(i32 %40)
  %42 = or i32 %38, %41
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @AD9523_ADDR(i32 %43)
  %45 = or i32 %42, %44
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.ad9523_state*, %struct.ad9523_state** %7, align 8
  %48 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %46, i8** %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.ad9523_state*, %struct.ad9523_state** %7, align 8
  %55 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %53, i8** %58, align 8
  %59 = load %struct.ad9523_state*, %struct.ad9523_state** %7, align 8
  %60 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %63 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %64 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %63)
  %65 = call i32 @spi_sync_transfer(i32 %61, %struct.spi_transfer* %62, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %3
  %69 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %3
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local %struct.ad9523_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @AD9523_TRANSF_LEN(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @AD9523_CNT(i32) #1

declare dso_local i32 @AD9523_ADDR(i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
