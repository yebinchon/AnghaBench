; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ads7950_state = type { i32, i32, i32, i32, i32, i32 }

@TI_ADS7950_CR_RANGE_5V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_ads7950_state*)* @ti_ads7950_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_ads7950_init_hw(%struct.ti_ads7950_state* %0) #0 {
  %2 = alloca %struct.ti_ads7950_state*, align 8
  %3 = alloca i32, align 4
  store %struct.ti_ads7950_state* %0, %struct.ti_ads7950_state** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %5 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load i32, i32* @TI_ADS7950_CR_RANGE_5V, align 4
  %8 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %9 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %11 = call i32 @TI_ADS7950_MAN_CMD_SETTINGS(%struct.ti_ads7950_state* %10)
  %12 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %13 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %15 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %18 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %17, i32 0, i32 2
  %19 = call i32 @spi_sync(i32 %16, i32* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %36

23:                                               ; preds = %1
  %24 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %25 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %27 = call i32 @TI_ADS7950_GPIO_CMD_SETTINGS(%struct.ti_ads7950_state* %26)
  %28 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %29 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %31 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %34 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %33, i32 0, i32 2
  %35 = call i32 @spi_sync(i32 %32, i32* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %23, %22
  %37 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %2, align 8
  %38 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TI_ADS7950_MAN_CMD_SETTINGS(%struct.ti_ads7950_state*) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @TI_ADS7950_GPIO_CMD_SETTINGS(%struct.ti_ads7950_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
