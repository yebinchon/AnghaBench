; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7266.c_ad7266_read_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7266.c_ad7266_read_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7266_state = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7266_state*, i32*, i32)* @ad7266_read_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7266_read_single(%struct.ad7266_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ad7266_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ad7266_state* %0, %struct.ad7266_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ad7266_state*, %struct.ad7266_state** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @ad7266_select_input(%struct.ad7266_state* %8, i32 %9)
  %11 = load %struct.ad7266_state*, %struct.ad7266_state** %4, align 8
  %12 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ad7266_state*, %struct.ad7266_state** %4, align 8
  %15 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %14, i32 0, i32 1
  %16 = call i32 @spi_sync(i32 %13, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ad7266_state*, %struct.ad7266_state** %4, align 8
  %18 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = urem i32 %21, 2
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be16_to_cpu(i32 %25)
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @ad7266_select_input(%struct.ad7266_state*, i32) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
