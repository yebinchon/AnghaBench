; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad7303.c_ad7303_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad7303.c_ad7303_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7303_state = type { i32, i32, i32 }

@AD7303_CMD_UPDATE_DAC = common dso_local global i32 0, align 4
@AD7303_CFG_ADDR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7303_state*, i32, i32)* @ad7303_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7303_write(%struct.ad7303_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ad7303_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad7303_state* %0, %struct.ad7303_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @AD7303_CMD_UPDATE_DAC, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @AD7303_CFG_ADDR_OFFSET, align 4
  %10 = shl i32 %8, %9
  %11 = or i32 %7, %10
  %12 = load %struct.ad7303_state*, %struct.ad7303_state** %4, align 8
  %13 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @cpu_to_be16(i32 %17)
  %19 = load %struct.ad7303_state*, %struct.ad7303_state** %4, align 8
  %20 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ad7303_state*, %struct.ad7303_state** %4, align 8
  %22 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ad7303_state*, %struct.ad7303_state** %4, align 8
  %25 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %24, i32 0, i32 1
  %26 = call i32 @spi_write(i32 %23, i32* %25, i32 4)
  ret i32 %26
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
