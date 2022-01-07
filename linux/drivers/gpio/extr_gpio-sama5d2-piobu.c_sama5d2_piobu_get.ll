; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sama5d2-piobu.c_sama5d2_piobu_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sama5d2-piobu.c_sama5d2_piobu_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@PIOBU_PDS = common dso_local global i32 0, align 4
@PIOBU_SOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sama5d2_piobu_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sama5d2_piobu_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @sama5d2_piobu_get_direction(%struct.gpio_chip* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PIOBU_PDS, align 4
  %16 = call i32 @sama5d2_piobu_read_value(%struct.gpio_chip* %13, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PIOBU_SOD, align 4
  %24 = call i32 @sama5d2_piobu_read_value(%struct.gpio_chip* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @sama5d2_piobu_get_direction(%struct.gpio_chip*, i32) #1

declare dso_local i32 @sama5d2_piobu_read_value(%struct.gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
