; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio-vibra.c_gpio_vibrator_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio-vibra.c_gpio_vibrator_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_vibrator = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_vibrator*)* @gpio_vibrator_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_vibrator_start(%struct.gpio_vibrator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_vibrator*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.gpio_vibrator* %0, %struct.gpio_vibrator** %3, align 8
  %6 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %3, align 8
  %7 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %3, align 8
  %13 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %1
  %17 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %3, align 8
  %18 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @regulator_enable(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %16
  %29 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %3, align 8
  %30 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %3, align 8
  %33 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gpiod_set_value_cansleep(i32 %34, i32 1)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %23
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
