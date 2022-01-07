; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tlc591xx.c_tlc591xx_set_ledout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tlc591xx.c_tlc591xx_set_ledout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlc591xx_priv = type { i32, i32 }
%struct.tlc591xx_led = type { i32 }

@LEDOUT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlc591xx_priv*, %struct.tlc591xx_led*, i32)* @tlc591xx_set_ledout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlc591xx_set_ledout(%struct.tlc591xx_priv* %0, %struct.tlc591xx_led* %1, i32 %2) #0 {
  %4 = alloca %struct.tlc591xx_priv*, align 8
  %5 = alloca %struct.tlc591xx_led*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tlc591xx_priv* %0, %struct.tlc591xx_priv** %4, align 8
  store %struct.tlc591xx_led* %1, %struct.tlc591xx_led** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %5, align 8
  %11 = getelementptr inbounds %struct.tlc591xx_led, %struct.tlc591xx_led* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = srem i32 %12, 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @LEDOUT_MASK, align 4
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.tlc591xx_priv*, %struct.tlc591xx_priv** %4, align 8
  %19 = getelementptr inbounds %struct.tlc591xx_priv, %struct.tlc591xx_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %5, align 8
  %22 = getelementptr inbounds %struct.tlc591xx_led, %struct.tlc591xx_led* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 2
  %25 = add nsw i32 %20, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.tlc591xx_priv*, %struct.tlc591xx_priv** %4, align 8
  %30 = getelementptr inbounds %struct.tlc591xx_priv, %struct.tlc591xx_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
