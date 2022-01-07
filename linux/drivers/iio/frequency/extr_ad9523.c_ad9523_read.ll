; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad9523_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.spi_transfer = type { i32, i32*, i32* }

@AD9523_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"read failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @ad9523_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9523_read(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad9523_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.ad9523_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.ad9523_state* %9, %struct.ad9523_state** %5, align 8
  %10 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %7, i64 0, i64 0
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  store i32 2, i32* %11, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  %14 = load %struct.ad9523_state*, %struct.ad9523_state** %5, align 8
  %15 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32* %20, i32** %13, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i64 1
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @AD9523_TRANSF_LEN(i32 %23)
  store i32 %24, i32* %22, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 1
  %26 = load %struct.ad9523_state*, %struct.ad9523_state** %5, align 8
  %27 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @AD9523_TRANSF_LEN(i32 %32)
  %34 = sub nsw i32 4, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  store i32* %36, i32** %25, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @AD9523_READ, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @AD9523_TRANSF_LEN(i32 %39)
  %41 = call i32 @AD9523_CNT(i32 %40)
  %42 = or i32 %38, %41
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @AD9523_ADDR(i32 %43)
  %45 = or i32 %42, %44
  %46 = call i32 @cpu_to_be32(i32 %45)
  %47 = load %struct.ad9523_state*, %struct.ad9523_state** %5, align 8
  %48 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 8
  %52 = load %struct.ad9523_state*, %struct.ad9523_state** %5, align 8
  %53 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %7, i64 0, i64 0
  %56 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %7, i64 0, i64 0
  %57 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %56)
  %58 = call i32 @spi_sync_transfer(i32 %54, %struct.spi_transfer* %55, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %2
  %62 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %80

66:                                               ; preds = %2
  %67 = load %struct.ad9523_state*, %struct.ad9523_state** %5, align 8
  %68 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @be32_to_cpu(i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @AD9523_TRANSF_LEN(i32 %74)
  %76 = sub nsw i32 3, %75
  %77 = mul nsw i32 8, %76
  %78 = ashr i32 16777215, %77
  %79 = and i32 %73, %78
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %66, %61
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.ad9523_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @AD9523_TRANSF_LEN(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @AD9523_CNT(i32) #1

declare dso_local i32 @AD9523_ADDR(i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
