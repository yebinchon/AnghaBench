; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_gpio_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_gpio_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lp_gpio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LP_CONFIG2 = common dso_local global i32 0, align 4
@GPINDIS_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @lp_gpio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_gpio_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.lp_gpio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.lp_gpio* @dev_get_drvdata(%struct.device* %6)
  store %struct.lp_gpio* %7, %struct.lp_gpio** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.lp_gpio*, %struct.lp_gpio** %3, align 8
  %11 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  %16 = load %struct.lp_gpio*, %struct.lp_gpio** %3, align 8
  %17 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = call i32* @gpiochip_is_requested(%struct.TYPE_3__* %17, i32 %18)
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.lp_gpio*, %struct.lp_gpio** %3, align 8
  %23 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @LP_CONFIG2, align 4
  %26 = call i64 @lp_gpio_reg(%struct.TYPE_3__* %23, i32 %24, i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @inl(i64 %27)
  %29 = load i32, i32* @GPINDIS_BIT, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @outl(i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %21, %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %8

38:                                               ; preds = %8
  ret i32 0
}

declare dso_local %struct.lp_gpio* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32* @gpiochip_is_requested(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @lp_gpio_reg(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
