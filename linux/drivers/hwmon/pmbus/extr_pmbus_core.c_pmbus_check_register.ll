; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_check_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_check_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { i32 }

@PMBUS_SKIP_STATUS_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32 (%struct.i2c_client*, i32, i32)*, i32, i32)* @pmbus_check_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_check_register(%struct.i2c_client* %0, i32 (%struct.i2c_client*, i32, i32)* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32 (%struct.i2c_client*, i32, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmbus_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 (%struct.i2c_client*, i32, i32)* %1, i32 (%struct.i2c_client*, i32, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = call %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.pmbus_data* %12, %struct.pmbus_data** %10, align 8
  %13 = load i32 (%struct.i2c_client*, i32, i32)*, i32 (%struct.i2c_client*, i32, i32)** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 %13(%struct.i2c_client* %14, i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %22 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PMBUS_SKIP_STATUS_CHECK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = call i32 @pmbus_check_status_cml(%struct.i2c_client* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %27, %20, %4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = call i32 @pmbus_clear_fault_page(%struct.i2c_client* %31, i32 -1)
  %33 = load i32, i32* %9, align 4
  %34 = icmp sge i32 %33, 0
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @pmbus_check_status_cml(%struct.i2c_client*) #1

declare dso_local i32 @pmbus_clear_fault_page(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
