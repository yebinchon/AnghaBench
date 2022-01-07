; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm90_data = type { i32, i32, i32 }

@I2C_PROTOCOL_SMBUS_ALERT = common dso_local global i32 0, align 4
@LM90_HAVE_BROKEN_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Disabling ALERT#\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Everything OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32, i32)* @lm90_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm90_alert(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lm90_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @I2C_PROTOCOL_SMBUS_ALERT, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %48

13:                                               ; preds = %3
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = call i64 @lm90_is_tripped(%struct.i2c_client* %14, i32* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = call %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client* %18)
  store %struct.lm90_data* %19, %struct.lm90_data** %8, align 8
  %20 = load %struct.lm90_data*, %struct.lm90_data** %8, align 8
  %21 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LM90_HAVE_BROKEN_ALERT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.lm90_data*, %struct.lm90_data** %8, align 8
  %29 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.lm90_data*, %struct.lm90_data** %8, align 8
  %38 = load %struct.lm90_data*, %struct.lm90_data** %8, align 8
  %39 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, 128
  %42 = call i32 @lm90_update_confreg(%struct.lm90_data* %37, i32 %41)
  br label %43

43:                                               ; preds = %33, %26, %17
  br label %48

44:                                               ; preds = %13
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %12, %44, %43
  ret void
}

declare dso_local i64 @lm90_is_tripped(%struct.i2c_client*, i32*) #1

declare dso_local %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @lm90_update_confreg(%struct.lm90_data*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
