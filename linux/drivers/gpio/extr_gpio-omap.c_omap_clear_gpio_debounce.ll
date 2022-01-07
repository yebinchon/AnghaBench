; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_clear_gpio_debounce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_clear_gpio_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_bank = type { i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_bank*, i32)* @omap_clear_gpio_debounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_clear_gpio_debounce(%struct.gpio_bank* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_bank*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gpio_bank* %0, %struct.gpio_bank** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @BIT(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %9 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %77

13:                                               ; preds = %2
  %14 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %15 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %77

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %25 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %5, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %31 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %36 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %40 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %43 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %41, %46
  %48 = call i32 @writel_relaxed(i32 %38, i64 %47)
  %49 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %50 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %21
  %54 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %55 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %58 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %62 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %65 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %63, %68
  %70 = call i32 @writel_relaxed(i32 %60, i64 %69)
  %71 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %72 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clk_disable(i32 %73)
  %75 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %76 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %12, %20, %53, %21
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
