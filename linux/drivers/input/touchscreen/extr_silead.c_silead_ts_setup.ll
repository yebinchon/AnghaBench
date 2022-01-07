; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@SILEAD_POWER_OFF = common dso_local global i32 0, align 4
@SILEAD_POWER_ON = common dso_local global i32 0, align 4
@SILEAD_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Initialization error, status: 0x%X\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @silead_ts_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @silead_ts_setup(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = load i32, i32* @SILEAD_POWER_OFF, align 4
  %8 = call i32 @silead_ts_set_power(%struct.i2c_client* %6, i32 %7)
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = load i32, i32* @SILEAD_POWER_ON, align 4
  %11 = call i32 @silead_ts_set_power(%struct.i2c_client* %9, i32 %10)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = call i32 @silead_ts_get_id(%struct.i2c_client* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = call i32 @silead_ts_init(%struct.i2c_client* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %60

25:                                               ; preds = %18
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = call i32 @silead_ts_reset(%struct.i2c_client* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %60

32:                                               ; preds = %25
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = call i32 @silead_ts_load_fw(%struct.i2c_client* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %60

39:                                               ; preds = %32
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = call i32 @silead_ts_startup(%struct.i2c_client* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %60

46:                                               ; preds = %39
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = call i64 @silead_ts_get_status(%struct.i2c_client* %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @SILEAD_STATUS_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %52, %44, %37, %30, %23, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @silead_ts_set_power(%struct.i2c_client*, i32) #1

declare dso_local i32 @silead_ts_get_id(%struct.i2c_client*) #1

declare dso_local i32 @silead_ts_init(%struct.i2c_client*) #1

declare dso_local i32 @silead_ts_reset(%struct.i2c_client*) #1

declare dso_local i32 @silead_ts_load_fw(%struct.i2c_client*) #1

declare dso_local i32 @silead_ts_startup(%struct.i2c_client*) #1

declare dso_local i64 @silead_ts_get_status(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
