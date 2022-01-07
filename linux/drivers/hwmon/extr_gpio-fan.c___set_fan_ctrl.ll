; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c___set_fan_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c___set_fan_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_fan_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_fan_data*, i32)* @__set_fan_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_fan_ctrl(%struct.gpio_fan_data* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_fan_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gpio_fan_data* %0, %struct.gpio_fan_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %9 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %20, %21
  %23 = and i32 %22, 1
  %24 = call i32 @gpiod_set_value_cansleep(i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  ret void
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
