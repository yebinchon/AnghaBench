; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad8801.c_ad8801_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad8801.c_ad8801_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad8801_state = type { i32, i32 }

@AD8801_CFG_ADDR_OFFSET = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad8801_state*, i8, i8)* @ad8801_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad8801_spi_write(%struct.ad8801_state* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.ad8801_state*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.ad8801_state* %0, %struct.ad8801_state** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* @AD8801_CFG_ADDR_OFFSET, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %8, %10
  %12 = load i8, i8* %6, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = trunc i32 %14 to i8
  %16 = call i32 @cpu_to_be16(i8 zeroext %15)
  %17 = load %struct.ad8801_state*, %struct.ad8801_state** %4, align 8
  %18 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ad8801_state*, %struct.ad8801_state** %4, align 8
  %20 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ad8801_state*, %struct.ad8801_state** %4, align 8
  %23 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %22, i32 0, i32 0
  %24 = call i32 @spi_write(i32 %21, i32* %23, i32 4)
  ret i32 %24
}

declare dso_local i32 @cpu_to_be16(i8 zeroext) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
