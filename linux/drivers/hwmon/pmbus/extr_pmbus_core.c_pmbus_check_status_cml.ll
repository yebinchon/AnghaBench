; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_check_status_cml.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_check_status_cml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { i32 (%struct.i2c_client.0*, i32)* }
%struct.i2c_client.0 = type opaque

@PB_STATUS_CML = common dso_local global i32 0, align 4
@PMBUS_STATUS_CML = common dso_local global i32 0, align 4
@PB_CML_FAULT_INVALID_COMMAND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @pmbus_check_status_cml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_check_status_cml(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.pmbus_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.pmbus_data* %8, %struct.pmbus_data** %4, align 8
  %9 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %10 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %9, i32 0, i32 0
  %11 = load i32 (%struct.i2c_client.0*, i32)*, i32 (%struct.i2c_client.0*, i32)** %10, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = bitcast %struct.i2c_client* %12 to %struct.i2c_client.0*
  %14 = call i32 %11(%struct.i2c_client.0* %13, i32 -1)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PB_STATUS_CML, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17, %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = load i32, i32* @PMBUS_STATUS_CML, align 4
  %25 = call i32 @_pmbus_read_byte_data(%struct.i2c_client* %23, i32 -1, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PB_CML_FAULT_INVALID_COMMAND, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %22
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %17
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @_pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
