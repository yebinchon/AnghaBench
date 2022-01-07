; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_check_status_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_check_status_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { i32 (%struct.i2c_client.0*, i32)*, i32 }
%struct.i2c_client.0 = type opaque

@PMBUS_SKIP_STATUS_CHECK = common dso_local global i32 0, align 4
@PB_STATUS_CML = common dso_local global i32 0, align 4
@PMBUS_STATUS_CML = common dso_local global i32 0, align 4
@PB_CML_FAULT_INVALID_COMMAND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @pmbus_check_status_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_check_status_register(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmbus_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.pmbus_data* %8, %struct.pmbus_data** %6, align 8
  %9 = load %struct.pmbus_data*, %struct.pmbus_data** %6, align 8
  %10 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %9, i32 0, i32 0
  %11 = load i32 (%struct.i2c_client.0*, i32)*, i32 (%struct.i2c_client.0*, i32)** %10, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = bitcast %struct.i2c_client* %12 to %struct.i2c_client.0*
  %14 = load i32, i32* %4, align 4
  %15 = call i32 %11(%struct.i2c_client.0* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = load %struct.pmbus_data*, %struct.pmbus_data** %6, align 8
  %20 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PMBUS_SKIP_STATUS_CHECK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PB_STATUS_CML, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load i32, i32* @PMBUS_STATUS_CML, align 4
  %33 = call i32 @_pmbus_read_byte_data(%struct.i2c_client* %31, i32 -1, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PB_CML_FAULT_INVALID_COMMAND, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %30
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %44, %25, %18, %2
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = call i32 @pmbus_clear_fault_page(%struct.i2c_client* %46, i32 -1)
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 0
  %50 = zext i1 %49 to i32
  ret i32 %50
}

declare dso_local %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @_pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pmbus_clear_fault_page(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
