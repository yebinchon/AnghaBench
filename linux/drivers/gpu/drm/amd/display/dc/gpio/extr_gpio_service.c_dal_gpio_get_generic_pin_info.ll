; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_gpio_get_generic_pin_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_gpio_get_generic_pin_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_service = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32, %struct.gpio_pin_info*)* }
%struct.gpio_pin_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dal_gpio_get_generic_pin_info(%struct.gpio_service* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_pin_info, align 4
  %5 = alloca %struct.gpio_service*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_service* %0, %struct.gpio_service** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.gpio_service*, %struct.gpio_service** %5, align 8
  %9 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32, %struct.gpio_pin_info*)*, i32 (i32, i32, %struct.gpio_pin_info*)** %12, align 8
  %14 = icmp ne i32 (i32, i32, %struct.gpio_pin_info*)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.gpio_service*, %struct.gpio_service** %5, align 8
  %17 = getelementptr inbounds %struct.gpio_service, %struct.gpio_service* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32, %struct.gpio_pin_info*)*, i32 (i32, i32, %struct.gpio_pin_info*)** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 %21(i32 %22, i32 %23, %struct.gpio_pin_info* %4)
  br label %28

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %4, i32 0, i32 0
  store i32 -1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %4, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %15
  %29 = bitcast %struct.gpio_pin_info* %4 to i64*
  %30 = load i64, i64* %29, align 4
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
