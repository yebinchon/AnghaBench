; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ti-lmu-common.c_ti_lmu_common_update_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ti-lmu-common.c_ti_lmu_common_update_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_lmu_bank = type { i64, i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@MAX_BRIGHTNESS_11BIT = common dso_local global i64 0, align 8
@LMU_11BIT_LSB_MASK = common dso_local global i32 0, align 4
@LMU_11BIT_MSB_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_lmu_bank*, i32)* @ti_lmu_common_update_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_lmu_common_update_brightness(%struct.ti_lmu_bank* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_lmu_bank*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ti_lmu_bank* %0, %struct.ti_lmu_bank** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %4, align 8
  %11 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %10, i32 0, i32 3
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %4, align 8
  %14 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MAX_BRIGHTNESS_11BIT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %4, align 8
  %20 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.regmap*, %struct.regmap** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @LMU_11BIT_LSB_MASK, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @regmap_update_bits(%struct.regmap* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @LMU_11BIT_MSB_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %8, align 4
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %4, align 8
  %39 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.regmap*, %struct.regmap** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @regmap_write(%struct.regmap* %41, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
