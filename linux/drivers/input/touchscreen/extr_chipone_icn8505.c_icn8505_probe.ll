; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.icn8505_data = type { i32, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"No irq specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_LEFTMETA = common dso_local global i32 0, align 4
@ICN8505_REG_CONFIGDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error reading resolution: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Error touchscreen-size-x and/or -y missing\0A\00", align 1
@ICN8505_MAX_TOUCHES = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@icn8505_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Error requesting irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @icn8505_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icn8505_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.icn8505_data*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %168

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.icn8505_data* @devm_kzalloc(%struct.device* %21, i32 24, i32 %22)
  store %struct.icn8505_data* %23, %struct.icn8505_data** %5, align 8
  %24 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %25 = icmp ne %struct.icn8505_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %168

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %30)
  store %struct.input_dev* %31, %struct.input_dev** %6, align 8
  %32 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %33 = icmp ne %struct.input_dev* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %168

37:                                               ; preds = %29
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @BUS_I2C, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %48 = load i32, i32* @EV_ABS, align 4
  %49 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %50 = call i32 @input_set_capability(%struct.input_dev* %47, i32 %48, i32 %49)
  %51 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %52 = load i32, i32* @EV_ABS, align 4
  %53 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %54 = call i32 @input_set_capability(%struct.input_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %56 = load i32, i32* @EV_KEY, align 4
  %57 = load i32, i32* @KEY_LEFTMETA, align 4
  %58 = call i32 @input_set_capability(%struct.input_dev* %55, i32 %56, i32 %57)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %61 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %60, i32 0, i32 2
  store %struct.i2c_client* %59, %struct.i2c_client** %61, align 8
  %62 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %63 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %64 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %63, i32 0, i32 1
  store %struct.input_dev* %62, %struct.input_dev** %64, align 8
  %65 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %66 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %67 = call i32 @input_set_drvdata(%struct.input_dev* %65, %struct.icn8505_data* %66)
  %68 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @icn8505_probe_acpi(%struct.icn8505_data* %68, %struct.device* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %37
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %168

75:                                               ; preds = %37
  %76 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %77 = call i32 @icn8505_upload_fw(%struct.icn8505_data* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %168

82:                                               ; preds = %75
  %83 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %84 = load i32, i32* @ICN8505_REG_CONFIGDATA, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %86 = call i32 @icn8505_read_data(%struct.icn8505_data* %83, i32 %84, i32* %85, i32 8)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %168

94:                                               ; preds = %82
  %95 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %96 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @le16_to_cpu(i32 %98)
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @input_set_abs_params(%struct.input_dev* %95, i32 %96, i32 0, i64 %100, i32 0, i32 0)
  %102 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %103 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @le16_to_cpu(i32 %105)
  %107 = sub nsw i64 %106, 1
  %108 = call i32 @input_set_abs_params(%struct.input_dev* %102, i32 %103, i32 0, i64 %107, i32 0, i32 0)
  %109 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %110 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %111 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %110, i32 0, i32 0
  %112 = call i32 @touchscreen_parse_properties(%struct.input_dev* %109, i32 1, i32* %111)
  %113 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %114 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %115 = call i32 @input_abs_get_max(%struct.input_dev* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %94
  %118 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %119 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %120 = call i32 @input_abs_get_max(%struct.input_dev* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117, %94
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %168

127:                                              ; preds = %117
  %128 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %129 = load i32, i32* @ICN8505_MAX_TOUCHES, align 4
  %130 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %131 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @input_mt_init_slots(%struct.input_dev* %128, i32 %129, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %168

138:                                              ; preds = %127
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @icn8505_irq, align 4
  %144 = load i32, i32* @IRQF_ONESHOT, align 4
  %145 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %149 = call i32 @devm_request_threaded_irq(%struct.device* %139, i32 %142, i32* null, i32 %143, i32 %144, i32 %147, %struct.icn8505_data* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %138
  %153 = load %struct.device*, %struct.device** %4, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %2, align 4
  br label %168

157:                                              ; preds = %138
  %158 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %159 = call i32 @input_register_device(%struct.input_dev* %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %2, align 4
  br label %168

164:                                              ; preds = %157
  %165 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %166 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %167 = call i32 @i2c_set_clientdata(%struct.i2c_client* %165, %struct.icn8505_data* %166)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %164, %162, %152, %136, %122, %89, %80, %73, %34, %26, %15
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.icn8505_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.icn8505_data*) #1

declare dso_local i32 @icn8505_probe_acpi(%struct.icn8505_data*, %struct.device*) #1

declare dso_local i32 @icn8505_upload_fw(%struct.icn8505_data*) #1

declare dso_local i32 @icn8505_read_data(%struct.icn8505_data*, i32, i32*, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i64, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @input_abs_get_max(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.icn8505_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.icn8505_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
