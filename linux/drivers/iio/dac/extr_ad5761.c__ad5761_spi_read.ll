; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c__ad5761_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c__ad5761_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5761_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i32* }
%struct.spi_transfer = type { i32, i32, i32, i32*, i32* }

@AD5761_ADDR_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5761_state*, i32, i32*)* @_ad5761_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ad5761_spi_read(%struct.ad5761_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ad5761_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.ad5761_state* %0, %struct.ad5761_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  store i32 8, i32* %10, align 16
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  store i32 3, i32* %11, align 4
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 3
  store i32* null, i32** %13, align 16
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 4
  %15 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %16 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32* %21, i32** %14, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i64 1
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  store i32 8, i32* %23, align 16
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  store i32 3, i32* %24, align 4
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 3
  %27 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %28 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32* %33, i32** %26, align 16
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 4
  %35 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %36 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32* %41, i32** %34, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @AD5761_ADDR(i32 %42)
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %46 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i8* %44, i8** %49, align 8
  %50 = load i32, i32* @AD5761_ADDR_NOOP, align 4
  %51 = call i32 @AD5761_ADDR(i32 %50)
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %54 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* %52, i8** %57, align 8
  %58 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %59 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %62 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %63 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %62)
  %64 = call i32 @spi_sync_transfer(i32 %60, %struct.spi_transfer* %61, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %66 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @be32_to_cpu(i8* %70)
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @AD5761_ADDR(i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
