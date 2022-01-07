; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-smbus.c_smbus_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-smbus.c_smbus_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_smbus_alert = type { %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.alert_data = type { i32, i32, i32 }

@I2C_PROTOCOL_SMBUS_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Duplicate SMBALERT# from dev 0x%02x, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"SMBALERT# from dev 0x%02x, flag %d\0A\00", align 1
@smbus_do_alert = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @smbus_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbus_alert(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.i2c_smbus_alert*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca %struct.alert_data, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.i2c_smbus_alert*
  store %struct.i2c_smbus_alert* %11, %struct.i2c_smbus_alert** %5, align 8
  store i16 0, i16* %7, align 2
  %12 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_smbus_alert, %struct.i2c_smbus_alert* %12, i32 0, i32 0
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %6, align 8
  br label %15

15:                                               ; preds = %42, %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %17 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %60

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 1
  %24 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 1
  %27 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @I2C_PROTOCOL_SMBUS_ALERT, align 4
  %29 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %9, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %9, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i16, i16* %7, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = trunc i32 %39 to i16
  %41 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i16 zeroext %40)
  br label %60

42:                                               ; preds = %21
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_dbg(i32* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %47, i32 %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* @smbus_do_alert, align 4
  %56 = call i32 @device_for_each_child(i32* %54, %struct.alert_data* %9, i32 %55)
  %57 = getelementptr inbounds %struct.alert_data, %struct.alert_data* %9, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %7, align 2
  br label %15

60:                                               ; preds = %35, %20
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i16 zeroext) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i16 zeroext, i32) #1

declare dso_local i32 @device_for_each_child(i32*, %struct.alert_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
