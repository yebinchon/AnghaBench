; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ep93xx.c_ep93xx_gpio_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ep93xx.c_ep93xx_gpio_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ep93xx_gpio = type { %struct.gpio_chip* }

@.str = private unnamed_addr constant [26 x i8] c"can't find the GPIO port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*)* @ep93xx_gpio_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_gpio_port(%struct.gpio_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.ep93xx_gpio*, align 8
  %5 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %7 = call %struct.ep93xx_gpio* @gpiochip_get_data(%struct.gpio_chip* %6)
  store %struct.ep93xx_gpio* %7, %struct.ep93xx_gpio** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %4, align 8
  %11 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %10, i32 0, i32 0
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.gpio_chip* %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %17 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %4, align 8
  %18 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %17, i32 0, i32 0
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i64 %21
  %23 = icmp ne %struct.gpio_chip* %16, %22
  br label %24

24:                                               ; preds = %15, %8
  %25 = phi i1 [ false, %8 ], [ %23, %15 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %8

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %4, align 8
  %32 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %31, i32 0, i32 0
  %33 = load %struct.gpio_chip*, %struct.gpio_chip** %32, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.gpio_chip* %33)
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.ep93xx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.gpio_chip*) #1

declare dso_local i32 @pr_crit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
