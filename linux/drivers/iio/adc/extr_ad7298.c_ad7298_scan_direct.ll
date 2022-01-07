; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7298.c_ad7298_scan_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7298.c_ad7298_scan_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7298_state = type { i32, i32*, i32, i32, i32* }

@AD7298_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7298_state*, i32)* @ad7298_scan_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7298_scan_direct(%struct.ad7298_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7298_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad7298_state* %0, %struct.ad7298_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @AD7298_WRITE, align 4
  %8 = load %struct.ad7298_state*, %struct.ad7298_state** %4, align 8
  %9 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %7, %10
  %12 = call i32 @AD7298_CH(i32 0)
  %13 = load i32, i32* %5, align 4
  %14 = lshr i32 %12, %13
  %15 = or i32 %11, %14
  %16 = call i32 @cpu_to_be16(i32 %15)
  %17 = load %struct.ad7298_state*, %struct.ad7298_state** %4, align 8
  %18 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.ad7298_state*, %struct.ad7298_state** %4, align 8
  %22 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ad7298_state*, %struct.ad7298_state** %4, align 8
  %25 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %24, i32 0, i32 2
  %26 = call i32 @spi_sync(i32 %23, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.ad7298_state*, %struct.ad7298_state** %4, align 8
  %33 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be16_to_cpu(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @AD7298_CH(i32) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
