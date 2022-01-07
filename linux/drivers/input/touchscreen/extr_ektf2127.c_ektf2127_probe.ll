; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ektf2127.c_ektf2127_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ektf2127.c_ektf2127_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ektf2127_ts = type { %struct.input_dev*, i32, %struct.i2c_client*, i32 }
%struct.input_dev = type { i32 (%struct.input_dev*)*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Error no irq specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Error getting power gpio: %d\0A\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@ektf2127_start = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@EKTF2127_MAX_TOUCHES = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@INPUT_MT_TRACK = common dso_local global i32 0, align 4
@ektf2127_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Error requesting irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ektf2127_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ektf2127_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ektf2127_ts*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %169

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.ektf2127_ts* @devm_kzalloc(%struct.device* %25, i32 32, i32 %26)
  store %struct.ektf2127_ts* %27, %struct.ektf2127_ts** %7, align 8
  %28 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %29 = icmp ne %struct.ektf2127_ts* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %169

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %36 = call i32 @devm_gpiod_get(%struct.device* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %38 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %40 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %33
  %45 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %46 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @EPROBE_DEFER, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %44
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %3, align 4
  br label %169

59:                                               ; preds = %33
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %60)
  store %struct.input_dev* %61, %struct.input_dev** %8, align 8
  %62 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %63 = icmp ne %struct.input_dev* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %169

67:                                               ; preds = %59
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %72 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @BUS_I2C, align 4
  %74 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %75 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @ektf2127_start, align 4
  %78 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 0
  store i32 (%struct.input_dev*)* @ektf2127_stop, i32 (%struct.input_dev*)** %81, align 8
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %84 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %83, i32 0, i32 2
  store %struct.i2c_client* %82, %struct.i2c_client** %84, align 8
  %85 = call i32 @msleep(i32 20)
  %86 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %87 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %86, i32 0, i32 2
  %88 = load %struct.i2c_client*, %struct.i2c_client** %87, align 8
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %90 = call i32 @i2c_master_recv(%struct.i2c_client* %88, i32* %89, i32 16)
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = call i32 @ektf2127_query_dimension(%struct.i2c_client* %91, i32 1)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %67
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %3, align 4
  br label %169

97:                                               ; preds = %67
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = call i32 @ektf2127_query_dimension(%struct.i2c_client* %98, i32 0)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %169

104:                                              ; preds = %97
  %105 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %106 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @input_set_abs_params(%struct.input_dev* %105, i32 %106, i32 0, i32 %107, i32 0, i32 0)
  %109 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %110 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @input_set_abs_params(%struct.input_dev* %109, i32 %110, i32 0, i32 %111, i32 0, i32 0)
  %113 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %114 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %115 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %114, i32 0, i32 1
  %116 = call i32 @touchscreen_parse_properties(%struct.input_dev* %113, i32 1, i32* %115)
  %117 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %118 = load i32, i32* @EKTF2127_MAX_TOUCHES, align 4
  %119 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %120 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @INPUT_MT_TRACK, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @input_mt_init_slots(%struct.input_dev* %117, i32 %118, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %104
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %3, align 4
  br label %169

129:                                              ; preds = %104
  %130 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %131 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %132 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %131, i32 0, i32 0
  store %struct.input_dev* %130, %struct.input_dev** %132, align 8
  %133 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %134 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %135 = call i32 @input_set_drvdata(%struct.input_dev* %133, %struct.ektf2127_ts* %134)
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ektf2127_irq, align 4
  %141 = load i32, i32* @IRQF_ONESHOT, align 4
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %146 = call i32 @devm_request_threaded_irq(%struct.device* %136, i32 %139, i32* null, i32 %140, i32 %141, i32 %144, %struct.ektf2127_ts* %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %129
  %150 = load %struct.device*, %struct.device** %6, align 8
  %151 = load i32, i32* %12, align 4
  %152 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %3, align 4
  br label %169

154:                                              ; preds = %129
  %155 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %156 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %155, i32 0, i32 0
  %157 = load %struct.input_dev*, %struct.input_dev** %156, align 8
  %158 = call i32 @ektf2127_stop(%struct.input_dev* %157)
  %159 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %160 = call i32 @input_register_device(%struct.input_dev* %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %154
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %3, align 4
  br label %169

165:                                              ; preds = %154
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %7, align 8
  %168 = call i32 @i2c_set_clientdata(%struct.i2c_client* %166, %struct.ektf2127_ts* %167)
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %163, %149, %127, %102, %95, %64, %57, %30, %19
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.ektf2127_ts* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @ektf2127_stop(%struct.input_dev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @ektf2127_query_dimension(%struct.i2c_client*, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.ektf2127_ts*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.ektf2127_ts*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ektf2127_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
