; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_scan_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_scan_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ti_ads7950_state = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @ti_ads7950_scan_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_ads7950_scan_direct(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_ads7950_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.ti_ads7950_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.ti_ads7950_state* %9, %struct.ti_ads7950_state** %5, align 8
  %10 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %11 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @TI_ADS7950_CR_CHAN(i32 %13)
  %15 = call i32 @TI_ADS7950_MAN_CMD(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %18 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %20 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %23 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %22, i32 0, i32 3
  %24 = call i32 @spi_sync(i32 %21, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %30 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %34 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %33, i32 0, i32 2
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.ti_ads7950_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TI_ADS7950_MAN_CMD(i32) #1

declare dso_local i32 @TI_ADS7950_CR_CHAN(i32) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
