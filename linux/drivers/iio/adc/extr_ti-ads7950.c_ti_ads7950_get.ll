; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ti_ads7950_state = type { i32, i32, i32, i32, i32, i32, i8* }

@TI_ADS7950_CR_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @ti_ads7950_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_ads7950_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_ads7950_state*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.ti_ads7950_state* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.ti_ads7950_state* %8, %struct.ti_ads7950_state** %5, align 8
  %9 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %10 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %9, i32 0, i32 3
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %13 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %21 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = and i32 %22, %24
  store i32 %25, i32* %6, align 4
  br label %76

26:                                               ; preds = %2
  %27 = load i32, i32* @TI_ADS7950_CR_GPIO_DATA, align 4
  %28 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %29 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %33 = call i8* @TI_ADS7950_MAN_CMD_SETTINGS(%struct.ti_ads7950_state* %32)
  %34 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %35 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %37 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %40 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %39, i32 0, i32 4
  %41 = call i32 @spi_sync(i32 %38, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  br label %76

45:                                               ; preds = %26
  %46 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %47 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = ashr i32 %48, 12
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @TI_ADS7950_CR_GPIO_DATA, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %59 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %63 = call i8* @TI_ADS7950_MAN_CMD_SETTINGS(%struct.ti_ads7950_state* %62)
  %64 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %65 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %67 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %70 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %69, i32 0, i32 4
  %71 = call i32 @spi_sync(i32 %68, i32* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %45
  br label %76

75:                                               ; preds = %45
  br label %76

76:                                               ; preds = %75, %74, %44, %19
  %77 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %5, align 8
  %78 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %77, i32 0, i32 3
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.ti_ads7950_state* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @TI_ADS7950_MAN_CMD_SETTINGS(%struct.ti_ads7950_state*) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
