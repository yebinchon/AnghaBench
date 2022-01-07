; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_report_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_report_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_keys_drvdata = type { %struct.gpio_button_data*, %struct.TYPE_2__*, %struct.input_dev* }
%struct.gpio_button_data = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_keys_drvdata*)* @gpio_keys_report_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_keys_report_state(%struct.gpio_keys_drvdata* %0) #0 {
  %2 = alloca %struct.gpio_keys_drvdata*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_button_data*, align 8
  store %struct.gpio_keys_drvdata* %0, %struct.gpio_keys_drvdata** %2, align 8
  %6 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %2, align 8
  %7 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %6, i32 0, i32 2
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %2, align 8
  %12 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %9
  %18 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %2, align 8
  %19 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %18, i32 0, i32 0
  %20 = load %struct.gpio_button_data*, %struct.gpio_button_data** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %20, i64 %22
  store %struct.gpio_button_data* %23, %struct.gpio_button_data** %5, align 8
  %24 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %25 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %30 = call i32 @gpio_keys_gpio_report_event(%struct.gpio_button_data* %29)
  br label %31

31:                                               ; preds = %28, %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %37 = call i32 @input_sync(%struct.input_dev* %36)
  ret void
}

declare dso_local i32 @gpio_keys_gpio_report_event(%struct.gpio_button_data*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
