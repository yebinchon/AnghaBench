; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_gpio_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_gpio_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_button_data = type { i32, i32, i32, %struct.TYPE_4__*, i64, %struct.gpio_keys_button* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gpio_keys_button = type { i64, i32, i64 }

@EV_KEY = common dso_local global i64 0, align 8
@system_wq = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gpio_keys_gpio_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_keys_gpio_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gpio_button_data*, align 8
  %6 = alloca %struct.gpio_keys_button*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.gpio_button_data*
  store %struct.gpio_button_data* %8, %struct.gpio_button_data** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %11 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %17 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %16, i32 0, i32 5
  %18 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %17, align 8
  %19 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %2
  %23 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %24 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %23, i32 0, i32 5
  %25 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %24, align 8
  store %struct.gpio_keys_button* %25, %struct.gpio_keys_button** %6, align 8
  %26 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %27 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pm_stay_awake(i32 %31)
  %33 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %34 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %22
  %38 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %6, align 8
  %39 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %6, align 8
  %44 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EV_KEY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42, %37
  %49 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %50 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %6, align 8
  %53 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @input_report_key(%struct.TYPE_4__* %51, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %48, %42, %22
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* @system_wq, align 4
  %59 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %60 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %59, i32 0, i32 2
  %61 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %62 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @msecs_to_jiffies(i32 %63)
  %65 = call i32 @mod_delayed_work(i32 %58, i32* %60, i32 %64)
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %66
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pm_stay_awake(i32) #1

declare dso_local i32 @input_report_key(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
