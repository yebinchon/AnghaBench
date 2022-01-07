; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_set_channel_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_set_channel_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7124_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ad7124_gain = common dso_local global i32 0, align 4
@AD7124_CONFIG_PGA_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7124_state*, i32, i32)* @ad7124_set_channel_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7124_set_channel_gain(%struct.ad7124_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7124_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ad7124_state* %0, %struct.ad7124_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ad7124_gain, align 4
  %11 = load i32, i32* @ad7124_gain, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ad7124_find_closest_match(i32 %10, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @AD7124_CONFIG(i32 %16)
  %18 = load i32, i32* @AD7124_CONFIG_PGA_MSK, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @AD7124_CONFIG_PGA(i32 %19)
  %21 = call i32 @ad7124_spi_write_mask(%struct.ad7124_state* %15, i32 %17, i32 %18, i32 %20, i32 2)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %35

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %29 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %27, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %26, %24
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @ad7124_find_closest_match(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ad7124_spi_write_mask(%struct.ad7124_state*, i32, i32, i32, i32) #1

declare dso_local i32 @AD7124_CONFIG(i32) #1

declare dso_local i32 @AD7124_CONFIG_PGA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
