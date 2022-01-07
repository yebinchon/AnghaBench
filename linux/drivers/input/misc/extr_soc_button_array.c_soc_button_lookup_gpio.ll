; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_button_lookup_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_button_lookup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpio_desc = type { i32 }

@GPIOD_ASIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @soc_button_lookup_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_button_lookup_gpio(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GPIOD_ASIS, align 4
  %11 = call %struct.gpio_desc* @gpiod_get_index(%struct.device* %8, i32* null, i32 %9, i32 %10)
  store %struct.gpio_desc* %11, %struct.gpio_desc** %6, align 8
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %13 = call i64 @IS_ERR(%struct.gpio_desc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.gpio_desc* %16)
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %20 = call i32 @desc_to_gpio(%struct.gpio_desc* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %22 = call i32 @gpiod_put(%struct.gpio_desc* %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.gpio_desc* @gpiod_get_index(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @desc_to_gpio(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_put(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
