; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_irq_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_irq_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_button_data = type { i32, i32, i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.timer_list = type { i32 }

@release_timer = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@bdata = common dso_local global %struct.gpio_button_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @gpio_keys_irq_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_keys_irq_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.gpio_button_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.gpio_button_data*, %struct.gpio_button_data** %3, align 8
  %7 = ptrtoint %struct.gpio_button_data* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @release_timer, align 4
  %10 = call %struct.gpio_button_data* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.gpio_button_data* %10, %struct.gpio_button_data** %3, align 8
  %11 = load %struct.gpio_button_data*, %struct.gpio_button_data** %3, align 8
  %12 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %11, i32 0, i32 3
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %4, align 8
  %14 = load %struct.gpio_button_data*, %struct.gpio_button_data** %3, align 8
  %15 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %14, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.gpio_button_data*, %struct.gpio_button_data** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %24 = load i32, i32* @EV_KEY, align 4
  %25 = load %struct.gpio_button_data*, %struct.gpio_button_data** %3, align 8
  %26 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @input_event(%struct.input_dev* %23, i32 %24, i32 %28, i32 0)
  %30 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %31 = call i32 @input_sync(%struct.input_dev* %30)
  %32 = load %struct.gpio_button_data*, %struct.gpio_button_data** %3, align 8
  %33 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %22, %1
  %35 = load %struct.gpio_button_data*, %struct.gpio_button_data** %3, align 8
  %36 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %35, i32 0, i32 1
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local %struct.gpio_button_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
