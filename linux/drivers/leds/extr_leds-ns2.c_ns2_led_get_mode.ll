; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ns2.c_ns2_led_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ns2.c_ns2_led_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns2_led_data = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ns2_led_data*, i32*)* @ns2_led_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_led_get_mode(%struct.ns2_led_data* %0, i32* %1) #0 {
  %3 = alloca %struct.ns2_led_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ns2_led_data* %0, %struct.ns2_led_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %12 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gpio_get_value_cansleep(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %16 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @gpio_get_value_cansleep(i32 %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %58, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %22 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %28 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %26, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %39 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %37, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %49 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %4, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %6, align 4
  br label %61

57:                                               ; preds = %36, %25
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %19

61:                                               ; preds = %47, %19
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @gpio_get_value_cansleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
