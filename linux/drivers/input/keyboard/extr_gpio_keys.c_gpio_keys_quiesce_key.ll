; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_quiesce_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_quiesce_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_button_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gpio_keys_quiesce_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_keys_quiesce_key(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gpio_button_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.gpio_button_data*
  store %struct.gpio_button_data* %5, %struct.gpio_button_data** %3, align 8
  %6 = load %struct.gpio_button_data*, %struct.gpio_button_data** %3, align 8
  %7 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.gpio_button_data*, %struct.gpio_button_data** %3, align 8
  %12 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %11, i32 0, i32 1
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.gpio_button_data*, %struct.gpio_button_data** %3, align 8
  %16 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %15, i32 0, i32 0
  %17 = call i32 @del_timer_sync(i32* %16)
  br label %18

18:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
