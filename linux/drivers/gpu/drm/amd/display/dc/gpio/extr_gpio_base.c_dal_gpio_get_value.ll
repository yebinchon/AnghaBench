; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_base.c_dal_gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_base.c_dal_gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32*)* }

@GPIO_RESULT_NULL_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_gpio_get_value(%struct.gpio* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio*, align 8
  %5 = alloca i32*, align 8
  store %struct.gpio* %0, %struct.gpio** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.gpio*, %struct.gpio** %4, align 8
  %7 = getelementptr inbounds %struct.gpio, %struct.gpio* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = call i32 (...) @BREAK_TO_DEBUGGER()
  %12 = load i32, i32* @GPIO_RESULT_NULL_HANDLE, align 4
  store i32 %12, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.gpio*, %struct.gpio** %4, align 8
  %15 = getelementptr inbounds %struct.gpio, %struct.gpio* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %19, align 8
  %21 = load %struct.gpio*, %struct.gpio** %4, align 8
  %22 = getelementptr inbounds %struct.gpio, %struct.gpio* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 %20(%struct.TYPE_4__* %23, i32* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %13, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
