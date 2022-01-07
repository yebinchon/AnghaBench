; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7606_spi_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7606_spi_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7606_state = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.spi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7606_state*, i32, i32)* @ad7606_spi_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7606_spi_reg_write(%struct.ad7606_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ad7606_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_device*, align 8
  store %struct.ad7606_state* %0, %struct.ad7606_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ad7606_state*, %struct.ad7606_state** %4, align 8
  %9 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.spi_device* @to_spi_device(i32 %10)
  store %struct.spi_device* %11, %struct.spi_device** %7, align 8
  %12 = load %struct.ad7606_state*, %struct.ad7606_state** %4, align 8
  %13 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 %16(i32 %17, i32 1)
  %19 = shl i32 %18, 8
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 511
  %22 = or i32 %19, %21
  %23 = call i32 @cpu_to_be16(i32 %22)
  %24 = load %struct.ad7606_state*, %struct.ad7606_state** %4, align 8
  %25 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %29 = load %struct.ad7606_state*, %struct.ad7606_state** %4, align 8
  %30 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @spi_write(%struct.spi_device* %28, i32* %32, i32 4)
  ret i32 %33
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
