; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_conf_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_conf_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma9553_data = type { i64, i32, i32, i32 }
%struct.mma9553_event = type { i64 }

@MMA9551_APPID_PEDOMETER = common dso_local global i64 0, align 8
@IIO_ACTIVITY = common dso_local global i32 0, align 4
@IIO_STEPS = common dso_local global i32 0, align 4
@IIO_NO_MOD = common dso_local global i32 0, align 4
@IIO_EV_DIR_NONE = common dso_local global i32 0, align 4
@MMA9553_MASK_STATUS_MRGFL = common dso_local global i32 0, align 4
@MMA9553_MASK_STATUS_STEPCHG = common dso_local global i32 0, align 4
@MMA9553_MASK_STATUS_ACTCHG = common dso_local global i32 0, align 4
@MMA9551_APPID_NONE = common dso_local global i64 0, align 8
@MMA9553_DEFAULT_GPIO_PIN = common dso_local global i32 0, align 4
@MMA9553_DEFAULT_GPIO_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma9553_data*)* @mma9553_conf_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_conf_gpio(%struct.mma9553_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mma9553_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mma9553_event*, align 8
  %8 = alloca i32, align 4
  store %struct.mma9553_data* %0, %struct.mma9553_data** %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load i64, i64* @MMA9551_APPID_PEDOMETER, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %11 = load i32, i32* @IIO_ACTIVITY, align 4
  %12 = call i32 @mma9553_is_any_event_enabled(%struct.mma9553_data* %10, i32 1, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %14 = load i32, i32* @IIO_STEPS, align 4
  %15 = load i32, i32* @IIO_NO_MOD, align 4
  %16 = load i32, i32* @IIO_EV_DIR_NONE, align 4
  %17 = call %struct.mma9553_event* @mma9553_get_event(%struct.mma9553_data* %13, i32 %14, i32 %15, i32 %16)
  store %struct.mma9553_event* %17, %struct.mma9553_event** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.mma9553_event*, %struct.mma9553_event** %7, align 8
  %22 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @MMA9553_MASK_STATUS_MRGFL, align 4
  %27 = call i64 @MMA9553_STATUS_TO_BITNUM(i32 %26)
  store i64 %27, i64* %4, align 8
  br label %46

28:                                               ; preds = %20, %1
  %29 = load %struct.mma9553_event*, %struct.mma9553_event** %7, align 8
  %30 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @MMA9553_MASK_STATUS_STEPCHG, align 4
  %35 = call i64 @MMA9553_STATUS_TO_BITNUM(i32 %34)
  store i64 %35, i64* %4, align 8
  br label %45

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @MMA9553_MASK_STATUS_ACTCHG, align 4
  %41 = call i64 @MMA9553_STATUS_TO_BITNUM(i32 %40)
  store i64 %41, i64* %4, align 8
  br label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @MMA9551_APPID_NONE, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %42, %39
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %48 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %90

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load %struct.mma9553_event*, %struct.mma9553_event** %7, align 8
  %58 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56, %53
  %62 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %63 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %64 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %63, i32 0, i32 3
  %65 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %66 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %65, i32 0, i32 2
  %67 = call i32 @mma9553_read_activity_stepcnt(%struct.mma9553_data* %62, i32* %64, i32* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %90

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %56
  %74 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %75 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MMA9553_DEFAULT_GPIO_PIN, align 4
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load i32, i32* @MMA9553_DEFAULT_GPIO_POLARITY, align 4
  %81 = call i32 @mma9551_gpio_config(i32 %76, i32 %77, i64 %78, i64 %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %90

86:                                               ; preds = %73
  %87 = load i64, i64* %4, align 8
  %88 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %89 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %84, %70, %52
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @mma9553_is_any_event_enabled(%struct.mma9553_data*, i32, i32) #1

declare dso_local %struct.mma9553_event* @mma9553_get_event(%struct.mma9553_data*, i32, i32, i32) #1

declare dso_local i64 @MMA9553_STATUS_TO_BITNUM(i32) #1

declare dso_local i32 @mma9553_read_activity_stepcnt(%struct.mma9553_data*, i32*, i32*) #1

declare dso_local i32 @mma9551_gpio_config(i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
