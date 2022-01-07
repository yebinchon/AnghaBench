; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ws16c48.c_ws16c48_gpio_set_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ws16c48.c_ws16c48_gpio_set_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ws16c48_gpio = type { i64*, i32*, i32, i64 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*)* @ws16c48_gpio_set_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws16c48_gpio_set_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ws16c48_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = call %struct.ws16c48_gpio* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.ws16c48_gpio* %15, %struct.ws16c48_gpio** %7, align 8
  store i32 8, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %118, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %121

22:                                               ; preds = %16
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @BIT_WORD(i32 %24)
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @BIT_WORD(i32 %30)
  %32 = add i64 %31, 1
  %33 = load i32, i32* @BITS_PER_LONG, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %32, %34
  %36 = sub i64 %35, 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %118

38:                                               ; preds = %22
  %39 = load i32, i32* %8, align 4
  %40 = udiv i32 %39, 8
  store i32 %40, i32* %10, align 4
  %41 = load i64*, i64** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @BIT_WORD(i32 %42)
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %7, align 8
  %47 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = xor i64 %52, -1
  %54 = and i64 %45, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64*, i64** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @BIT_WORD(i32 %59)
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %57, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %12, align 4
  %65 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %7, align 8
  %66 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %65, i32 0, i32 2
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @raw_spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load i32, i32* %11, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %7, align 8
  %72 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %70
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %7, align 8
  %81 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %79
  store i32 %87, i32* %85, align 4
  %88 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %7, align 8
  %89 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %7, align 8
  %96 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = call i32 @outb(i32 %94, i64 %100)
  %102 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %7, align 8
  %103 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %102, i32 0, i32 2
  %104 = load i64, i64* %13, align 8
  %105 = call i32 @raw_spin_unlock_irqrestore(i32* %103, i64 %104)
  %106 = load i64*, i64** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i64 @BIT_WORD(i32 %107)
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = lshr i64 %110, 8
  store i64 %111, i64* %109, align 8
  %112 = load i64*, i64** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i64 @BIT_WORD(i32 %113)
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = lshr i64 %116, 8
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %38, %29
  %119 = load i32, i32* %8, align 4
  %120 = add i32 %119, 8
  store i32 %120, i32* %8, align 4
  br label %16

121:                                              ; preds = %16
  ret void
}

declare dso_local %struct.ws16c48_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
