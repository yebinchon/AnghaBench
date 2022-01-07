; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl3216_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl3216_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.is31fl32xx_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@IS31FL3216_CONFIG_REG = common dso_local global i64 0, align 8
@IS31FL3216_CONFIG_SSD_ENABLE = common dso_local global i32 0, align 4
@IS31FL3216_LIGHTING_EFFECT_REG = common dso_local global i64 0, align 8
@IS31FL3216_CHANNEL_CONFIG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.is31fl32xx_priv*)* @is31fl3216_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is31fl3216_reset(%struct.is31fl32xx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.is31fl32xx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.is31fl32xx_priv* %0, %struct.is31fl32xx_priv** %3, align 8
  %6 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %7 = load i64, i64* @IS31FL3216_CONFIG_REG, align 8
  %8 = load i32, i32* @IS31FL3216_CONFIG_SSD_ENABLE, align 4
  %9 = call i32 @is31fl32xx_write(%struct.is31fl32xx_priv* %6, i64 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %18 = getelementptr inbounds %struct.is31fl32xx_priv, %struct.is31fl32xx_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %16, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %15
  %24 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %25 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %26 = getelementptr inbounds %struct.is31fl32xx_priv, %struct.is31fl32xx_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @is31fl32xx_write(%struct.is31fl32xx_priv* %24, i64 %32, i32 0)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %71

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %15

42:                                               ; preds = %15
  %43 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %44 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %45 = getelementptr inbounds %struct.is31fl32xx_priv, %struct.is31fl32xx_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @is31fl32xx_write(%struct.is31fl32xx_priv* %43, i64 %48, i32 0)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %71

54:                                               ; preds = %42
  %55 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %56 = load i64, i64* @IS31FL3216_LIGHTING_EFFECT_REG, align 8
  %57 = call i32 @is31fl32xx_write(%struct.is31fl32xx_priv* %55, i64 %56, i32 0)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %71

62:                                               ; preds = %54
  %63 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %64 = load i64, i64* @IS31FL3216_CHANNEL_CONFIG_REG, align 8
  %65 = call i32 @is31fl32xx_write(%struct.is31fl32xx_priv* %63, i64 %64, i32 0)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %68, %60, %52, %36, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @is31fl32xx_write(%struct.is31fl32xx_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
