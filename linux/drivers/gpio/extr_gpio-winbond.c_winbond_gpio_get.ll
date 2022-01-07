; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.winbond_gpio_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @winbond_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @winbond_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.winbond_gpio_info*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call i64* @gpiochip_get_data(%struct.gpio_chip* %9)
  store i64* %10, i64** %6, align 8
  %11 = call i32 @winbond_gpio_get_info(i32* %5, %struct.winbond_gpio_info** %7)
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @winbond_sio_enter(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %7, align 8
  %23 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @winbond_sio_select_logical(i64 %21, i32 %24)
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %7, align 8
  %29 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @winbond_sio_reg_btest(i64 %27, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %7, align 8
  %36 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @winbond_sio_reg_btest(i64 %34, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %19
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %19
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @winbond_sio_leave(i64 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @winbond_gpio_get_info(i32*, %struct.winbond_gpio_info**) #1

declare dso_local i32 @winbond_sio_enter(i64) #1

declare dso_local i32 @winbond_sio_select_logical(i64, i32) #1

declare dso_local i32 @winbond_sio_reg_btest(i64, i32, i32) #1

declare dso_local i32 @winbond_sio_leave(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
