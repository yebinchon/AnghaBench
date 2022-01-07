; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys_polled.c_gpio_keys_polled_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys_polled.c_gpio_keys_polled_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.gpio_keys_polled_dev* }
%struct.gpio_keys_polled_dev = type { i32, %struct.gpio_keys_platform_data* }
%struct.gpio_keys_platform_data = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @gpio_keys_polled_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_keys_polled_close(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.gpio_keys_polled_dev*, align 8
  %4 = alloca %struct.gpio_keys_platform_data*, align 8
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %5 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %6 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %5, i32 0, i32 0
  %7 = load %struct.gpio_keys_polled_dev*, %struct.gpio_keys_polled_dev** %6, align 8
  store %struct.gpio_keys_polled_dev* %7, %struct.gpio_keys_polled_dev** %3, align 8
  %8 = load %struct.gpio_keys_polled_dev*, %struct.gpio_keys_polled_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gpio_keys_polled_dev, %struct.gpio_keys_polled_dev* %8, i32 0, i32 1
  %10 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %9, align 8
  store %struct.gpio_keys_platform_data* %10, %struct.gpio_keys_platform_data** %4, align 8
  %11 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %11, i32 0, i32 0
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = icmp ne i32 (i32)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.gpio_keys_polled_dev*, %struct.gpio_keys_polled_dev** %3, align 8
  %20 = getelementptr inbounds %struct.gpio_keys_polled_dev, %struct.gpio_keys_polled_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %18(i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
