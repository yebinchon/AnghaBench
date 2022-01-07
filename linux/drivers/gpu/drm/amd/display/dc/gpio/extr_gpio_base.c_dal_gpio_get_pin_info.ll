; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_base.c_dal_gpio_get_pin_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_base.c_dal_gpio_get_pin_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (i32, i32, %struct.gpio_pin_info*)* }
%struct.gpio_pin_info = type { i32 }

@GPIO_RESULT_OK = common dso_local global i32 0, align 4
@GPIO_RESULT_INVALID_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_gpio_get_pin_info(%struct.gpio* %0, %struct.gpio_pin_info* %1) #0 {
  %3 = alloca %struct.gpio*, align 8
  %4 = alloca %struct.gpio_pin_info*, align 8
  store %struct.gpio* %0, %struct.gpio** %3, align 8
  store %struct.gpio_pin_info* %1, %struct.gpio_pin_info** %4, align 8
  %5 = load %struct.gpio*, %struct.gpio** %3, align 8
  %6 = getelementptr inbounds %struct.gpio, %struct.gpio* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64 (i32, i32, %struct.gpio_pin_info*)*, i64 (i32, i32, %struct.gpio_pin_info*)** %11, align 8
  %13 = load %struct.gpio*, %struct.gpio** %3, align 8
  %14 = getelementptr inbounds %struct.gpio, %struct.gpio* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gpio*, %struct.gpio** %3, align 8
  %17 = getelementptr inbounds %struct.gpio, %struct.gpio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %4, align 8
  %20 = call i64 %12(i32 %15, i32 %18, %struct.gpio_pin_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @GPIO_RESULT_OK, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @GPIO_RESULT_INVALID_DATA, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
