; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_update_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_update_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { i32, %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 (%struct.i2c_client*)* }
%struct.i2c_client = type { i32, i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Starting firmware update....\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"firmware update failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elan_tp_data*, %struct.firmware*)* @elan_update_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_update_firmware(%struct.elan_tp_data* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.elan_tp_data*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  %7 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %8 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %7, i32 0, i32 2
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @disable_irq(i32 %15)
  %17 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %18 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %20 = load %struct.firmware*, %struct.firmware** %4, align 8
  %21 = call i32 @__elan_update_firmware(%struct.elan_tp_data* %19, %struct.firmware* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %30 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)** %32, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = call i32 %33(%struct.i2c_client* %34)
  br label %41

36:                                               ; preds = %2
  %37 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %38 = call i32 @elan_initialize(%struct.elan_tp_data* %37)
  %39 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %40 = call i32 @elan_query_device_info(%struct.elan_tp_data* %39)
  br label %41

41:                                               ; preds = %36, %24
  %42 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %43 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @enable_irq(i32 %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @__elan_update_firmware(%struct.elan_tp_data*, %struct.firmware*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @elan_initialize(%struct.elan_tp_data*) #1

declare dso_local i32 @elan_query_device_info(%struct.elan_tp_data*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
