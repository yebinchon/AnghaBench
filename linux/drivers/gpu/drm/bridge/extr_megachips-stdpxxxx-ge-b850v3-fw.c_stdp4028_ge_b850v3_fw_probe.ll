; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_stdp4028_ge_b850v3_fw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_stdp4028_ge_b850v3_fw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.i2c_client* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }

@ge_b850v3_lvds_ptr = common dso_local global %struct.TYPE_5__* null, align 8
@ge_b850v3_lvds_funcs = common dso_local global i32 0, align 4
@STDP4028_DPTX_IRQ_STS_REG = common dso_local global i32 0, align 4
@STDP4028_DPTX_IRQ_CLEAR = common dso_local global i32 0, align 4
@ge_b850v3_lvds_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ge-b850v3-lvds-dp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @stdp4028_ge_b850v3_fw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stdp4028_ge_b850v3_fw_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = call i32 @ge_b850v3_lvds_init(%struct.device* %9)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ge_b850v3_lvds_ptr, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store %struct.i2c_client* %11, %struct.i2c_client** %13, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ge_b850v3_lvds_ptr, align 8
  %16 = call i32 @i2c_set_clientdata(%struct.i2c_client* %14, %struct.TYPE_5__* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ge_b850v3_lvds_ptr, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32* @ge_b850v3_lvds_funcs, i32** %19, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ge_b850v3_lvds_ptr, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ge_b850v3_lvds_ptr, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @drm_bridge_add(%struct.TYPE_6__* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @STDP4028_DPTX_IRQ_STS_REG, align 4
  %31 = load i32, i32* @STDP4028_DPTX_IRQ_CLEAR, align 4
  %32 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %29, i32 %30, i32 %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

38:                                               ; preds = %2
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ge_b850v3_lvds_irq_handler, align 4
  %45 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %46 = load i32, i32* @IRQF_ONESHOT, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ge_b850v3_lvds_ptr, align 8
  %49 = call i32 @devm_request_threaded_irq(%struct.device* %40, i32 %43, i32* null, i32 %44, i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %38, %37
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ge_b850v3_lvds_init(%struct.device*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.TYPE_5__*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_6__*) #1

declare dso_local i32 @i2c_smbus_write_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
