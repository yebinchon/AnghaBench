; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_dir_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_dir_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.thunderx_gpio = type { i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @thunderx_gpio_dir_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_gpio_dir_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thunderx_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %8 = call %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.thunderx_gpio* %8, %struct.thunderx_gpio** %6, align 8
  %9 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @thunderx_gpio_is_gpio(%struct.thunderx_gpio* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %18 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %17, i32 0, i32 0
  %19 = call i32 @raw_spin_lock(i32* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %22 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clear_bit(i32 %20, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %27 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clear_bit(i32 %25, i32 %28)
  %30 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %31 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %39 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @bit_cfg_reg(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @writeq(i32 %37, i64 %43)
  %45 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %46 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %45, i32 0, i32 0
  %47 = call i32 @raw_spin_unlock(i32* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %16, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @thunderx_gpio_is_gpio(%struct.thunderx_gpio*, i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @bit_cfg_reg(i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
