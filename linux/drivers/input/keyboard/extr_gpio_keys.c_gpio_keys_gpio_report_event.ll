; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_gpio_report_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_gpio_report_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_button_data = type { i32*, i32, %struct.input_dev*, %struct.gpio_keys_button* }
%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_keys_button = type { i32, i32, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to get gpio state: %d\0A\00", align 1
@EV_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_button_data*)* @gpio_keys_gpio_report_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_keys_gpio_report_event(%struct.gpio_button_data* %0) #0 {
  %2 = alloca %struct.gpio_button_data*, align 8
  %3 = alloca %struct.gpio_keys_button*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gpio_button_data* %0, %struct.gpio_button_data** %2, align 8
  %7 = load %struct.gpio_button_data*, %struct.gpio_button_data** %2, align 8
  %8 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %7, i32 0, i32 3
  %9 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  store %struct.gpio_keys_button* %9, %struct.gpio_keys_button** %3, align 8
  %10 = load %struct.gpio_button_data*, %struct.gpio_button_data** %2, align 8
  %11 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %10, i32 0, i32 2
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @EV_KEY, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i32 [ %15, %17 ], [ %19, %18 ]
  store i32 %21, i32* %5, align 4
  %22 = load %struct.gpio_button_data*, %struct.gpio_button_data** %2, align 8
  %23 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gpiod_get_value_cansleep(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %65

35:                                               ; preds = %20
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @EV_ABS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %3, align 8
  %46 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %3, align 8
  %49 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @input_event(%struct.input_dev* %43, i32 %44, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %42, %39
  br label %62

53:                                               ; preds = %35
  %54 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.gpio_button_data*, %struct.gpio_button_data** %2, align 8
  %57 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @input_event(%struct.input_dev* %54, i32 %55, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %52
  %63 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %64 = call i32 @input_sync(%struct.input_dev* %63)
  br label %65

65:                                               ; preds = %62, %28
  ret void
}

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
