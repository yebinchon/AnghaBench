; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-gpio-mm.c_gpiomm_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-gpio-mm.c_gpiomm_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gpiomm_gpio = type { i32, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @gpiomm_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiomm_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpiomm_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = call %struct.gpiomm_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.gpiomm_gpio* %12, %struct.gpiomm_gpio** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = udiv i32 %13, 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = udiv i32 %15, 3
  store i32 %16, i32* %7, align 4
  %17 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %5, align 8
  %18 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 3
  %21 = load i32, i32* %7, align 4
  %22 = mul i32 %21, 4
  %23 = add i32 %20, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %5, align 8
  %25 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %24, i32 0, i32 3
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %33, label %74

33:                                               ; preds = %30, %2
  %34 = load i32, i32* %4, align 4
  %35 = urem i32 %34, 8
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %5, align 8
  %39 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 240
  store i32 %45, i32* %43, align 4
  %46 = call i32 @BIT(i32 3)
  %47 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %5, align 8
  %48 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %46
  store i32 %54, i32* %52, align 4
  br label %73

55:                                               ; preds = %33
  %56 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %5, align 8
  %57 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, 15
  store i32 %63, i32* %61, align 4
  %64 = call i32 @BIT(i32 0)
  %65 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %5, align 8
  %66 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %64
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %55, %37
  br label %109

74:                                               ; preds = %30
  %75 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %5, align 8
  %76 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, 255
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %98

88:                                               ; preds = %85, %74
  %89 = call i32 @BIT(i32 4)
  %90 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %5, align 8
  %91 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %89
  store i32 %97, i32* %95, align 4
  br label %108

98:                                               ; preds = %85
  %99 = call i32 @BIT(i32 1)
  %100 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %5, align 8
  %101 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %99
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %98, %88
  br label %109

109:                                              ; preds = %108, %73
  %110 = call i32 @BIT(i32 7)
  %111 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %5, align 8
  %112 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %110, %117
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @outb(i32 %119, i32 %120)
  %122 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %5, align 8
  %123 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %122, i32 0, i32 3
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  ret i32 0
}

declare dso_local %struct.gpiomm_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
