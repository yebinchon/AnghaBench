; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5449.c_ad5449_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5449.c_ad5449_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad5449 = type { i8**, i32 }
%struct.spi_transfer = type { i32, i32, i8**, i8** }

@AD5449_CMD_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*)* @ad5449_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5449_read(%struct.iio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ad5449*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.ad5449* @iio_priv(%struct.iio_dev* %10)
  store %struct.ad5449* %11, %struct.ad5449** %7, align 8
  %12 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32 2, i32* %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i8** null, i8*** %15, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 3
  %17 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %18 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  store i8** %20, i8*** %16, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i64 1
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  store i32 2, i32* %22, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 2
  %25 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %26 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8** %28, i8*** %24, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 3
  %30 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %31 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8** %33, i8*** %29, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 12
  %39 = call i8* @cpu_to_be16(i32 %38)
  %40 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %41 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  store i8* %39, i8** %43, align 8
  %44 = load i32, i32* @AD5449_CMD_NOOP, align 4
  %45 = call i8* @cpu_to_be16(i32 %44)
  %46 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %47 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  store i8* %45, i8** %49, align 8
  %50 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %51 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %54 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %55 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %54)
  %56 = call i32 @spi_sync_transfer(i32 %52, %struct.spi_transfer* %53, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %3
  br label %68

60:                                               ; preds = %3
  %61 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %62 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @be16_to_cpu(i8* %65)
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %59
  %69 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local %struct.ad5449* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @be16_to_cpu(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
