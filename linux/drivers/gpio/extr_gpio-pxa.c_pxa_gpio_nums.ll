; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pxa.c_pxa_gpio_nums.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pxa.c_pxa_gpio_nums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.platform_device_id = type { i64 }
%struct.pxa_gpio_id = type { i32, i32 }

@gpio_type = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa_gpio_nums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_gpio_nums(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.platform_device_id*, align 8
  %4 = alloca %struct.pxa_gpio_id*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %6)
  store %struct.platform_device_id* %7, %struct.platform_device_id** %3, align 8
  %8 = load %struct.platform_device_id*, %struct.platform_device_id** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.pxa_gpio_id*
  store %struct.pxa_gpio_id* %11, %struct.pxa_gpio_id** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.pxa_gpio_id*, %struct.pxa_gpio_id** %4, align 8
  %13 = getelementptr inbounds %struct.pxa_gpio_id, %struct.pxa_gpio_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 132, label %15
    i32 131, label %15
    i32 130, label %15
    i32 129, label %15
    i32 128, label %15
    i32 134, label %15
    i32 135, label %15
    i32 133, label %15
  ]

15:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %16 = load %struct.pxa_gpio_id*, %struct.pxa_gpio_id** %4, align 8
  %17 = getelementptr inbounds %struct.pxa_gpio_id, %struct.pxa_gpio_id* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @gpio_type, align 4
  %19 = load %struct.pxa_gpio_id*, %struct.pxa_gpio_id** %4, align 8
  %20 = getelementptr inbounds %struct.pxa_gpio_id, %struct.pxa_gpio_id* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
