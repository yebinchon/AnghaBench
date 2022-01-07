; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ads8688_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i32* }
%struct.spi_transfer = type { i32, i32, i32*, i32* }

@ADS8688_CMD_DONT_CARE_BITS = common dso_local global i32 0, align 4
@ADS8688_CMD_REG_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @ads8688_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads8688_read(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ads8688_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.ads8688_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.ads8688_state* %11, %struct.ads8688_state** %6, align 8
  %12 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 3
  %17 = load %struct.ads8688_state*, %struct.ads8688_state** %6, align 8
  %18 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32* %23, i32** %16, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i64 1
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 2
  %28 = load %struct.ads8688_state*, %struct.ads8688_state** %6, align 8
  %29 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32* %34, i32** %27, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 3
  %36 = load %struct.ads8688_state*, %struct.ads8688_state** %6, align 8
  %37 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32* %42, i32** %35, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ADS8688_CMD_REG_MAN_CH(i32 %43)
  %45 = call i32 @ADS8688_CMD_REG(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @ADS8688_CMD_DONT_CARE_BITS, align 4
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = load %struct.ads8688_state*, %struct.ads8688_state** %6, align 8
  %52 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %50, i8** %55, align 8
  %56 = load i32, i32* @ADS8688_CMD_REG_NOOP, align 4
  %57 = call i32 @ADS8688_CMD_REG(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @ADS8688_CMD_DONT_CARE_BITS, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i8* @cpu_to_be32(i32 %61)
  %63 = load %struct.ads8688_state*, %struct.ads8688_state** %6, align 8
  %64 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %62, i8** %67, align 8
  %68 = load %struct.ads8688_state*, %struct.ads8688_state** %6, align 8
  %69 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %72 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %73 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %72)
  %74 = call i32 @spi_sync_transfer(i32 %70, %struct.spi_transfer* %71, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %2
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %88

79:                                               ; preds = %2
  %80 = load %struct.ads8688_state*, %struct.ads8688_state** %6, align 8
  %81 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @be32_to_cpu(i8* %85)
  %87 = and i32 %86, 65535
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %79, %77
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.ads8688_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ADS8688_CMD_REG(i32) #1

declare dso_local i32 @ADS8688_CMD_REG_MAN_CH(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
