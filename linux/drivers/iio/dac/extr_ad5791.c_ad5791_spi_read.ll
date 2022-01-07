; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5791.c_ad5791_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5791.c_ad5791_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5791_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i32* }
%struct.spi_transfer = type { i32, i32, i32, i32*, i32* }

@AD5791_CMD_READ = common dso_local global i32 0, align 4
@AD5791_ADDR_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5791_state*, i32, i32*)* @ad5791_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5791_spi_read(%struct.ad5791_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ad5791_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.ad5791_state* %0, %struct.ad5791_state** %4, align 8
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
  %15 = load %struct.ad5791_state*, %struct.ad5791_state** %4, align 8
  %16 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %15, i32 0, i32 0
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
  %27 = load %struct.ad5791_state*, %struct.ad5791_state** %4, align 8
  %28 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32* %33, i32** %26, align 16
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 4
  %35 = load %struct.ad5791_state*, %struct.ad5791_state** %4, align 8
  %36 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32* %41, i32** %34, align 8
  %42 = load i32, i32* @AD5791_CMD_READ, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @AD5791_ADDR(i32 %43)
  %45 = or i32 %42, %44
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.ad5791_state*, %struct.ad5791_state** %4, align 8
  %48 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %46, i8** %51, align 8
  %52 = load i32, i32* @AD5791_ADDR_NOOP, align 4
  %53 = call i32 @AD5791_ADDR(i32 %52)
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = load %struct.ad5791_state*, %struct.ad5791_state** %4, align 8
  %56 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i8* %54, i8** %59, align 8
  %60 = load %struct.ad5791_state*, %struct.ad5791_state** %4, align 8
  %61 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %64 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %65 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %64)
  %66 = call i32 @spi_sync_transfer(i32 %62, %struct.spi_transfer* %63, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.ad5791_state*, %struct.ad5791_state** %4, align 8
  %68 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @be32_to_cpu(i8* %72)
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @AD5791_ADDR(i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
