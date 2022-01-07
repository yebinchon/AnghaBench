; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-88pm860x.c_led_power_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-88pm860x.c_led_power_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_chip = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RGB1_ENABLE = common dso_local global i32 0, align 4
@RGB2_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_chip*, i32, i32)* @led_power_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_power_set(%struct.pm860x_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pm860x_chip* %0, %struct.pm860x_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %37 [
    i32 0, label %11
    i32 1, label %11
    i32 2, label %11
    i32 3, label %24
    i32 4, label %24
    i32 5, label %24
  ]

11:                                               ; preds = %3, %3, %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %16 = load i32, i32* @RGB1_ENABLE, align 4
  %17 = call i32 @pm8606_osc_enable(%struct.pm860x_chip* %15, i32 %16)
  br label %22

18:                                               ; preds = %11
  %19 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %20 = load i32, i32* @RGB1_ENABLE, align 4
  %21 = call i32 @pm8606_osc_disable(%struct.pm860x_chip* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ]
  store i32 %23, i32* %7, align 4
  br label %37

24:                                               ; preds = %3, %3, %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %29 = load i32, i32* @RGB2_ENABLE, align 4
  %30 = call i32 @pm8606_osc_enable(%struct.pm860x_chip* %28, i32 %29)
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %33 = load i32, i32* @RGB2_ENABLE, align 4
  %34 = call i32 @pm8606_osc_disable(%struct.pm860x_chip* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %30, %27 ], [ %34, %31 ]
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %3, %35, %22
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @pm8606_osc_enable(%struct.pm860x_chip*, i32) #1

declare dso_local i32 @pm8606_osc_disable(%struct.pm860x_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
