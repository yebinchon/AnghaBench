; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bd70528.c_bd70528_gpio_get_o.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bd70528.c_bd70528_gpio_get_o.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd70528_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BD70528_GPIO_OUT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"GPIO (out) state read failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bd70528_gpio*, i32)* @bd70528_gpio_get_o to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_gpio_get_o(%struct.bd70528_gpio* %0, i32 %1) #0 {
  %3 = alloca %struct.bd70528_gpio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bd70528_gpio* %0, %struct.bd70528_gpio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %3, align 8
  %8 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GPIO_OUT_REG(i32 %11)
  %13 = call i32 @regmap_read(i32 %10, i32 %12, i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @BD70528_GPIO_OUT_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %3, align 8
  %26 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %24, %16
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @GPIO_OUT_REG(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
