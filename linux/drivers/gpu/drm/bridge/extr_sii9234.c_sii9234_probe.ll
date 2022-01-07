; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.sii9234 = type { %struct.TYPE_2__, i32, %struct.device* }
%struct.TYPE_2__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"I2C adapter lacks SMBUS feature\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"no irq provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@sii9234_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"sii9234\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to install IRQ handler\0A\00", align 1
@sii9234_bridge_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sii9234_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii9234_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.sii9234*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sii9234* @devm_kzalloc(%struct.device* %15, i32 32, i32 %16)
  store %struct.sii9234* %17, %struct.sii9234** %7, align 8
  %18 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %19 = icmp ne %struct.sii9234* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %97

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %26 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %25, i32 0, i32 2
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %28 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %27, i32 0, i32 1
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %31 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %32 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %23
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %97

39:                                               ; preds = %23
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %97

49:                                               ; preds = %39
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %54 = call i32 @irq_set_status_flags(i32 %52, i32 %53)
  %55 = load %struct.device*, %struct.device** %8, align 8
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @sii9234_irq_thread, align 4
  %60 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %61 = load i32, i32* @IRQF_ONESHOT, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %64 = call i32 @devm_request_threaded_irq(%struct.device* %55, i32 %58, i32* null, i32 %59, i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.sii9234* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %49
  %68 = load %struct.device*, %struct.device** %8, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %97

71:                                               ; preds = %49
  %72 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = call i32 @sii9234_init_resources(%struct.sii9234* %72, %struct.i2c_client* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %97

79:                                               ; preds = %71
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %82 = call i32 @i2c_set_clientdata(%struct.i2c_client* %80, %struct.sii9234* %81)
  %83 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %84 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32* @sii9234_bridge_funcs, i32** %85, align 8
  %86 = load %struct.device*, %struct.device** %8, align 8
  %87 = getelementptr inbounds %struct.device, %struct.device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %90 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %93 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %92, i32 0, i32 0
  %94 = call i32 @drm_bridge_add(%struct.TYPE_2__* %93)
  %95 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %96 = call i32 @sii9234_cable_in(%struct.sii9234* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %79, %77, %67, %44, %34, %20
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.sii9234* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.sii9234*) #1

declare dso_local i32 @sii9234_init_resources(%struct.sii9234*, %struct.i2c_client*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sii9234*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_2__*) #1

declare dso_local i32 @sii9234_cable_in(%struct.sii9234*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
