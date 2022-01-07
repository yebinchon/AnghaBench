; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_read_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_read_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.silead_ts_data = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"silead,max-fingers\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Max fingers read error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"firmware-name\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"silead/%s\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Firmware file name read error. Using default.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @silead_ts_read_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @silead_ts_read_props(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.silead_ts_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call %struct.silead_ts_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.silead_ts_data* %8, %struct.silead_ts_data** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %13 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %12, i32 0, i32 0
  %14 = call i32 @device_property_read_u32(%struct.device* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %22 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %21, i32 0, i32 0
  store i32 5, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @device_property_read_string(%struct.device* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %30 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @snprintf(i32 %31, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  br label %37

34:                                               ; preds = %23
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %28
  ret void
}

declare dso_local %struct.silead_ts_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @device_property_read_string(%struct.device*, i8*, i8**) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
