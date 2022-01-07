; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca8418_keypad.c_tca8418_keypad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca8418_keypad.c_tca8418_keypad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_4__*, %struct.device }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tca8418_keypad = type { i32, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s adapter not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TCA8418_MAX_ROWS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid rows\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TCA8418_MAX_COLS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid columns\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_KEY_LCK_EC = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to build keymap\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"keypad,autorepeat\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@tca8418_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Unable to claim irq %d; error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Unable to register input device, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tca8418_keypad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tca8418_keypad_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tca8418_keypad*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 3
  store %struct.device* %15, %struct.device** %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %20 = call i32 @i2c_check_functionality(%struct.TYPE_4__* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @dev_driver_string(i32* %27)
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %187

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @matrix_keypad_parse_properties(%struct.device* %33, i64* %9, i64* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %3, align 4
  br label %187

39:                                               ; preds = %32
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @TCA8418_MAX_ROWS, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %39
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %187

51:                                               ; preds = %42
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @TCA8418_MAX_COLS, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54, %51
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %187

63:                                               ; preds = %54
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @get_count_order(i64 %64)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.tca8418_keypad* @devm_kzalloc(%struct.device* %66, i32 24, i32 %67)
  store %struct.tca8418_keypad* %68, %struct.tca8418_keypad** %7, align 8
  %69 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %7, align 8
  %70 = icmp ne %struct.tca8418_keypad* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %187

74:                                               ; preds = %63
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %7, align 8
  %77 = getelementptr inbounds %struct.tca8418_keypad, %struct.tca8418_keypad* %76, i32 0, i32 2
  store %struct.i2c_client* %75, %struct.i2c_client** %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %7, align 8
  %80 = getelementptr inbounds %struct.tca8418_keypad, %struct.tca8418_keypad* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %7, align 8
  %82 = load i32, i32* @REG_KEY_LCK_EC, align 4
  %83 = call i32 @tca8418_read_byte(%struct.tca8418_keypad* %81, i32 %82, i32* %13)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %187

89:                                               ; preds = %74
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %90)
  store %struct.input_dev* %91, %struct.input_dev** %8, align 8
  %92 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %93 = icmp ne %struct.input_dev* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %187

97:                                               ; preds = %89
  %98 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %99 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %7, align 8
  %100 = getelementptr inbounds %struct.tca8418_keypad, %struct.tca8418_keypad* %99, i32 0, i32 1
  store %struct.input_dev* %98, %struct.input_dev** %100, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @BUS_I2C, align 4
  %107 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 4
  %110 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  %113 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  store i32 1, i32* %118, align 4
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %122 = call i32 @matrix_keypad_build_keymap(i32* null, i32* null, i64 %119, i64 %120, i32* null, %struct.input_dev* %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %97
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %3, align 4
  br label %187

129:                                              ; preds = %97
  %130 = load %struct.device*, %struct.device** %6, align 8
  %131 = call i64 @device_property_read_bool(%struct.device* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* @EV_REP, align 4
  %135 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %136 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @__set_bit(i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %133, %129
  %140 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %141 = load i32, i32* @EV_MSC, align 4
  %142 = load i32, i32* @MSC_SCAN, align 4
  %143 = call i32 @input_set_capability(%struct.input_dev* %140, i32 %141, i32 %142)
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @tca8418_irq_handler, align 4
  %149 = load i32, i32* @IRQF_SHARED, align 4
  %150 = load i32, i32* @IRQF_ONESHOT, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %7, align 8
  %156 = call i32 @devm_request_threaded_irq(%struct.device* %144, i32 %147, i32* null, i32 %148, i32 %151, i32 %154, %struct.tca8418_keypad* %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %139
  %160 = load %struct.device*, %struct.device** %6, align 8
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %160, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %3, align 4
  br label %187

167:                                              ; preds = %139
  %168 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %7, align 8
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @tca8418_configure(%struct.tca8418_keypad* %168, i64 %169, i64 %170)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %3, align 4
  br label %187

176:                                              ; preds = %167
  %177 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %178 = call i32 @input_register_device(%struct.input_dev* %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load %struct.device*, %struct.device** %6, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %182, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %11, align 4
  store i32 %185, i32* %3, align 4
  br label %187

186:                                              ; preds = %176
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %186, %181, %174, %159, %125, %94, %86, %71, %58, %46, %37, %22
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_driver_string(i32*) #1

declare dso_local i32 @matrix_keypad_parse_properties(%struct.device*, i64*, i64*) #1

declare dso_local i32 @get_count_order(i64) #1

declare dso_local %struct.tca8418_keypad* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @tca8418_read_byte(%struct.tca8418_keypad*, i32, i32*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32*, i32*, i64, i64, i32*, %struct.input_dev*) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.tca8418_keypad*) #1

declare dso_local i32 @tca8418_configure(%struct.tca8418_keypad*, i64, i64) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
