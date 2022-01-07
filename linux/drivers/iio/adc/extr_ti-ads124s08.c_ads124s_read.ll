; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads124s08.c_ads124s_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads124s08.c_ads124s_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ads124s_private = type { i32*, i32 }
%struct.spi_transfer = type { i32*, i32, i32, i32* }

@ADS124S08_CMD_RDATA = common dso_local global i32 0, align 4
@ADS124S08_CMD_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @ads124s_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads124s_read(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ads124s_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.ads124s_private* @iio_priv(%struct.iio_dev* %10)
  store %struct.ads124s_private* %11, %struct.ads124s_private** %6, align 8
  %12 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  %14 = load %struct.ads124s_private*, %struct.ads124s_private** %6, align 8
  %15 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32* %17, i32** %13, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32 4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i64 1
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  %23 = load %struct.ads124s_private*, %struct.ads124s_private** %6, align 8
  %24 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32* %26, i32** %22, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 1
  store i32 4, i32* %27, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 3
  %30 = load %struct.ads124s_private*, %struct.ads124s_private** %6, align 8
  %31 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32* %33, i32** %29, align 8
  %34 = load i32, i32* @ADS124S08_CMD_RDATA, align 4
  %35 = load %struct.ads124s_private*, %struct.ads124s_private** %6, align 8
  %36 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.ads124s_private*, %struct.ads124s_private** %6, align 8
  %40 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* @ADS124S08_CMD_NOP, align 4
  %44 = call i32 @memset(i32* %42, i32 %43, i32 7)
  %45 = load %struct.ads124s_private*, %struct.ads124s_private** %6, align 8
  %46 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %49 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %50 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %49)
  %51 = call i32 @spi_sync_transfer(i32 %47, %struct.spi_transfer* %48, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %2
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %77

56:                                               ; preds = %2
  %57 = load %struct.ads124s_private*, %struct.ads124s_private** %6, align 8
  %58 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 16
  %63 = load %struct.ads124s_private*, %struct.ads124s_private** %6, align 8
  %64 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %62, %68
  %70 = load %struct.ads124s_private*, %struct.ads124s_private** %6, align 8
  %71 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %69, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %56, %54
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.ads124s_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
