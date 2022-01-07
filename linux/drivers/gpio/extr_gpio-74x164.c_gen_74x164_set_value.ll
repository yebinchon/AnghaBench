; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74x164.c_gen_74x164_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74x164.c_gen_74x164_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gen_74x164_chip = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @gen_74x164_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_74x164_set_value(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gen_74x164_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.gen_74x164_chip* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.gen_74x164_chip* %11, %struct.gen_74x164_chip** %7, align 8
  %12 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %13 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* %5, align 4
  %17 = udiv i32 %16, 8
  %18 = sub i32 %15, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = urem i32 %20, 8
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %24 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 1, %30
  %32 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %33 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %31
  store i32 %38, i32* %36, align 4
  br label %51

39:                                               ; preds = %3
  %40 = load i64, i64* %9, align 8
  %41 = trunc i64 %40 to i32
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %45 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %43
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %39, %28
  %52 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %53 = call i32 @__gen_74x164_write_config(%struct.gen_74x164_chip* %52)
  %54 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %55 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  ret void
}

declare dso_local %struct.gen_74x164_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__gen_74x164_write_config(%struct.gen_74x164_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
