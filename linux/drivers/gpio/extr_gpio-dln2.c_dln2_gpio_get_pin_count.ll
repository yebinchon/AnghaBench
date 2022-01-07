; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_get_pin_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_get_pin_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@DLN2_GPIO_GET_PIN_COUNT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dln2_gpio_get_pin_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_gpio_get_pin_count(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 4, i32* %6, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @DLN2_GPIO_GET_PIN_COUNT, align 4
  %9 = call i32 @dln2_transfer_rx(%struct.platform_device* %7, i32 %8, i32* %5, i32* %6)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EPROTO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %18, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @dln2_transfer_rx(%struct.platform_device*, i32, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
