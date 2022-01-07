; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.winbond_gpio_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @winbond_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @winbond_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.winbond_gpio_info*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call i64* @gpiochip_get_data(%struct.gpio_chip* %9)
  store i64* %10, i64** %7, align 8
  %11 = call i32 @winbond_gpio_get_info(i32* %5, %struct.winbond_gpio_info** %8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %63

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @winbond_sio_enter(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %63

20:                                               ; preds = %14
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %8, align 8
  %24 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @winbond_sio_select_logical(i64 %22, i32 %25)
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %8, align 8
  %30 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @winbond_sio_reg_btest(i64 %28, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %20
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %8, align 8
  %47 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @winbond_sio_reg_bset(i64 %45, i32 %48, i32 %49)
  br label %59

51:                                               ; preds = %40
  %52 = load i64*, i64** %7, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %8, align 8
  %55 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @winbond_sio_reg_bclear(i64 %53, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %43
  %60 = load i64*, i64** %7, align 8
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @winbond_sio_leave(i64 %61)
  br label %63

63:                                               ; preds = %59, %19, %13
  ret void
}

declare dso_local i64* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @winbond_gpio_get_info(i32*, %struct.winbond_gpio_info**) #1

declare dso_local i64 @winbond_sio_enter(i64) #1

declare dso_local i32 @winbond_sio_select_logical(i64, i32) #1

declare dso_local i64 @winbond_sio_reg_btest(i64, i32, i32) #1

declare dso_local i32 @winbond_sio_reg_bset(i64, i32, i32) #1

declare dso_local i32 @winbond_sio_reg_bclear(i64, i32, i32) #1

declare dso_local i32 @winbond_sio_leave(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
