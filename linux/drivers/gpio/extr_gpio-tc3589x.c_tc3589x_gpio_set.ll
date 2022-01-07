; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tc3589x_gpio = type { %struct.tc3589x* }
%struct.tc3589x = type { i32 }

@TC3589x_GPIODATA0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @tc3589x_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc3589x_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc3589x_gpio*, align 8
  %8 = alloca %struct.tc3589x*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i64], align 16
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.tc3589x_gpio* %13, %struct.tc3589x_gpio** %7, align 8
  %14 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %7, align 8
  %15 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %14, i32 0, i32 0
  %16 = load %struct.tc3589x*, %struct.tc3589x** %15, align 8
  store %struct.tc3589x* %16, %struct.tc3589x** %8, align 8
  %17 = load i64, i64* @TC3589x_GPIODATA0, align 8
  %18 = load i32, i32* %5, align 4
  %19 = udiv i32 %18, 8
  %20 = mul i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = urem i32 %23, 8
  store i32 %24, i32* %10, align 4
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @BIT(i32 %29)
  br label %32

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i64 [ %30, %28 ], [ 0, %31 ]
  store i64 %33, i64* %25, align 8
  %34 = getelementptr inbounds i64, i64* %25, i64 1
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @BIT(i32 %35)
  store i64 %36, i64* %34, align 8
  %37 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %40 = call i32 @ARRAY_SIZE(i64* %39)
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %42 = call i32 @tc3589x_block_write(%struct.tc3589x* %37, i64 %38, i32 %40, i64* %41)
  ret void
}

declare dso_local %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @tc3589x_block_write(%struct.tc3589x*, i64, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
