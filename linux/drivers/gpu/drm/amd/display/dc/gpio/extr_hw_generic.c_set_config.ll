; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_generic.c_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_generic.c_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_gpio_pin = type { i32 }
%struct.gpio_config_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hw_generic = type { i32 }

@GPIO_RESULT_INVALID_DATA = common dso_local global i32 0, align 4
@mux = common dso_local global i32 0, align 4
@GENERIC_EN = common dso_local global i32 0, align 4
@GENERIC_SEL = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw_gpio_pin*, %struct.gpio_config_data*)* @set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_config(%struct.hw_gpio_pin* %0, %struct.gpio_config_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw_gpio_pin*, align 8
  %5 = alloca %struct.gpio_config_data*, align 8
  %6 = alloca %struct.hw_generic*, align 8
  store %struct.hw_gpio_pin* %0, %struct.hw_gpio_pin** %4, align 8
  store %struct.gpio_config_data* %1, %struct.gpio_config_data** %5, align 8
  %7 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %4, align 8
  %8 = call %struct.hw_generic* @HW_GENERIC_FROM_BASE(%struct.hw_gpio_pin* %7)
  store %struct.hw_generic* %8, %struct.hw_generic** %6, align 8
  %9 = load %struct.gpio_config_data*, %struct.gpio_config_data** %5, align 8
  %10 = icmp ne %struct.gpio_config_data* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @GPIO_RESULT_INVALID_DATA, align 4
  store i32 %12, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load i32, i32* @mux, align 4
  %15 = load i32, i32* @GENERIC_EN, align 4
  %16 = load %struct.gpio_config_data*, %struct.gpio_config_data** %5, align 8
  %17 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GENERIC_SEL, align 4
  %22 = load %struct.gpio_config_data*, %struct.gpio_config_data** %5, align 8
  %23 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @REG_UPDATE_2(i32 %14, i32 %15, i32 %20, i32 %21, i32 %26)
  %28 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %13, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.hw_generic* @HW_GENERIC_FROM_BASE(%struct.hw_gpio_pin*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
