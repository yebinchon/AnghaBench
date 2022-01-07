; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys_polled.c_gpio_keys_polled_set_abs_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys_polled.c_gpio_keys_polled_set_abs_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.gpio_keys_platform_data = type { i32, %struct.gpio_keys_button* }
%struct.gpio_keys_button = type { i64, i32, i32 }

@EV_ABS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.gpio_keys_platform_data*, i32)* @gpio_keys_polled_set_abs_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_keys_polled_set_abs_params(%struct.input_dev* %0, %struct.gpio_keys_platform_data* %1, i32 %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.gpio_keys_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpio_keys_button*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.gpio_keys_platform_data* %1, %struct.gpio_keys_platform_data** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %57, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %5, align 8
  %14 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %11
  %18 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %5, align 8
  %19 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %18, i32 0, i32 1
  %20 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %20, i64 %22
  store %struct.gpio_keys_button* %23, %struct.gpio_keys_button** %10, align 8
  %24 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %25 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EV_ABS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %17
  %30 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %31 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %17
  br label %57

36:                                               ; preds = %29
  %37 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %38 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %44 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %48 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %54 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %46
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %11

60:                                               ; preds = %11
  %61 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @input_set_abs_params(%struct.input_dev* %61, i32 %62, i32 %63, i32 %64, i32 0, i32 0)
  ret void
}

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
