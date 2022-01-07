; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys_polled.c_gpio_keys_polled_check_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys_polled.c_gpio_keys_polled_check_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gpio_keys_button = type { i32 }
%struct.gpio_keys_button_data = type { i32, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to get gpio state: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*, %struct.gpio_keys_button*, %struct.gpio_keys_button_data*)* @gpio_keys_polled_check_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_keys_polled_check_state(%struct.input_polled_dev* %0, %struct.gpio_keys_button* %1, %struct.gpio_keys_button_data* %2) #0 {
  %4 = alloca %struct.input_polled_dev*, align 8
  %5 = alloca %struct.gpio_keys_button*, align 8
  %6 = alloca %struct.gpio_keys_button_data*, align 8
  %7 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %4, align 8
  store %struct.gpio_keys_button* %1, %struct.gpio_keys_button** %5, align 8
  store %struct.gpio_keys_button_data* %2, %struct.gpio_keys_button_data** %6, align 8
  %8 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %6, align 8
  %9 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @gpiod_get_value_cansleep(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %16 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %25 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @gpio_keys_button_event(%struct.input_polled_dev* %24, %struct.gpio_keys_button* %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %6, align 8
  %30 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %6, align 8
  %35 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %6, align 8
  %38 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %33, %23
  br label %40

40:                                               ; preds = %39, %14
  ret void
}

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gpio_keys_button_event(%struct.input_polled_dev*, %struct.gpio_keys_button*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
