; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_generic.c_dal_hw_generic_get_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_generic.c_dal_hw_generic_get_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_gpio_pin = type { i32 }
%struct.gpio = type { i32 }
%struct.hw_generic = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hw_gpio_pin }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hw_gpio_pin* @dal_hw_generic_get_pin(%struct.gpio* %0) #0 {
  %2 = alloca %struct.gpio*, align 8
  %3 = alloca %struct.hw_generic*, align 8
  store %struct.gpio* %0, %struct.gpio** %2, align 8
  %4 = load %struct.gpio*, %struct.gpio** %2, align 8
  %5 = call %struct.hw_generic* @dal_gpio_get_generic(%struct.gpio* %4)
  store %struct.hw_generic* %5, %struct.hw_generic** %3, align 8
  %6 = load %struct.hw_generic*, %struct.hw_generic** %3, align 8
  %7 = getelementptr inbounds %struct.hw_generic, %struct.hw_generic* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  ret %struct.hw_gpio_pin* %8
}

declare dso_local %struct.hw_generic* @dal_gpio_get_generic(%struct.gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
