; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_gpio.c_dal_hw_gpio_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_gpio.c_dal_hw_gpio_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_gpio = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.dc_context* }
%struct.dc_context = type { i32 }

@GPIO_MODE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_hw_gpio_construct(%struct.hw_gpio* %0, i32 %1, i32 %2, %struct.dc_context* %3) #0 {
  %5 = alloca %struct.hw_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_context*, align 8
  store %struct.hw_gpio* %0, %struct.hw_gpio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.dc_context* %3, %struct.dc_context** %8, align 8
  %9 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  %10 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %11 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store %struct.dc_context* %9, %struct.dc_context** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %15 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %19 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @GPIO_MODE_UNKNOWN, align 4
  %22 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %23 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %26 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %29 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %32 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %35 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %38 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %41 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
