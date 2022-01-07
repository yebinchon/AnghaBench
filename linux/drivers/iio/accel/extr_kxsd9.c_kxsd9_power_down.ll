; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxsd9.c_kxsd9_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxsd9.c_kxsd9_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxsd9_state = type { i32, i32, i32 }

@KXSD9_REG_CTRL_B = common dso_local global i32 0, align 4
@KXSD9_CTRL_B_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot disable regulators\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxsd9_state*)* @kxsd9_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxsd9_power_down(%struct.kxsd9_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kxsd9_state*, align 8
  %4 = alloca i32, align 4
  store %struct.kxsd9_state* %0, %struct.kxsd9_state** %3, align 8
  %5 = load %struct.kxsd9_state*, %struct.kxsd9_state** %3, align 8
  %6 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @KXSD9_REG_CTRL_B, align 4
  %9 = load i32, i32* @KXSD9_CTRL_B_ENABLE, align 4
  %10 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.kxsd9_state*, %struct.kxsd9_state** %3, align 8
  %17 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = load %struct.kxsd9_state*, %struct.kxsd9_state** %3, align 8
  %21 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regulator_bulk_disable(i32 %19, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load %struct.kxsd9_state*, %struct.kxsd9_state** %3, align 8
  %28 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %26, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
