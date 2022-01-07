; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_init_mm_current_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_init_mm_current_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aat1290_led = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.aat1290_led_config_data = type { i32 }

@init_mm_current_scale.max_mm_current_percent = internal constant [15 x i32] [i32 20, i32 22, i32 25, i32 28, i32 32, i32 36, i32 40, i32 45, i32 50, i32 56, i32 63, i32 71, i32 79, i32 89, i32 100], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AAT1290_MM_CURRENT_SCALE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aat1290_led*, %struct.aat1290_led_config_data*)* @init_mm_current_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_mm_current_scale(%struct.aat1290_led* %0, %struct.aat1290_led_config_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aat1290_led*, align 8
  %5 = alloca %struct.aat1290_led_config_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aat1290_led* %0, %struct.aat1290_led** %4, align 8
  store %struct.aat1290_led_config_data* %1, %struct.aat1290_led_config_data** %5, align 8
  %8 = load %struct.aat1290_led_config_data*, %struct.aat1290_led_config_data** %5, align 8
  %9 = getelementptr inbounds %struct.aat1290_led_config_data, %struct.aat1290_led_config_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @AAT1290_MAX_MM_CURRENT(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.aat1290_led*, %struct.aat1290_led** %4, align 8
  %13 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @devm_kzalloc(i32* %15, i32 60, i32 %16)
  %18 = load %struct.aat1290_led*, %struct.aat1290_led** %4, align 8
  %19 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.aat1290_led*, %struct.aat1290_led** %4, align 8
  %21 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %50

27:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @AAT1290_MM_CURRENT_SCALE_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [15 x i32], [15 x i32]* @init_mm_current_scale.max_mm_current_percent, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %33, %37
  %39 = sdiv i32 %38, 100
  %40 = load %struct.aat1290_led*, %struct.aat1290_led** %4, align 8
  %41 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %28

49:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %24
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @AAT1290_MAX_MM_CURRENT(i32) #1

declare dso_local i32* @devm_kzalloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
