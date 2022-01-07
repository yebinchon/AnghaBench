; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ws16c48.c_ws16c48_gpio_get_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ws16c48.c_ws16c48_gpio_get_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ws16c48_gpio = type { i64 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i64*, i64*)* @ws16c48_gpio_get_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws16c48_gpio_get_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ws16c48_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %18 = call %struct.ws16c48_gpio* @gpiochip_get_data(%struct.gpio_chip* %17)
  store %struct.ws16c48_gpio* %18, %struct.ws16c48_gpio** %7, align 8
  store i32 8, i32* %8, align 4
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = udiv i32 %21, 8
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %10, align 8
  %24 = call i64 @GENMASK(i32 7, i32 0)
  store i64 %24, i64* %15, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %27 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bitmap_zero(i64* %25, i32 %28)
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %73, %3
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @BIT_WORD(i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @BITS_PER_LONG, align 4
  %42 = urem i32 %40, %41
  store i32 %42, i32* %13, align 4
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = shl i64 %47, %49
  %51 = and i64 %46, %50
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %34
  br label %73

55:                                               ; preds = %34
  %56 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %7, align 8
  %57 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %58, %59
  %61 = call i64 @inb(i64 %60)
  store i64 %61, i64* %16, align 8
  %62 = load i64, i64* %16, align 8
  %63 = load i32, i32* %13, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 %62, %64
  %66 = load i64, i64* %14, align 8
  %67 = and i64 %65, %66
  %68 = load i64*, i64** %6, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = or i64 %71, %67
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %55, %54
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %30

76:                                               ; preds = %30
  ret i32 0
}

declare dso_local %struct.ws16c48_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i32 @bitmap_zero(i64*, i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i64 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
