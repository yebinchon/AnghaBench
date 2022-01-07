; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bd70528.c_bd70528_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bd70528.c_bd70528_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.bd70528_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to read GPIO direction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @bd70528_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bd70528_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.bd70528_gpio* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.bd70528_gpio* %8, %struct.bd70528_gpio** %6, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @bd70528_get_direction(%struct.gpio_chip* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @bd70528_gpio_get_o(%struct.bd70528_gpio* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @bd70528_gpio_get_i(%struct.bd70528_gpio* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %31

25:                                               ; preds = %18
  %26 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %6, align 8
  %27 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %25, %21
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.bd70528_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @bd70528_get_direction(%struct.gpio_chip*, i32) #1

declare dso_local i32 @bd70528_gpio_get_o(%struct.bd70528_gpio*, i32) #1

declare dso_local i32 @bd70528_gpio_get_i(%struct.bd70528_gpio*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
