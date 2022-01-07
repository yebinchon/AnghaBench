; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_gpio_service_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_gpio_service_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_service = type { i32 }
%struct.hw_gpio_pin = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hw_gpio_pin*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_gpio_service_close(%struct.gpio_service* %0, %struct.hw_gpio_pin** %1) #0 {
  %3 = alloca %struct.gpio_service*, align 8
  %4 = alloca %struct.hw_gpio_pin**, align 8
  %5 = alloca %struct.hw_gpio_pin*, align 8
  store %struct.gpio_service* %0, %struct.gpio_service** %3, align 8
  store %struct.hw_gpio_pin** %1, %struct.hw_gpio_pin*** %4, align 8
  %6 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %4, align 8
  %7 = icmp ne %struct.hw_gpio_pin** %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %4, align 8
  %12 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %11, align 8
  store %struct.hw_gpio_pin* %12, %struct.hw_gpio_pin** %5, align 8
  %13 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %5, align 8
  %14 = icmp ne %struct.hw_gpio_pin* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.gpio_service*, %struct.gpio_service** %3, align 8
  %17 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %5, align 8
  %18 = getelementptr inbounds %struct.hw_gpio_pin, %struct.hw_gpio_pin* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %5, align 8
  %21 = getelementptr inbounds %struct.hw_gpio_pin, %struct.hw_gpio_pin* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @set_pin_free(%struct.gpio_service* %16, i32 %19, i32 %22)
  %24 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %5, align 8
  %25 = getelementptr inbounds %struct.hw_gpio_pin, %struct.hw_gpio_pin* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.hw_gpio_pin*)*, i32 (%struct.hw_gpio_pin*)** %27, align 8
  %29 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %5, align 8
  %30 = call i32 %28(%struct.hw_gpio_pin* %29)
  %31 = load %struct.hw_gpio_pin**, %struct.hw_gpio_pin*** %4, align 8
  store %struct.hw_gpio_pin* null, %struct.hw_gpio_pin** %31, align 8
  br label %32

32:                                               ; preds = %8, %15, %10
  ret void
}

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

declare dso_local i32 @set_pin_free(%struct.gpio_service*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
