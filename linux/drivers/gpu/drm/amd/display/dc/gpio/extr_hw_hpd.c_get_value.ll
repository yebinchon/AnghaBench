; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_hpd.c_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_hpd.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_gpio_pin = type { i64 }
%struct.hw_hpd = type { i32 }

@GPIO_MODE_INTERRUPT = common dso_local global i64 0, align 8
@int_status = common dso_local global i32 0, align 4
@DC_HPD_SENSE_DELAYED = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw_gpio_pin*, i32*)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_value(%struct.hw_gpio_pin* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw_gpio_pin*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hw_hpd*, align 8
  %7 = alloca i32, align 4
  store %struct.hw_gpio_pin* %0, %struct.hw_gpio_pin** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %4, align 8
  %9 = call %struct.hw_hpd* @HW_HPD_FROM_BASE(%struct.hw_gpio_pin* %8)
  store %struct.hw_hpd* %9, %struct.hw_hpd** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %4, align 8
  %11 = getelementptr inbounds %struct.hw_gpio_pin, %struct.hw_gpio_pin* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GPIO_MODE_INTERRUPT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @int_status, align 4
  %17 = load i32, i32* @DC_HPD_SENSE_DELAYED, align 4
  %18 = call i32 @REG_GET(i32 %16, i32 %17, i32* %7)
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @dal_hw_gpio_get_value(%struct.hw_gpio_pin* %23, i32* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.hw_hpd* @HW_HPD_FROM_BASE(%struct.hw_gpio_pin*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @dal_hw_gpio_get_value(%struct.hw_gpio_pin*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
