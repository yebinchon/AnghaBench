; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x-spi.c_adxl34x_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x-spi.c_adxl34x_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32, i32 }
%struct.adxl34x = type { i32 }

@MAX_SPI_FREQ_HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"SPI CLK %d Hz too fast\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_FREQ_NO_FIFODELAY = common dso_local global i64 0, align 8
@adxl34x_spi_bops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adxl34x_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl34x_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.adxl34x*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MAX_SPI_FREQ_HZ, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 2
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 2
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAX_FREQ_NO_FIFODELAY, align 8
  %29 = icmp sgt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call %struct.adxl34x* @adxl34x_probe(i32* %21, i32 %24, i32 %30, i32* @adxl34x_spi_bops)
  store %struct.adxl34x* %31, %struct.adxl34x** %4, align 8
  %32 = load %struct.adxl34x*, %struct.adxl34x** %4, align 8
  %33 = call i64 @IS_ERR(%struct.adxl34x* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load %struct.adxl34x*, %struct.adxl34x** %4, align 8
  %37 = call i32 @PTR_ERR(%struct.adxl34x* %36)
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %19
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = load %struct.adxl34x*, %struct.adxl34x** %4, align 8
  %41 = call i32 @spi_set_drvdata(%struct.spi_device* %39, %struct.adxl34x* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %35, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local %struct.adxl34x* @adxl34x_probe(i32*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.adxl34x*) #1

declare dso_local i32 @PTR_ERR(%struct.adxl34x*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.adxl34x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
