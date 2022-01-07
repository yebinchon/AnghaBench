; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7923.c_ad7923_scan_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7923.c_ad7923_scan_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7923_state = type { i32, i32*, i32, i32, i32* }

@AD7923_WRITE_CR = common dso_local global i32 0, align 4
@AD7923_SEQUENCE_OFF = common dso_local global i32 0, align 4
@AD7923_SHIFT_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7923_state*, i32)* @ad7923_scan_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7923_scan_direct(%struct.ad7923_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7923_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ad7923_state* %0, %struct.ad7923_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @AD7923_WRITE_CR, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @AD7923_CHANNEL_WRITE(i32 %9)
  %11 = or i32 %8, %10
  %12 = load i32, i32* @AD7923_SEQUENCE_OFF, align 4
  %13 = call i32 @AD7923_SEQUENCE_WRITE(i32 %12)
  %14 = or i32 %11, %13
  %15 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %16 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @AD7923_SHIFT_REGISTER, align 4
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @cpu_to_be16(i32 %22)
  %24 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %25 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %29 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %32 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %31, i32 0, i32 2
  %33 = call i32 @spi_sync(i32 %30, i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %2
  %39 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %40 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be16_to_cpu(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %36
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @AD7923_CHANNEL_WRITE(i32) #1

declare dso_local i32 @AD7923_SEQUENCE_WRITE(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
