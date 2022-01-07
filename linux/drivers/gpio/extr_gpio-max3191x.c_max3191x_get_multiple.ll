; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_max3191x_get_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_max3191x_get_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.max3191x_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MAX3191X_NGPIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i64*, i64*)* @max3191x_get_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3191x_get_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.max3191x_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %16 = call %struct.max3191x_chip* @gpiochip_get_data(%struct.gpio_chip* %15)
  store %struct.max3191x_chip* %16, %struct.max3191x_chip** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.max3191x_chip*, %struct.max3191x_chip** %7, align 8
  %18 = call i32 @max3191x_wordlen(%struct.max3191x_chip* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.max3191x_chip*, %struct.max3191x_chip** %7, align 8
  %20 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.max3191x_chip*, %struct.max3191x_chip** %7, align 8
  %23 = call i32 @max3191x_readout_locked(%struct.max3191x_chip* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %104

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i64*, i64** %5, align 8
  %30 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %31 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @find_next_bit(i64* %29, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %36 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %103

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @MAX3191X_NGPIO, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %11, align 4
  %43 = load %struct.max3191x_chip*, %struct.max3191x_chip** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @max3191x_chip_is_faulting(%struct.max3191x_chip* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %104

50:                                               ; preds = %39
  %51 = load %struct.max3191x_chip*, %struct.max3191x_chip** %7, align 8
  %52 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i64*
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = mul i32 %56, %57
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @BITS_PER_LONG, align 4
  %64 = srem i32 %62, %63
  %65 = load i32, i32* @MAX3191X_NGPIO, align 4
  %66 = call i64 @round_down(i32 %64, i32 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @BITS_PER_LONG, align 4
  %69 = sdiv i32 %67, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %14, align 8
  %71 = load i64*, i64** %5, align 8
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = trunc i64 %75 to i32
  %77 = shl i32 255, %76
  %78 = sext i32 %77 to i64
  %79 = and i64 %74, %78
  %80 = xor i64 %79, -1
  %81 = load i64*, i64** %6, align 8
  %82 = load i64, i64* %14, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = and i64 %84, %80
  store i64 %85, i64* %83, align 8
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %13, align 8
  %92 = shl i64 %90, %91
  %93 = and i64 %89, %92
  %94 = load i64*, i64** %6, align 8
  %95 = load i64, i64* %14, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = or i64 %97, %93
  store i64 %98, i64* %96, align 8
  %99 = load i32, i32* %11, align 4
  %100 = add i32 %99, 1
  %101 = load i32, i32* @MAX3191X_NGPIO, align 4
  %102 = mul i32 %100, %101
  store i32 %102, i32* %9, align 4
  br label %28

103:                                              ; preds = %28
  br label %104

104:                                              ; preds = %103, %47, %26
  %105 = load %struct.max3191x_chip*, %struct.max3191x_chip** %7, align 8
  %106 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local %struct.max3191x_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @max3191x_wordlen(%struct.max3191x_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max3191x_readout_locked(%struct.max3191x_chip*) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i64 @max3191x_chip_is_faulting(%struct.max3191x_chip*, i32) #1

declare dso_local i64 @round_down(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
