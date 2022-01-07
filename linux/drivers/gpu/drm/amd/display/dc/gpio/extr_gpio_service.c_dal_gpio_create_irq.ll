; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_gpio_create_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_gpio_create_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio = type { i32 }
%struct.gpio_service = type { i32 }

@GPIO_PIN_OUTPUT_STATE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio* @dal_gpio_create_irq(%struct.gpio_service* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio*, align 8
  %5 = alloca %struct.gpio_service*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpio*, align 8
  store %struct.gpio_service* %0, %struct.gpio_service** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %11 [
    i32 128, label %10
    i32 129, label %10
  ]

10:                                               ; preds = %3, %3
  br label %13

11:                                               ; preds = %3
  store i32 128, i32* %6, align 4
  %12 = call i32 @ASSERT_CRITICAL(i32 0)
  store %struct.gpio* null, %struct.gpio** %4, align 8
  br label %25

13:                                               ; preds = %10
  %14 = load %struct.gpio_service*, %struct.gpio_service** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @GPIO_PIN_OUTPUT_STATE_DEFAULT, align 4
  %18 = call %struct.gpio* @dal_gpio_create(%struct.gpio_service* %14, i32 %15, i32 %16, i32 %17)
  store %struct.gpio* %18, %struct.gpio** %8, align 8
  %19 = load %struct.gpio*, %struct.gpio** %8, align 8
  %20 = icmp ne %struct.gpio* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load %struct.gpio*, %struct.gpio** %8, align 8
  store %struct.gpio* %22, %struct.gpio** %4, align 8
  br label %25

23:                                               ; preds = %13
  %24 = call i32 @ASSERT_CRITICAL(i32 0)
  store %struct.gpio* null, %struct.gpio** %4, align 8
  br label %25

25:                                               ; preds = %23, %21, %11
  %26 = load %struct.gpio*, %struct.gpio** %4, align 8
  ret %struct.gpio* %26
}

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

declare dso_local %struct.gpio* @dal_gpio_create(%struct.gpio_service*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
