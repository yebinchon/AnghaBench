; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.synaptics_i2c = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@polling_req = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Requesting IRQ: %d\0A\00", align 1
@synaptics_i2c_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"IRQ request failed: %d, falling back to polling\0A\00", align 1
@INTERRUPT_EN_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Using polling at rate: %d times/sec\0A\00", align 1
@scan_rate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Input device register failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @synaptics_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synaptics_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.synaptics_i2c*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call %struct.synaptics_i2c* @synaptics_i2c_touch_create(%struct.i2c_client* %8)
  store %struct.synaptics_i2c* %9, %struct.synaptics_i2c** %7, align 8
  %10 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %11 = icmp ne %struct.synaptics_i2c* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %114

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = call i32 @synaptics_i2c_reset_config(%struct.i2c_client* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %110

21:                                               ; preds = %15
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* @polling_req, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = call i32 (...) @input_allocate_device()
  %29 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %30 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %32 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %110

38:                                               ; preds = %27
  %39 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %40 = call i32 @synaptics_i2c_set_input_params(%struct.synaptics_i2c* %39)
  %41 = load i32, i32* @polling_req, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %79, label %43

43:                                               ; preds = %38
  %44 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %45 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %49 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %55 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @synaptics_i2c_irq, align 4
  %60 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %61 = load i32, i32* @DRIVER_NAME, align 4
  %62 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %63 = call i32 @request_irq(i32 %58, i32 %59, i32 %60, i32 %61, %struct.synaptics_i2c* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %43
  %67 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %68 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dev_warn(i32* %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 1, i32* @polling_req, align 4
  %73 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %74 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* @INTERRUPT_EN_REG, align 4
  %77 = call i32 @synaptics_i2c_reg_set(%struct.TYPE_2__* %75, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %66, %43
  br label %79

79:                                               ; preds = %78, %38
  %80 = load i32, i32* @polling_req, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %84 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* @scan_rate, align 4
  %88 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %91 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @input_register_device(i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 1
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %105

101:                                              ; preds = %89
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %104 = call i32 @i2c_set_clientdata(%struct.i2c_client* %102, %struct.synaptics_i2c* %103)
  store i32 0, i32* %3, align 4
  br label %114

105:                                              ; preds = %96
  %106 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %107 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @input_free_device(i32 %108)
  br label %110

110:                                              ; preds = %105, %35, %20
  %111 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %7, align 8
  %112 = call i32 @kfree(%struct.synaptics_i2c* %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %101, %12
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.synaptics_i2c* @synaptics_i2c_touch_create(%struct.i2c_client*) #1

declare dso_local i32 @synaptics_i2c_reset_config(%struct.i2c_client*) #1

declare dso_local i32 @input_allocate_device(...) #1

declare dso_local i32 @synaptics_i2c_set_input_params(%struct.synaptics_i2c*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.synaptics_i2c*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @synaptics_i2c_reg_set(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @input_register_device(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.synaptics_i2c*) #1

declare dso_local i32 @input_free_device(i32) #1

declare dso_local i32 @kfree(%struct.synaptics_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
