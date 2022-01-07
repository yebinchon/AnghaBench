; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ti-lmu-common.c_ti_lmu_common_set_ramp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ti-lmu-common.c_ti_lmu_common_set_ramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_lmu_bank = type { i64, i64, i32, %struct.regmap* }
%struct.regmap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_lmu_common_set_ramp(%struct.ti_lmu_bank* %0) #0 {
  %2 = alloca %struct.ti_lmu_bank*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ti_lmu_bank* %0, %struct.ti_lmu_bank** %2, align 8
  %7 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %2, align 8
  %8 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %7, i32 0, i32 3
  %9 = load %struct.regmap*, %struct.regmap** %8, align 8
  store %struct.regmap* %9, %struct.regmap** %3, align 8
  %10 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %2, align 8
  %11 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %2, align 8
  %16 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %29

20:                                               ; preds = %14, %1
  %21 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %2, align 8
  %22 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ti_lmu_common_convert_ramp_to_index(i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %2, align 8
  %26 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ti_lmu_common_convert_ramp_to_index(i64 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %20, %19
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %30, 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.regmap*, %struct.regmap** %3, align 8
  %35 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %2, align 8
  %36 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @regmap_write(%struct.regmap* %34, i32 %37, i32 %38)
  ret i32 %39
}

declare dso_local i32 @ti_lmu_common_convert_ramp_to_index(i64) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
