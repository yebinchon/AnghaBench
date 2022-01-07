; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_setup_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_setup_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w8001 = type { i32, i64, i64, %struct.TYPE_2__*, i32, i64, i64, i32*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32, i32, i32 }
%struct.w8001_touch_query = type { i32, i32, i64, i64 }

@W8001_CMD_TOUCHQUERY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@W8001_PEN_RESOLUTION = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@W8001_PKTLEN_TOUCH93 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" 1FG\00", align 1
@W8001_PKTLEN_TOUCH9A = common dso_local global i32 0, align 4
@W8001_PKTLEN_TOUCH2FG = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to initialize MT slots: %d\0A\00", align 1
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOOL_TYPE = common dso_local global i32 0, align 4
@MT_TOOL_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c" 2FG\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" Touchscreen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w8001*, i8*, i64)* @w8001_setup_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w8001_setup_touch(%struct.w8001* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.w8001*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.w8001_touch_query, align 8
  %10 = alloca i32, align 4
  store %struct.w8001* %0, %struct.w8001** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.w8001*, %struct.w8001** %5, align 8
  %12 = getelementptr inbounds %struct.w8001, %struct.w8001* %11, i32 0, i32 8
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %8, align 8
  %14 = load %struct.w8001*, %struct.w8001** %5, align 8
  %15 = load i32, i32* @W8001_CMD_TOUCHQUERY, align 4
  %16 = call i32 @w8001_command(%struct.w8001* %14, i32 %15, i32 1)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %194

21:                                               ; preds = %3
  %22 = load %struct.w8001*, %struct.w8001** %5, align 8
  %23 = getelementptr inbounds %struct.w8001, %struct.w8001* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %194

31:                                               ; preds = %21
  %32 = load i32, i32* @EV_KEY, align 4
  %33 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__set_bit(i32 %32, i32 %35)
  %37 = load i32, i32* @EV_ABS, align 4
  %38 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__set_bit(i32 %37, i32 %40)
  %42 = load i32, i32* @BTN_TOUCH, align 4
  %43 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %44 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__set_bit(i32 %42, i32 %45)
  %47 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__set_bit(i32 %47, i32 %50)
  %52 = load %struct.w8001*, %struct.w8001** %5, align 8
  %53 = getelementptr inbounds %struct.w8001, %struct.w8001* %52, i32 0, i32 7
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @parse_touchquery(i32* %54, %struct.w8001_touch_query* %9)
  %56 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.w8001*, %struct.w8001** %5, align 8
  %59 = getelementptr inbounds %struct.w8001, %struct.w8001* %58, i32 0, i32 6
  store i64 %57, i64* %59, align 8
  %60 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.w8001*, %struct.w8001** %5, align 8
  %63 = getelementptr inbounds %struct.w8001, %struct.w8001* %62, i32 0, i32 5
  store i64 %61, i64* %63, align 8
  %64 = load %struct.w8001*, %struct.w8001** %5, align 8
  %65 = getelementptr inbounds %struct.w8001, %struct.w8001* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %31
  %69 = load %struct.w8001*, %struct.w8001** %5, align 8
  %70 = getelementptr inbounds %struct.w8001, %struct.w8001* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.w8001*, %struct.w8001** %5, align 8
  %75 = getelementptr inbounds %struct.w8001, %struct.w8001* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 3
  store i64 %76, i64* %77, align 8
  %78 = load %struct.w8001*, %struct.w8001** %5, align 8
  %79 = getelementptr inbounds %struct.w8001, %struct.w8001* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 2
  store i64 %80, i64* %81, align 8
  %82 = load i32, i32* @W8001_PEN_RESOLUTION, align 4
  %83 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %73, %68, %31
  %85 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %86 = load i32, i32* @ABS_X, align 4
  %87 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @input_set_abs_params(%struct.input_dev* %85, i32 %86, i32 0, i64 %88, i32 0, i32 0)
  %90 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %91 = load i32, i32* @ABS_Y, align 4
  %92 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @input_set_abs_params(%struct.input_dev* %90, i32 %91, i32 0, i64 %93, i32 0, i32 0)
  %95 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %96 = load i32, i32* @ABS_X, align 4
  %97 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @input_abs_set_res(%struct.input_dev* %95, i32 %96, i32 %98)
  %100 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %101 = load i32, i32* @ABS_Y, align 4
  %102 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @input_abs_set_res(%struct.input_dev* %100, i32 %101, i32 %103)
  %105 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %190 [
    i32 0, label %107
    i32 2, label %107
    i32 1, label %116
    i32 3, label %116
    i32 4, label %116
    i32 5, label %125
  ]

107:                                              ; preds = %84, %84
  %108 = load i32, i32* @W8001_PKTLEN_TOUCH93, align 4
  %109 = load %struct.w8001*, %struct.w8001** %5, align 8
  %110 = getelementptr inbounds %struct.w8001, %struct.w8001* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.w8001*, %struct.w8001** %5, align 8
  %112 = getelementptr inbounds %struct.w8001, %struct.w8001* %111, i32 0, i32 0
  store i32 147, i32* %112, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @strlcat(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %114)
  br label %190

116:                                              ; preds = %84, %84, %84
  %117 = load i32, i32* @W8001_PKTLEN_TOUCH9A, align 4
  %118 = load %struct.w8001*, %struct.w8001** %5, align 8
  %119 = getelementptr inbounds %struct.w8001, %struct.w8001* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @strlcat(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %121)
  %123 = load %struct.w8001*, %struct.w8001** %5, align 8
  %124 = getelementptr inbounds %struct.w8001, %struct.w8001* %123, i32 0, i32 0
  store i32 154, i32* %124, align 8
  br label %190

125:                                              ; preds = %84
  %126 = load i32, i32* @W8001_PKTLEN_TOUCH2FG, align 4
  %127 = load %struct.w8001*, %struct.w8001** %5, align 8
  %128 = getelementptr inbounds %struct.w8001, %struct.w8001* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %130 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %131 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @__set_bit(i32 %129, i32 %132)
  %134 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %135 = call i32 @input_mt_init_slots(%struct.input_dev* %134, i32 2, i32 0)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %125
  %139 = load %struct.w8001*, %struct.w8001** %5, align 8
  %140 = getelementptr inbounds %struct.w8001, %struct.w8001* %139, i32 0, i32 3
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %4, align 4
  br label %194

146:                                              ; preds = %125
  %147 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %148 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %149 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @input_set_abs_params(%struct.input_dev* %147, i32 %148, i32 0, i64 %150, i32 0, i32 0)
  %152 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %153 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %154 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @input_set_abs_params(%struct.input_dev* %152, i32 %153, i32 0, i64 %155, i32 0, i32 0)
  %157 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %158 = load i32, i32* @ABS_MT_TOOL_TYPE, align 4
  %159 = load i64, i64* @MT_TOOL_MAX, align 8
  %160 = call i32 @input_set_abs_params(%struct.input_dev* %157, i32 %158, i32 0, i64 %159, i32 0, i32 0)
  %161 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %162 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %163 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @input_abs_set_res(%struct.input_dev* %161, i32 %162, i32 %164)
  %166 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %167 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %168 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %9, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @input_abs_set_res(%struct.input_dev* %166, i32 %167, i32 %169)
  %171 = load i8*, i8** %6, align 8
  %172 = load i64, i64* %7, align 8
  %173 = call i32 @strlcat(i8* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %172)
  %174 = load %struct.w8001*, %struct.w8001** %5, align 8
  %175 = getelementptr inbounds %struct.w8001, %struct.w8001* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %146
  %179 = load %struct.w8001*, %struct.w8001** %5, align 8
  %180 = getelementptr inbounds %struct.w8001, %struct.w8001* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.w8001*, %struct.w8001** %5, align 8
  %185 = getelementptr inbounds %struct.w8001, %struct.w8001* %184, i32 0, i32 0
  store i32 227, i32* %185, align 8
  br label %189

186:                                              ; preds = %178, %146
  %187 = load %struct.w8001*, %struct.w8001** %5, align 8
  %188 = getelementptr inbounds %struct.w8001, %struct.w8001* %187, i32 0, i32 0
  store i32 226, i32* %188, align 8
  br label %189

189:                                              ; preds = %186, %183
  br label %190

190:                                              ; preds = %84, %189, %116, %107
  %191 = load i8*, i8** %6, align 8
  %192 = load i64, i64* %7, align 8
  %193 = call i32 @strlcat(i8* %191, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %192)
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %190, %138, %28, %19
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @w8001_command(%struct.w8001*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @parse_touchquery(i32*, %struct.w8001_touch_query*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
