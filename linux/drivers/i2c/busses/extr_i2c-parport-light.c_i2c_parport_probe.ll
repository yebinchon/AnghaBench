; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-parport-light.c_i2c_parport_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-parport-light.c_i2c_parport_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_13__ = type { i64 }
%struct.platform_device = type { i32 }

@adapter_parm = common dso_local global %struct.TYPE_14__* null, align 8
@type = common dso_local global i64 0, align 8
@parport_adapter = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unable to register with I2C\0A\00", align 1
@irq = common dso_local global i64 0, align 8
@alert_data = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@ara = common dso_local global i64 0, align 8
@parport_ctrl_irq = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to register ARA client\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_parport_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_parport_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call i32 @parport_setsda(i32* null, i32 1)
  %6 = call i32 @parport_setscl(i32* null, i32 1)
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** @adapter_parm, align 8
  %8 = load i64, i64* @type, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @adapter_parm, align 8
  %16 = load i64, i64* @type, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = call i32 @line_set(i32 1, %struct.TYPE_11__* %18)
  %20 = call i32 @msleep(i32 100)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  store i32* %23, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @parport_adapter, i32 0, i32 0, i32 0), align 8
  %24 = call i32 @i2c_bit_add_bus(%struct.TYPE_12__* @parport_adapter)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %55

32:                                               ; preds = %21
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** @adapter_parm, align 8
  %34 = load i64, i64* @type, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load i64, i64* @irq, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i64, i64* @irq, align 8
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @alert_data, i32 0, i32 0), align 8
  %44 = call i64 @i2c_setup_smbus_alert(%struct.TYPE_12__* @parport_adapter, %struct.TYPE_13__* @alert_data)
  store i64 %44, i64* @ara, align 8
  %45 = load i64, i64* @ara, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @line_set(i32 1, %struct.TYPE_11__* @parport_ctrl_irq)
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %47
  br label %54

54:                                               ; preds = %53, %39, %32
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %27
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @parport_setsda(i32*, i32) #1

declare dso_local i32 @parport_setscl(i32*, i32) #1

declare dso_local i32 @line_set(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @i2c_setup_smbus_alert(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
