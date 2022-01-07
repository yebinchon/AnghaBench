; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap2_set_gpio_debounce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap2_set_gpio_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_bank = type { %struct.TYPE_4__, i8*, i32, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i64, i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@OMAP4_GPIO_DEBOUNCINGTIME_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_bank*, i32, i32)* @omap2_set_gpio_debounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_set_gpio_debounce(%struct.gpio_bank* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_bank* %0, %struct.gpio_bank** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %17 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %92

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @DIV_ROUND_UP(i32 %27, i32 31)
  %29 = sub i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @OMAP4_GPIO_DEBOUNCINGTIME_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %92

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i32, i32* %6, align 4
  %41 = call i8* @BIT(i32 %40)
  store i8* %41, i8** %9, align 8
  %42 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %43 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @clk_enable(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %48 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %51 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %49, %54
  %56 = call i32 @writel_relaxed(i32 %46, i64 %55)
  %57 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %58 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %61 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %59, %64
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i8* @omap_gpio_rmw(i64 %65, i8* %66, i32 %67)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %71 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %73 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @clk_disable(i32 %74)
  %76 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %77 = call i32 @omap_gpio_dbck_enable(%struct.gpio_bank* %76)
  %78 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %79 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %39
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %85 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %89 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  br label %91

91:                                               ; preds = %82, %39
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %35, %20
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @BIT(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i8* @omap_gpio_rmw(i64, i8*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @omap_gpio_dbck_enable(%struct.gpio_bank*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
