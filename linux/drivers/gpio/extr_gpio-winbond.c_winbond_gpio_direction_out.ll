; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_direction_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_direction_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.winbond_gpio_info = type { i32, i32, i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @winbond_gpio_direction_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @winbond_gpio_direction_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.winbond_gpio_info*, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call i64* @gpiochip_get_data(%struct.gpio_chip* %11)
  store i64* %12, i64** %8, align 8
  %13 = call i32 @winbond_gpio_get_info(i32* %6, %struct.winbond_gpio_info** %9)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EACCES, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %76

18:                                               ; preds = %3
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @winbond_sio_enter(i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %76

26:                                               ; preds = %18
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %9, align 8
  %30 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @winbond_sio_select_logical(i64 %28, i32 %31)
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %9, align 8
  %36 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @winbond_sio_reg_bclear(i64 %34, i32 %37, i32 %38)
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %9, align 8
  %43 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @winbond_sio_reg_btest(i64 %41, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %26
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %26
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %9, align 8
  %60 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @winbond_sio_reg_bset(i64 %58, i32 %61, i32 %62)
  br label %72

64:                                               ; preds = %53
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %9, align 8
  %68 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @winbond_sio_reg_bclear(i64 %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %56
  %73 = load i64*, i64** %8, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @winbond_sio_leave(i64 %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %24, %15
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @winbond_gpio_get_info(i32*, %struct.winbond_gpio_info**) #1

declare dso_local i32 @winbond_sio_enter(i64) #1

declare dso_local i32 @winbond_sio_select_logical(i64, i32) #1

declare dso_local i32 @winbond_sio_reg_bclear(i64, i32, i32) #1

declare dso_local i64 @winbond_sio_reg_btest(i64, i32, i32) #1

declare dso_local i32 @winbond_sio_reg_bset(i64, i32, i32) #1

declare dso_local i32 @winbond_sio_leave(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
