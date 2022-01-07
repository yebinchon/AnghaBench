; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-palmas.c_palmas_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-palmas.c_palmas_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.palmas_gpio = type { %struct.palmas* }
%struct.palmas = type { i32 }

@PALMAS_GPIO_SET_DATA_OUT2 = common dso_local global i32 0, align 4
@PALMAS_GPIO_CLEAR_DATA_OUT2 = common dso_local global i32 0, align 4
@PALMAS_GPIO_SET_DATA_OUT = common dso_local global i32 0, align 4
@PALMAS_GPIO_CLEAR_DATA_OUT = common dso_local global i32 0, align 4
@PALMAS_GPIO_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Reg 0x%02x write failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @palmas_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @palmas_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.palmas_gpio*, align 8
  %8 = alloca %struct.palmas*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.palmas_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.palmas_gpio* %13, %struct.palmas_gpio** %7, align 8
  %14 = load %struct.palmas_gpio*, %struct.palmas_gpio** %7, align 8
  %15 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %14, i32 0, i32 0
  %16 = load %struct.palmas*, %struct.palmas** %15, align 8
  store %struct.palmas* %16, %struct.palmas** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = udiv i32 %17, 8
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = urem i32 %19, 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @PALMAS_GPIO_SET_DATA_OUT2, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @PALMAS_GPIO_CLEAR_DATA_OUT2, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %10, align 4
  br label %41

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @PALMAS_GPIO_SET_DATA_OUT, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @PALMAS_GPIO_CLEAR_DATA_OUT, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %30
  %42 = load %struct.palmas*, %struct.palmas** %8, align 8
  %43 = load i32, i32* @PALMAS_GPIO_BASE, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = call i32 @palmas_write(%struct.palmas* %42, i32 %43, i32 %44, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %52 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %41
  ret void
}

declare dso_local %struct.palmas_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @palmas_write(%struct.palmas*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
