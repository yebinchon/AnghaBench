; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-smbus.c_smbalert_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-smbus.c_smbalert_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.i2c_smbus_alert_setup = type { i32 }
%struct.i2c_smbus_alert = type { %struct.i2c_client*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"smbus_alert\00", align 1
@smbalert_work = common dso_local global i32 0, align 4
@smbus_alert = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"supports SMBALERT#\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @smbalert_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbalert_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_smbus_alert_setup*, align 8
  %7 = alloca %struct.i2c_smbus_alert*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.i2c_smbus_alert_setup* @dev_get_platdata(i32* %12)
  store %struct.i2c_smbus_alert_setup* %13, %struct.i2c_smbus_alert_setup** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %8, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.i2c_smbus_alert* @devm_kzalloc(i32* %18, i32 16, i32 %19)
  store %struct.i2c_smbus_alert* %20, %struct.i2c_smbus_alert** %7, align 8
  %21 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %7, align 8
  %22 = icmp ne %struct.i2c_smbus_alert* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %2
  %27 = load %struct.i2c_smbus_alert_setup*, %struct.i2c_smbus_alert_setup** %6, align 8
  %28 = icmp ne %struct.i2c_smbus_alert_setup* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.i2c_smbus_alert_setup*, %struct.i2c_smbus_alert_setup** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_smbus_alert_setup, %struct.i2c_smbus_alert_setup* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  br label %44

33:                                               ; preds = %26
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @of_irq_get_byname(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %76

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %29
  %45 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %7, align 8
  %46 = getelementptr inbounds %struct.i2c_smbus_alert, %struct.i2c_smbus_alert* %45, i32 0, i32 1
  %47 = load i32, i32* @smbalert_work, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %7, align 8
  %51 = getelementptr inbounds %struct.i2c_smbus_alert, %struct.i2c_smbus_alert* %50, i32 0, i32 0
  store %struct.i2c_client* %49, %struct.i2c_client** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %44
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @smbus_alert, align 4
  %59 = load i32, i32* @IRQF_SHARED, align 4
  %60 = load i32, i32* @IRQF_ONESHOT, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %7, align 8
  %63 = call i32 @devm_request_threaded_irq(i32* %56, i32 %57, i32* null, i32 %58, i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.i2c_smbus_alert* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %76

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %44
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load %struct.i2c_smbus_alert*, %struct.i2c_smbus_alert** %7, align 8
  %72 = call i32 @i2c_set_clientdata(%struct.i2c_client* %70, %struct.i2c_smbus_alert* %71)
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %74 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %73, i32 0, i32 0
  %75 = call i32 @dev_info(%struct.TYPE_2__* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %66, %41, %23
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.i2c_smbus_alert_setup* @dev_get_platdata(i32*) #1

declare dso_local %struct.i2c_smbus_alert* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @of_irq_get_byname(i32, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.i2c_smbus_alert*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.i2c_smbus_alert*) #1

declare dso_local i32 @dev_info(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
