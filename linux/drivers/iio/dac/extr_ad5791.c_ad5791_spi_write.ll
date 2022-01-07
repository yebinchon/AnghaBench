; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5791.c_ad5791_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5791.c_ad5791_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5791_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@AD5791_CMD_WRITE = common dso_local global i32 0, align 4
@AD5791_DAC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5791_state*, i32, i32)* @ad5791_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5791_spi_write(%struct.ad5791_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ad5791_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad5791_state* %0, %struct.ad5791_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @AD5791_CMD_WRITE, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @AD5791_ADDR(i32 %8)
  %10 = or i32 %7, %9
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AD5791_DAC_MASK, align 4
  %13 = and i32 %11, %12
  %14 = or i32 %10, %13
  %15 = call i32 @cpu_to_be32(i32 %14)
  %16 = load %struct.ad5791_state*, %struct.ad5791_state** %4, align 8
  %17 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %15, i32* %20, align 8
  %21 = load %struct.ad5791_state*, %struct.ad5791_state** %4, align 8
  %22 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ad5791_state*, %struct.ad5791_state** %4, align 8
  %25 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = call i32 @spi_write(i32 %23, i32* %30, i32 3)
  ret i32 %31
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @AD5791_ADDR(i32) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
