; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_spi.c_bme680_regmap_spi_select_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_spi.c_bme680_regmap_spi_select_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_spi_bus_context = type { i32, %struct.spi_device* }
%struct.spi_device = type { i32 }

@BME680_REG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to set page %u\0A\00", align 1
@BME680_SPI_MEM_PAGE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_spi_bus_context*, i32)* @bme680_regmap_spi_select_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_regmap_spi_select_page(%struct.bme680_spi_bus_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bme680_spi_bus_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.bme680_spi_bus_context* %0, %struct.bme680_spi_bus_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bme680_spi_bus_context*, %struct.bme680_spi_bus_context** %4, align 8
  %11 = getelementptr inbounds %struct.bme680_spi_bus_context, %struct.bme680_spi_bus_context* %10, i32 0, i32 1
  %12 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  store %struct.spi_device* %12, %struct.spi_device** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 1
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.bme680_spi_bus_context*, %struct.bme680_spi_bus_context** %4, align 8
  %20 = getelementptr inbounds %struct.bme680_spi_bus_context, %struct.bme680_spi_bus_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

24:                                               ; preds = %2
  %25 = load i32, i32* @BME680_REG_STATUS, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = call i32 @spi_write_then_read(%struct.spi_device* %27, i32* %28, i32 1, i32* %30, i32 1)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %72

40:                                               ; preds = %24
  %41 = load i32, i32* @BME680_REG_STATUS, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @BME680_SPI_MEM_PAGE_BIT, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %56

50:                                               ; preds = %40
  %51 = load i32, i32* @BME680_SPI_MEM_PAGE_BIT, align 4
  %52 = xor i32 %51, -1
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %59 = call i32 @spi_write(%struct.spi_device* %57, i32* %58, i32 2)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %72

68:                                               ; preds = %56
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.bme680_spi_bus_context*, %struct.bme680_spi_bus_context** %4, align 8
  %71 = getelementptr inbounds %struct.bme680_spi_bus_context, %struct.bme680_spi_bus_context* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %62, %34, %23
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
