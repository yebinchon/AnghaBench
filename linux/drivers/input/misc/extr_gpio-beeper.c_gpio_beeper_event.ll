; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio-beeper.c_gpio_beeper_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio-beeper.c_gpio_beeper_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.gpio_beeper = type { i32, i32 }

@EV_SND = common dso_local global i32 0, align 4
@SND_BELL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @gpio_beeper_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_beeper_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpio_beeper*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %12 = call %struct.gpio_beeper* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.gpio_beeper* %12, %struct.gpio_beeper** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @EV_SND, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SND_BELL, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %4
  %21 = load i32, i32* @ENOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %36

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %36

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.gpio_beeper*, %struct.gpio_beeper** %10, align 8
  %32 = getelementptr inbounds %struct.gpio_beeper, %struct.gpio_beeper* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.gpio_beeper*, %struct.gpio_beeper** %10, align 8
  %34 = getelementptr inbounds %struct.gpio_beeper, %struct.gpio_beeper* %33, i32 0, i32 1
  %35 = call i32 @schedule_work(i32* %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %26, %20
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.gpio_beeper* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
