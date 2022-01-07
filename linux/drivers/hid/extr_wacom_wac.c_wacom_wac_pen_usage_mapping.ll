; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_pen_usage_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_pen_usage_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.input_dev*, %struct.wacom_features }
%struct.input_dev = type { i32 }
%struct.wacom_features = type { i32, i32 }

@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@WACOM_QUIRK_TOOLSERIAL = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@WACOM_QUIRK_SENSE = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@WACOM_QUIRK_AESPEN = common dso_local global i32 0, align 4
@BTN_TOOL_BRUSH = common dso_local global i32 0, align 4
@BTN_TOOL_PENCIL = common dso_local global i32 0, align 4
@BTN_TOOL_AIRBRUSH = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_DIRECT = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i32 0, align 4
@BTN_TOOL_LENS = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)* @wacom_wac_pen_usage_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_pen_usage_mapping(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_field*, align 8
  %6 = alloca %struct.hid_usage*, align 8
  %7 = alloca %struct.wacom*, align 8
  %8 = alloca %struct.wacom_wac*, align 8
  %9 = alloca %struct.wacom_features*, align 8
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_field* %1, %struct.hid_field** %5, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %6, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.wacom* %13, %struct.wacom** %7, align 8
  %14 = load %struct.wacom*, %struct.wacom** %7, align 8
  %15 = getelementptr inbounds %struct.wacom, %struct.wacom* %14, i32 0, i32 0
  store %struct.wacom_wac* %15, %struct.wacom_wac** %8, align 8
  %16 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %17 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %16, i32 0, i32 1
  store %struct.wacom_features* %17, %struct.wacom_features** %9, align 8
  %18 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %19 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %18, i32 0, i32 0
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %10, align 8
  %21 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %22 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wacom_equivalent_usage(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %197 [
    i32 134, label %26
    i32 133, label %33
    i32 131, label %40
    i32 132, label %40
    i32 138, label %47
    i32 142, label %54
    i32 141, label %61
    i32 140, label %68
    i32 139, label %75
    i32 135, label %82
    i32 143, label %89
    i32 137, label %89
    i32 145, label %96
    i32 144, label %103
    i32 136, label %110
    i32 129, label %122
    i32 128, label %134
    i32 130, label %190
  ]

26:                                               ; preds = %3
  %27 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %28 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %29 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %30 = load i32, i32* @EV_ABS, align 4
  %31 = load i32, i32* @ABS_X, align 4
  %32 = call i32 @wacom_map_usage(%struct.input_dev* %27, %struct.hid_usage* %28, %struct.hid_field* %29, i32 %30, i32 %31, i32 4)
  br label %197

33:                                               ; preds = %3
  %34 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %35 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %36 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %37 = load i32, i32* @EV_ABS, align 4
  %38 = load i32, i32* @ABS_Y, align 4
  %39 = call i32 @wacom_map_usage(%struct.input_dev* %34, %struct.hid_usage* %35, %struct.hid_field* %36, i32 %37, i32 %38, i32 4)
  br label %197

40:                                               ; preds = %3, %3
  %41 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %42 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %43 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %44 = load i32, i32* @EV_ABS, align 4
  %45 = load i32, i32* @ABS_DISTANCE, align 4
  %46 = call i32 @wacom_map_usage(%struct.input_dev* %41, %struct.hid_usage* %42, %struct.hid_field* %43, i32 %44, i32 %45, i32 0)
  br label %197

47:                                               ; preds = %3
  %48 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %49 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %50 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %51 = load i32, i32* @EV_ABS, align 4
  %52 = load i32, i32* @ABS_PRESSURE, align 4
  %53 = call i32 @wacom_map_usage(%struct.input_dev* %48, %struct.hid_usage* %49, %struct.hid_field* %50, i32 %51, i32 %52, i32 0)
  br label %197

54:                                               ; preds = %3
  %55 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %56 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %57 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %58 = load i32, i32* @EV_KEY, align 4
  %59 = load i32, i32* @BTN_TOOL_PEN, align 4
  %60 = call i32 @wacom_map_usage(%struct.input_dev* %55, %struct.hid_usage* %56, %struct.hid_field* %57, i32 %58, i32 %59, i32 0)
  br label %197

61:                                               ; preds = %3
  %62 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %63 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %64 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %65 = load i32, i32* @EV_KEY, align 4
  %66 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %67 = call i32 @wacom_map_usage(%struct.input_dev* %62, %struct.hid_usage* %63, %struct.hid_field* %64, i32 %65, i32 %66, i32 0)
  br label %197

68:                                               ; preds = %3
  %69 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %70 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %71 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %72 = load i32, i32* @EV_ABS, align 4
  %73 = load i32, i32* @ABS_TILT_X, align 4
  %74 = call i32 @wacom_map_usage(%struct.input_dev* %69, %struct.hid_usage* %70, %struct.hid_field* %71, i32 %72, i32 %73, i32 0)
  br label %197

75:                                               ; preds = %3
  %76 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %77 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %78 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %79 = load i32, i32* @EV_ABS, align 4
  %80 = load i32, i32* @ABS_TILT_Y, align 4
  %81 = call i32 @wacom_map_usage(%struct.input_dev* %76, %struct.hid_usage* %77, %struct.hid_field* %78, i32 %79, i32 %80, i32 0)
  br label %197

82:                                               ; preds = %3
  %83 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %84 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %85 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %86 = load i32, i32* @EV_ABS, align 4
  %87 = load i32, i32* @ABS_Z, align 4
  %88 = call i32 @wacom_map_usage(%struct.input_dev* %83, %struct.hid_usage* %84, %struct.hid_field* %85, i32 %86, i32 %87, i32 0)
  br label %197

89:                                               ; preds = %3, %3
  %90 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %91 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %92 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %93 = load i32, i32* @EV_KEY, align 4
  %94 = load i32, i32* @BTN_TOUCH, align 4
  %95 = call i32 @wacom_map_usage(%struct.input_dev* %90, %struct.hid_usage* %91, %struct.hid_field* %92, i32 %93, i32 %94, i32 0)
  br label %197

96:                                               ; preds = %3
  %97 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %98 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %99 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %100 = load i32, i32* @EV_KEY, align 4
  %101 = load i32, i32* @BTN_STYLUS, align 4
  %102 = call i32 @wacom_map_usage(%struct.input_dev* %97, %struct.hid_usage* %98, %struct.hid_field* %99, i32 %100, i32 %101, i32 0)
  br label %197

103:                                              ; preds = %3
  %104 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %105 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %106 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %107 = load i32, i32* @EV_KEY, align 4
  %108 = load i32, i32* @BTN_STYLUS2, align 4
  %109 = call i32 @wacom_map_usage(%struct.input_dev* %104, %struct.hid_usage* %105, %struct.hid_field* %106, i32 %107, i32 %108, i32 0)
  br label %197

110:                                              ; preds = %3
  %111 = load i32, i32* @WACOM_QUIRK_TOOLSERIAL, align 4
  %112 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %113 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %117 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %118 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %119 = load i32, i32* @EV_MSC, align 4
  %120 = load i32, i32* @MSC_SERIAL, align 4
  %121 = call i32 @wacom_map_usage(%struct.input_dev* %116, %struct.hid_usage* %117, %struct.hid_field* %118, i32 %119, i32 %120, i32 0)
  br label %197

122:                                              ; preds = %3
  %123 = load i32, i32* @WACOM_QUIRK_SENSE, align 4
  %124 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %125 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %129 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %130 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %131 = load i32, i32* @EV_KEY, align 4
  %132 = load i32, i32* @BTN_TOOL_PEN, align 4
  %133 = call i32 @wacom_map_usage(%struct.input_dev* %128, %struct.hid_usage* %129, %struct.hid_field* %130, i32 %131, i32 %132, i32 0)
  br label %197

134:                                              ; preds = %3
  %135 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %136 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %137 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %138 = load i32, i32* @EV_ABS, align 4
  %139 = load i32, i32* @ABS_MISC, align 4
  %140 = call i32 @wacom_map_usage(%struct.input_dev* %135, %struct.hid_usage* %136, %struct.hid_field* %137, i32 %138, i32 %139, i32 0)
  %141 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %142 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @WACOM_QUIRK_AESPEN, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %189, label %147

147:                                              ; preds = %134
  %148 = load i32, i32* @EV_KEY, align 4
  %149 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %150 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @set_bit(i32 %148, i32 %151)
  %153 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %154 = load i32, i32* @EV_KEY, align 4
  %155 = load i32, i32* @BTN_TOOL_PEN, align 4
  %156 = call i32 @input_set_capability(%struct.input_dev* %153, i32 %154, i32 %155)
  %157 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %158 = load i32, i32* @EV_KEY, align 4
  %159 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %160 = call i32 @input_set_capability(%struct.input_dev* %157, i32 %158, i32 %159)
  %161 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %162 = load i32, i32* @EV_KEY, align 4
  %163 = load i32, i32* @BTN_TOOL_BRUSH, align 4
  %164 = call i32 @input_set_capability(%struct.input_dev* %161, i32 %162, i32 %163)
  %165 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %166 = load i32, i32* @EV_KEY, align 4
  %167 = load i32, i32* @BTN_TOOL_PENCIL, align 4
  %168 = call i32 @input_set_capability(%struct.input_dev* %165, i32 %166, i32 %167)
  %169 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %170 = load i32, i32* @EV_KEY, align 4
  %171 = load i32, i32* @BTN_TOOL_AIRBRUSH, align 4
  %172 = call i32 @input_set_capability(%struct.input_dev* %169, i32 %170, i32 %171)
  %173 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %174 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @WACOM_DEVICETYPE_DIRECT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %147
  %180 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %181 = load i32, i32* @EV_KEY, align 4
  %182 = load i32, i32* @BTN_TOOL_MOUSE, align 4
  %183 = call i32 @input_set_capability(%struct.input_dev* %180, i32 %181, i32 %182)
  %184 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %185 = load i32, i32* @EV_KEY, align 4
  %186 = load i32, i32* @BTN_TOOL_LENS, align 4
  %187 = call i32 @input_set_capability(%struct.input_dev* %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %179, %147
  br label %189

189:                                              ; preds = %188, %134
  br label %197

190:                                              ; preds = %3
  %191 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %192 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %193 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %194 = load i32, i32* @EV_ABS, align 4
  %195 = load i32, i32* @ABS_WHEEL, align 4
  %196 = call i32 @wacom_map_usage(%struct.input_dev* %191, %struct.hid_usage* %192, %struct.hid_field* %193, i32 %194, i32 %195, i32 0)
  br label %197

197:                                              ; preds = %3, %190, %189, %122, %110, %103, %96, %89, %82, %75, %68, %61, %54, %47, %40, %33, %26
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_equivalent_usage(i32) #1

declare dso_local i32 @wacom_map_usage(%struct.input_dev*, %struct.hid_usage*, %struct.hid_field*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
