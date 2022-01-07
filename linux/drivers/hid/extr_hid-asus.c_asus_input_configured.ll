; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_input_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_input_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.TYPE_3__*, %struct.input_dev* }
%struct.TYPE_3__ = type { i64 }
%struct.input_dev = type { i32, i32 }
%struct.asus_drvdata = type { i32, i64, %struct.input_dev*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@QUIRK_T100CHI = common dso_local global i32 0, align 4
@T100CHI_MOUSE_REPORT_ID = common dso_local global i64 0, align 8
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@MAX_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@MAX_PRESSURE = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@INPUT_PROP_BUTTONPAD = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Asus input mt init slots failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to initialize backlight.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*)* @asus_input_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_input_configured(%struct.hid_device* %0, %struct.hid_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_input*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.asus_drvdata*, align 8
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_input* %1, %struct.hid_input** %5, align 8
  %9 = load %struct.hid_input*, %struct.hid_input** %5, align 8
  %10 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %9, i32 0, i32 1
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %6, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = call %struct.asus_drvdata* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.asus_drvdata* %13, %struct.asus_drvdata** %7, align 8
  %14 = load %struct.asus_drvdata*, %struct.asus_drvdata** %7, align 8
  %15 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @QUIRK_T100CHI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.hid_input*, %struct.hid_input** %5, align 8
  %22 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @T100CHI_MOUSE_REPORT_ID, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %133

29:                                               ; preds = %20, %2
  %30 = load %struct.asus_drvdata*, %struct.asus_drvdata** %7, align 8
  %31 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %113

34:                                               ; preds = %29
  %35 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %36 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %37 = load %struct.asus_drvdata*, %struct.asus_drvdata** %7, align 8
  %38 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @input_set_abs_params(%struct.input_dev* %35, i32 %36, i32 0, i32 %41, i32 0, i32 0)
  %43 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %44 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %45 = load %struct.asus_drvdata*, %struct.asus_drvdata** %7, align 8
  %46 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @input_set_abs_params(%struct.input_dev* %43, i32 %44, i32 0, i32 %49, i32 0, i32 0)
  %51 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %52 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %53 = load %struct.asus_drvdata*, %struct.asus_drvdata** %7, align 8
  %54 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @input_abs_set_res(%struct.input_dev* %51, i32 %52, i32 %57)
  %59 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %60 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %61 = load %struct.asus_drvdata*, %struct.asus_drvdata** %7, align 8
  %62 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @input_abs_set_res(%struct.input_dev* %59, i32 %60, i32 %65)
  %67 = load %struct.asus_drvdata*, %struct.asus_drvdata** %7, align 8
  %68 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %71, 5
  br i1 %72, label %73, label %86

73:                                               ; preds = %34
  %74 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %75 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %76 = load i32, i32* @MAX_TOUCH_MAJOR, align 4
  %77 = call i32 @input_set_abs_params(%struct.input_dev* %74, i32 %75, i32 0, i32 %76, i32 0, i32 0)
  %78 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %79 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %80 = load i32, i32* @MAX_TOUCH_MAJOR, align 4
  %81 = call i32 @input_set_abs_params(%struct.input_dev* %78, i32 %79, i32 0, i32 %80, i32 0, i32 0)
  %82 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %83 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %84 = load i32, i32* @MAX_PRESSURE, align 4
  %85 = call i32 @input_set_abs_params(%struct.input_dev* %82, i32 %83, i32 0, i32 %84, i32 0, i32 0)
  br label %86

86:                                               ; preds = %73, %34
  %87 = load i32, i32* @BTN_LEFT, align 4
  %88 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @__set_bit(i32 %87, i32 %90)
  %92 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %93 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %94 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @__set_bit(i32 %92, i32 %95)
  %97 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %98 = load %struct.asus_drvdata*, %struct.asus_drvdata** %7, align 8
  %99 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @INPUT_MT_POINTER, align 4
  %104 = call i32 @input_mt_init_slots(%struct.input_dev* %97, i32 %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %86
  %108 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @hid_err(%struct.hid_device* %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %133

112:                                              ; preds = %86
  br label %113

113:                                              ; preds = %112, %29
  %114 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %115 = load %struct.asus_drvdata*, %struct.asus_drvdata** %7, align 8
  %116 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %115, i32 0, i32 2
  store %struct.input_dev* %114, %struct.input_dev** %116, align 8
  %117 = load %struct.asus_drvdata*, %struct.asus_drvdata** %7, align 8
  %118 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %113
  %122 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %123 = call i32 @asus_kbd_wmi_led_control_present(%struct.hid_device* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %121
  %126 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %127 = call i64 @asus_kbd_register_leds(%struct.hid_device* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %131 = call i32 @hid_warn(%struct.hid_device* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %125, %121, %113
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %107, %28
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.asus_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @asus_kbd_wmi_led_control_present(%struct.hid_device*) #1

declare dso_local i64 @asus_kbd_register_leds(%struct.hid_device*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
