; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.stts751_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@I2C_PROTOCOL_SMBUS_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"alert!\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Alert received, but can't communicate to the device. Triggering all alarms!\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"got alert for HIGH temperature\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"temp1_max_alarm\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"got alert for LOW temperature\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"temp1_min_alarm\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32, i32)* @stts751_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stts751_alert(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stts751_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = call %struct.stts751_priv* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.stts751_priv* %10, %struct.stts751_priv** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @I2C_PROTOCOL_SMBUS_ALERT, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %102

15:                                               ; preds = %3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %20 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %19, i32 0, i32 4
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %23 = call i32 @stts751_update_alert(%struct.stts751_priv* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %28 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %30 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %32 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %31, i32 0, i32 5
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = call i32 @dev_warn(%struct.TYPE_3__* %33, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %26, %15
  %36 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %37 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %42 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %47 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %46, i32 0, i32 5
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = call i32 @dev_notice(%struct.TYPE_3__* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %52 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %51, i32 0, i32 2
  store i32 0, i32* %52, align 8
  %53 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %54 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %53, i32 0, i32 5
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @sysfs_notify(i32* %56, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %50, %35
  %59 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %60 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %65 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %70 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %69, i32 0, i32 5
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = call i32 @dev_notice(%struct.TYPE_3__* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %75 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %74, i32 0, i32 3
  store i32 0, i32* %75, align 4
  %76 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %77 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %76, i32 0, i32 5
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = call i32 @sysfs_notify(i32* %79, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %73, %58
  %82 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %83 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %88 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86, %81
  %92 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %93 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %92, i32 0, i32 5
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* @KOBJ_CHANGE, align 4
  %97 = call i32 @kobject_uevent(i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.stts751_priv*, %struct.stts751_priv** %8, align 8
  %100 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %99, i32 0, i32 4
  %101 = call i32 @mutex_unlock(i32* %100)
  br label %102

102:                                              ; preds = %98, %14
  ret void
}

declare dso_local %struct.stts751_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stts751_update_alert(%struct.stts751_priv*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @dev_notice(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
