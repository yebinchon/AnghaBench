; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxsd9.c_kxsd9_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxsd9.c_kxsd9_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxsd9_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Cannot enable regulators\0A\00", align 1
@KXSD9_REG_CTRL_B = common dso_local global i32 0, align 4
@KXSD9_CTRL_B_ENABLE = common dso_local global i32 0, align 4
@KXSD9_REG_CTRL_C = common dso_local global i32 0, align 4
@KXSD9_CTRL_C_LP_1000HZ = common dso_local global i32 0, align 4
@KXSD9_CTRL_C_MOT_LEV = common dso_local global i32 0, align 4
@KXSD9_CTRL_C_MOT_LAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxsd9_state*)* @kxsd9_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxsd9_power_up(%struct.kxsd9_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kxsd9_state*, align 8
  %4 = alloca i32, align 4
  store %struct.kxsd9_state* %0, %struct.kxsd9_state** %3, align 8
  %5 = load %struct.kxsd9_state*, %struct.kxsd9_state** %3, align 8
  %6 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = load %struct.kxsd9_state*, %struct.kxsd9_state** %3, align 8
  %10 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regulator_bulk_enable(i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.kxsd9_state*, %struct.kxsd9_state** %3, align 8
  %17 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %53

21:                                               ; preds = %1
  %22 = load %struct.kxsd9_state*, %struct.kxsd9_state** %3, align 8
  %23 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @KXSD9_REG_CTRL_B, align 4
  %26 = load i32, i32* @KXSD9_CTRL_B_ENABLE, align 4
  %27 = call i32 @regmap_write(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %53

32:                                               ; preds = %21
  %33 = load %struct.kxsd9_state*, %struct.kxsd9_state** %3, align 8
  %34 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @KXSD9_REG_CTRL_C, align 4
  %37 = load i32, i32* @KXSD9_CTRL_C_LP_1000HZ, align 4
  %38 = load i32, i32* @KXSD9_CTRL_C_MOT_LEV, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @KXSD9_CTRL_C_MOT_LAT, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.kxsd9_state*, %struct.kxsd9_state** %3, align 8
  %43 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  %46 = call i32 @regmap_write(i32 %35, i32 %36, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %32
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %32
  %52 = call i32 @msleep(i32 20)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %49, %30, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
