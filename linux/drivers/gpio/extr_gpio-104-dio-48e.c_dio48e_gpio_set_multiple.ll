; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-dio-48e.c_dio48e_gpio_set_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-dio-48e.c_dio48e_gpio_set_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.dio48e_gpio = type { i64*, i32, i64 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*)* @dio48e_gpio_set_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio48e_gpio_set_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.dio48e_gpio*, align 8
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
  %15 = call %struct.dio48e_gpio* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.dio48e_gpio* %15, %struct.dio48e_gpio** %7, align 8
  store i32 8, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %121, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %124

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
  br label %121

38:                                               ; preds = %22
  %39 = load i32, i32* %8, align 4
  %40 = udiv i32 %39, 8
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ugt i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  br label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi i32 [ %45, %43 ], [ %47, %46 ]
  store i32 %49, i32* %11, align 4
  %50 = load i64*, i64** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @BIT_WORD(i32 %51)
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @BIT_WORD(i32 %56)
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %54, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %12, align 4
  %62 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %7, align 8
  %63 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %62, i32 0, i32 1
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @raw_spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load i64*, i64** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @BIT_WORD(i32 %67)
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = xor i64 %70, -1
  %72 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %7, align 8
  %73 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = and i64 %78, %71
  store i64 %79, i64* %77, align 8
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %7, align 8
  %83 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = or i64 %88, %81
  store i64 %89, i64* %87, align 8
  %90 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %7, align 8
  %91 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %7, align 8
  %99 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = call i32 @outb(i32 %97, i64 %103)
  %105 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %7, align 8
  %106 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %105, i32 0, i32 1
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @raw_spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i64*, i64** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i64 @BIT_WORD(i32 %110)
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = lshr i64 %113, 8
  store i64 %114, i64* %112, align 8
  %115 = load i64*, i64** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @BIT_WORD(i32 %116)
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = lshr i64 %119, 8
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %48, %29
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %122, 8
  store i32 %123, i32* %8, align 4
  br label %16

124:                                              ; preds = %16
  ret void
}

declare dso_local %struct.dio48e_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

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
