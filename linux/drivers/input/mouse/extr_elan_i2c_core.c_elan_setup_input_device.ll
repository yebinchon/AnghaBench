; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_setup_input_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_setup_input_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { i32, i32, %struct.input_dev*, i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_3__* }
%struct.input_dev = type { i8*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Elan Touchpad\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@ELAN_VENDOR_ID = common dso_local global i32 0, align 4
@ETP_MAX_FINGERS = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to initialize MT slots: %d\0A\00", align 1
@EV_ABS = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@INPUT_PROP_BUTTONPAD = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ETP_MAX_PRESSURE = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@ETP_FINGER_WIDTH = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elan_tp_data*)* @elan_setup_input_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_setup_input_device(%struct.elan_tp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elan_tp_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %3, align 8
  %9 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %10 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %9, i32 0, i32 10
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %14 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %17 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @max(i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %21 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %24 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @min(i32 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %27)
  store %struct.input_dev* %28, %struct.input_dev** %5, align 8
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = icmp ne %struct.input_dev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %189

34:                                               ; preds = %1
  %35 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  %37 = load i32, i32* @BUS_I2C, align 4
  %38 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @ELAN_VENDOR_ID, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %46 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %53 = call i32 @input_set_drvdata(%struct.input_dev* %51, %struct.elan_tp_data* %52)
  %54 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %55 = load i32, i32* @ETP_MAX_FINGERS, align 4
  %56 = load i32, i32* @INPUT_MT_POINTER, align 4
  %57 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @input_mt_init_slots(%struct.input_dev* %54, i32 %55, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %34
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %189

67:                                               ; preds = %34
  %68 = load i32, i32* @EV_ABS, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @__set_bit(i32 %68, i32 %71)
  %73 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %74 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %75 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @__set_bit(i32 %73, i32 %76)
  %78 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %79 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %67
  %83 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__set_bit(i32 %83, i32 %86)
  br label %105

88:                                               ; preds = %67
  %89 = load i32, i32* @BTN_RIGHT, align 4
  %90 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %91 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @__set_bit(i32 %89, i32 %92)
  %94 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %95 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load i32, i32* @BTN_MIDDLE, align 4
  %100 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %101 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @__set_bit(i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %98, %88
  br label %105

105:                                              ; preds = %104, %82
  %106 = load i32, i32* @BTN_LEFT, align 4
  %107 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @__set_bit(i32 %106, i32 %109)
  %111 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %112 = load i32, i32* @ABS_X, align 4
  %113 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %114 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @input_set_abs_params(%struct.input_dev* %111, i32 %112, i32 0, i32 %115, i32 0, i32 0)
  %117 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %118 = load i32, i32* @ABS_Y, align 4
  %119 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %120 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @input_set_abs_params(%struct.input_dev* %117, i32 %118, i32 0, i32 %121, i32 0, i32 0)
  %123 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %124 = load i32, i32* @ABS_X, align 4
  %125 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %126 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @input_abs_set_res(%struct.input_dev* %123, i32 %124, i32 %127)
  %129 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %130 = load i32, i32* @ABS_Y, align 4
  %131 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %132 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @input_abs_set_res(%struct.input_dev* %129, i32 %130, i32 %133)
  %135 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %136 = load i32, i32* @ABS_PRESSURE, align 4
  %137 = load i32, i32* @ETP_MAX_PRESSURE, align 4
  %138 = call i32 @input_set_abs_params(%struct.input_dev* %135, i32 %136, i32 0, i32 %137, i32 0, i32 0)
  %139 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %140 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %141 = load i32, i32* @ETP_FINGER_WIDTH, align 4
  %142 = call i32 @input_set_abs_params(%struct.input_dev* %139, i32 %140, i32 0, i32 %141, i32 0, i32 0)
  %143 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %144 = load i32, i32* @ABS_DISTANCE, align 4
  %145 = call i32 @input_set_abs_params(%struct.input_dev* %143, i32 %144, i32 0, i32 1, i32 0, i32 0)
  %146 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %147 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %148 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %149 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @input_set_abs_params(%struct.input_dev* %146, i32 %147, i32 0, i32 %150, i32 0, i32 0)
  %152 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %153 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %154 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %155 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @input_set_abs_params(%struct.input_dev* %152, i32 %153, i32 0, i32 %156, i32 0, i32 0)
  %158 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %159 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %160 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %161 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @input_abs_set_res(%struct.input_dev* %158, i32 %159, i32 %162)
  %164 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %165 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %166 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %167 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @input_abs_set_res(%struct.input_dev* %164, i32 %165, i32 %168)
  %170 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %171 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %172 = load i32, i32* @ETP_MAX_PRESSURE, align 4
  %173 = call i32 @input_set_abs_params(%struct.input_dev* %170, i32 %171, i32 0, i32 %172, i32 0, i32 0)
  %174 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %175 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %176 = load i32, i32* @ETP_FINGER_WIDTH, align 4
  %177 = load i32, i32* %6, align 4
  %178 = mul i32 %176, %177
  %179 = call i32 @input_set_abs_params(%struct.input_dev* %174, i32 %175, i32 0, i32 %178, i32 0, i32 0)
  %180 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %181 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %182 = load i32, i32* @ETP_FINGER_WIDTH, align 4
  %183 = load i32, i32* %7, align 4
  %184 = mul i32 %182, %183
  %185 = call i32 @input_set_abs_params(%struct.input_dev* %180, i32 %181, i32 0, i32 %184, i32 0, i32 0)
  %186 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %187 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %188 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %187, i32 0, i32 2
  store %struct.input_dev* %186, %struct.input_dev** %188, align 8
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %105, %62, %31
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.elan_tp_data*) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
