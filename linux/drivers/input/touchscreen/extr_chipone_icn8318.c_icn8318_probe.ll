; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8318.c_icn8318_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8318.c_icn8318_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.icn8318_data = type { %struct.input_dev*, %struct.i2c_client*, i32, i32 }
%struct.input_dev = type { %struct.TYPE_4__, i32 (%struct.input_dev*)*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Error no irq specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"wake\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Error getting wake gpio: %d\0A\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@icn8318_start = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Error touchscreen-size-x and/or -y missing\0A\00", align 1
@ICN8318_MAX_TOUCHES = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@icn8318_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Error requesting irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @icn8318_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icn8318_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.icn8318_data*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %163

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.icn8318_data* @devm_kzalloc(%struct.device* %22, i32 24, i32 %23)
  store %struct.icn8318_data* %24, %struct.icn8318_data** %7, align 8
  %25 = load %struct.icn8318_data*, %struct.icn8318_data** %7, align 8
  %26 = icmp ne %struct.icn8318_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %163

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %33 = call i32 @devm_gpiod_get(%struct.device* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.icn8318_data*, %struct.icn8318_data** %7, align 8
  %35 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.icn8318_data*, %struct.icn8318_data** %7, align 8
  %37 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  %42 = load %struct.icn8318_data*, %struct.icn8318_data** %7, align 8
  %43 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @EPROBE_DEFER, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %163

56:                                               ; preds = %30
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %57)
  store %struct.input_dev* %58, %struct.input_dev** %8, align 8
  %59 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %60 = icmp ne %struct.input_dev* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %163

64:                                               ; preds = %56
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @BUS_I2C, align 4
  %71 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %72 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @icn8318_start, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 1
  store i32 (%struct.input_dev*)* @icn8318_stop, i32 (%struct.input_dev*)** %78, align 8
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store %struct.device* %79, %struct.device** %82, align 8
  %83 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %84 = load i32, i32* @EV_ABS, align 4
  %85 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %86 = call i32 @input_set_capability(%struct.input_dev* %83, i32 %84, i32 %85)
  %87 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %88 = load i32, i32* @EV_ABS, align 4
  %89 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %90 = call i32 @input_set_capability(%struct.input_dev* %87, i32 %88, i32 %89)
  %91 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %92 = load %struct.icn8318_data*, %struct.icn8318_data** %7, align 8
  %93 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %92, i32 0, i32 2
  %94 = call i32 @touchscreen_parse_properties(%struct.input_dev* %91, i32 1, i32* %93)
  %95 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %96 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %97 = call i32 @input_abs_get_max(%struct.input_dev* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %64
  %100 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %101 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %102 = call i32 @input_abs_get_max(%struct.input_dev* %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99, %64
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %163

109:                                              ; preds = %99
  %110 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %111 = load i32, i32* @ICN8318_MAX_TOUCHES, align 4
  %112 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %113 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @input_mt_init_slots(%struct.input_dev* %110, i32 %111, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %163

120:                                              ; preds = %109
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = load %struct.icn8318_data*, %struct.icn8318_data** %7, align 8
  %123 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %122, i32 0, i32 1
  store %struct.i2c_client* %121, %struct.i2c_client** %123, align 8
  %124 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %125 = load %struct.icn8318_data*, %struct.icn8318_data** %7, align 8
  %126 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %125, i32 0, i32 0
  store %struct.input_dev* %124, %struct.input_dev** %126, align 8
  %127 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %128 = load %struct.icn8318_data*, %struct.icn8318_data** %7, align 8
  %129 = call i32 @input_set_drvdata(%struct.input_dev* %127, %struct.icn8318_data* %128)
  %130 = load %struct.device*, %struct.device** %6, align 8
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @icn8318_irq, align 4
  %135 = load i32, i32* @IRQF_ONESHOT, align 4
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.icn8318_data*, %struct.icn8318_data** %7, align 8
  %140 = call i32 @devm_request_threaded_irq(%struct.device* %130, i32 %133, i32* null, i32 %134, i32 %135, i32 %138, %struct.icn8318_data* %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %120
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %3, align 4
  br label %163

148:                                              ; preds = %120
  %149 = load %struct.icn8318_data*, %struct.icn8318_data** %7, align 8
  %150 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %149, i32 0, i32 0
  %151 = load %struct.input_dev*, %struct.input_dev** %150, align 8
  %152 = call i32 @icn8318_stop(%struct.input_dev* %151)
  %153 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %154 = call i32 @input_register_device(%struct.input_dev* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %3, align 4
  br label %163

159:                                              ; preds = %148
  %160 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %161 = load %struct.icn8318_data*, %struct.icn8318_data** %7, align 8
  %162 = call i32 @i2c_set_clientdata(%struct.i2c_client* %160, %struct.icn8318_data* %161)
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %159, %157, %143, %118, %104, %61, %54, %27, %16
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.icn8318_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @icn8318_stop(%struct.input_dev*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @input_abs_get_max(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.icn8318_data*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.icn8318_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.icn8318_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
