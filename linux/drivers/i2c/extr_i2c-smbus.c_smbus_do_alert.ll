; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-smbus.c_smbus_do_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-smbus.c_smbus_do_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.alert_data = type { i64, i32, i32 }
%struct.i2c_driver = type { i32 (%struct.i2c_client.0*, i32, i32)* }
%struct.i2c_client.0 = type opaque

@I2C_CLIENT_TEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no driver alert()!\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"alert with no driver\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @smbus_do_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbus_do_alert(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.alert_data*, align 8
  %8 = alloca %struct.i2c_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.i2c_client* @i2c_verify_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.alert_data*
  store %struct.alert_data* %12, %struct.alert_data** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = icmp ne %struct.i2c_client* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.alert_data*, %struct.alert_data** %7, align 8
  %20 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %77

24:                                               ; preds = %15
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @I2C_CLIENT_TEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %77

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @device_lock(%struct.device* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %32
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.i2c_driver* @to_i2c_driver(i64 %44)
  store %struct.i2c_driver* %45, %struct.i2c_driver** %8, align 8
  %46 = load %struct.i2c_driver*, %struct.i2c_driver** %8, align 8
  %47 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %46, i32 0, i32 0
  %48 = load i32 (%struct.i2c_client.0*, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32)** %47, align 8
  %49 = icmp ne i32 (%struct.i2c_client.0*, i32, i32)* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = load %struct.i2c_driver*, %struct.i2c_driver** %8, align 8
  %52 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %51, i32 0, i32 0
  %53 = load i32 (%struct.i2c_client.0*, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32)** %52, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = bitcast %struct.i2c_client* %54 to %struct.i2c_client.0*
  %56 = load %struct.alert_data*, %struct.alert_data** %7, align 8
  %57 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.alert_data*, %struct.alert_data** %7, align 8
  %60 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %53(%struct.i2c_client.0* %55, i32 %58, i32 %61)
  br label %67

63:                                               ; preds = %40
  %64 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 2
  %66 = call i32 @dev_warn(%struct.TYPE_3__* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %50
  br label %72

68:                                               ; preds = %32
  %69 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 2
  %71 = call i32 @dev_dbg(%struct.TYPE_3__* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %67
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @device_unlock(%struct.device* %73)
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %31, %23
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.i2c_client* @i2c_verify_client(%struct.device*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local %struct.i2c_driver* @to_i2c_driver(i64) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
