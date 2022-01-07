; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-dio-48e.c_dio48e_gpio_get_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-dio-48e.c_dio48e_gpio_get_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.dio48e_gpio = type { i64 }

@dio48e_gpio_get_multiple.ports = internal constant [6 x i64] [i64 0, i64 1, i64 2, i64 4, i64 5, i64 6], align 16
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i64*, i64*)* @dio48e_gpio_get_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio48e_gpio_get_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.dio48e_gpio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %17 = call %struct.dio48e_gpio* @gpiochip_get_data(%struct.gpio_chip* %16)
  store %struct.dio48e_gpio* %17, %struct.dio48e_gpio** %7, align 8
  store i32 8, i32* %9, align 4
  %18 = call i64 @GENMASK(i32 7, i32 0)
  store i64 %18, i64* %14, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bitmap_zero(i64* %19, i32 %22)
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %69, %3
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @ARRAY_SIZE(i64* getelementptr inbounds ([6 x i64], [6 x i64]* @dio48e_gpio_get_multiple.ports, i64 0, i64 0))
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @BIT_WORD(i32 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @BITS_PER_LONG, align 4
  %36 = urem i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i32, i32* %12, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 %41, %43
  %45 = and i64 %40, %44
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %28
  br label %69

49:                                               ; preds = %28
  %50 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %7, align 8
  %51 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds [6 x i64], [6 x i64]* @dio48e_gpio_get_multiple.ports, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = call i64 @inb(i64 %56)
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 %58, %60
  %62 = load i64, i64* %13, align 8
  %63 = and i64 %61, %62
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = or i64 %67, %63
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %49, %48
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %24

72:                                               ; preds = %24
  ret i32 0
}

declare dso_local %struct.dio48e_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i32 @bitmap_zero(i64*, i32) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i64 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
