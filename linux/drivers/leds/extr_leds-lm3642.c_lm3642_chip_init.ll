; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3642.c_lm3642_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3642.c_lm3642_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3642_chip_data = type { i32, i32, %struct.lm3642_platform_data* }
%struct.lm3642_platform_data = type { i32 }

@REG_ENABLE = common dso_local global i32 0, align 4
@EX_PIN_ENABLE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to update REG_ENABLE Register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3642_chip_data*)* @lm3642_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3642_chip_init(%struct.lm3642_chip_data* %0) #0 {
  %2 = alloca %struct.lm3642_chip_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm3642_platform_data*, align 8
  store %struct.lm3642_chip_data* %0, %struct.lm3642_chip_data** %2, align 8
  %5 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %2, align 8
  %6 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %5, i32 0, i32 2
  %7 = load %struct.lm3642_platform_data*, %struct.lm3642_platform_data** %6, align 8
  store %struct.lm3642_platform_data* %7, %struct.lm3642_platform_data** %4, align 8
  %8 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %2, align 8
  %9 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @REG_ENABLE, align 4
  %12 = load i32, i32* @EX_PIN_ENABLE_MASK, align 4
  %13 = load %struct.lm3642_platform_data*, %struct.lm3642_platform_data** %4, align 8
  %14 = getelementptr inbounds %struct.lm3642_platform_data, %struct.lm3642_platform_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %12, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %2, align 8
  %21 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %1
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
