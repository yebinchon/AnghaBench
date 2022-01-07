; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c__ad5761_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c__ad5761_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5761_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5761_state*, i32, i32)* @_ad5761_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ad5761_spi_write(%struct.ad5761_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ad5761_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad5761_state* %0, %struct.ad5761_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @AD5761_ADDR(i32 %7)
  %9 = load i32, i32* %6, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @cpu_to_be32(i32 %10)
  %12 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %13 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %11, i32* %16, align 8
  %17 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %18 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %21 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = call i32 @spi_write(i32 %19, i32* %26, i32 3)
  ret i32 %27
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @AD5761_ADDR(i32) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
