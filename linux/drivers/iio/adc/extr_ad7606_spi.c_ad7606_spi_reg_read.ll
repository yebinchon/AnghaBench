; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7606_spi_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7606_spi_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7606_state = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7606_state*, i32)* @ad7606_spi_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7606_spi_reg_read(%struct.ad7606_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7606_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca [2 x %struct.spi_transfer], align 16
  %8 = alloca i32, align 4
  store %struct.ad7606_state* %0, %struct.ad7606_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ad7606_state*, %struct.ad7606_state** %4, align 8
  %10 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.spi_device* @to_spi_device(i32 %11)
  store %struct.spi_device* %12, %struct.spi_device** %6, align 8
  %13 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %7, i64 0, i64 0
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  store i32 2, i32* %14, align 16
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 2
  store i32 0, i32* %16, align 16
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 3
  %18 = load %struct.ad7606_state*, %struct.ad7606_state** %4, align 8
  %19 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32* %21, i32** %17, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i64 1
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  store i32 2, i32* %23, align 16
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  %25 = load %struct.ad7606_state*, %struct.ad7606_state** %4, align 8
  %26 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32* %28, i32** %24, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 2
  store i32 0, i32* %29, align 16
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = load %struct.ad7606_state*, %struct.ad7606_state** %4, align 8
  %32 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 %35(i32 %36, i32 0)
  %38 = shl i32 %37, 8
  %39 = call i32 @cpu_to_be16(i32 %38)
  %40 = load %struct.ad7606_state*, %struct.ad7606_state** %4, align 8
  %41 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %45 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %7, i64 0, i64 0
  %46 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %7, i64 0, i64 0
  %47 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %46)
  %48 = call i32 @spi_sync_transfer(%struct.spi_device* %44, %struct.spi_transfer* %45, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %2
  %54 = load %struct.ad7606_state*, %struct.ad7606_state** %4, align 8
  %55 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be16_to_cpu(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %51
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_sync_transfer(%struct.spi_device*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
