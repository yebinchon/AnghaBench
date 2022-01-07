; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_register_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_register_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { %struct.TYPE_15__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_15__ = type { i8*, i8*, %struct.TYPE_12__, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.wm97xx_pdata*, i32 }
%struct.wm97xx_pdata = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"wm97xx touchscreen\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"wm97xx\00", align 1
@wm97xx_ts_input_open = common dso_local global i32 0, align 4
@wm97xx_ts_input_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@abs_x = common dso_local global i32* null, align 8
@ABS_Y = common dso_local global i32 0, align 4
@abs_y = common dso_local global i32* null, align 8
@ABS_PRESSURE = common dso_local global i32 0, align 4
@abs_p = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"wm97xx-touch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*)* @wm97xx_register_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_register_touch(%struct.wm97xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca %struct.wm97xx_pdata*, align 8
  %5 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %3, align 8
  %6 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %7 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.wm97xx_pdata* @dev_get_platdata(i32 %8)
  store %struct.wm97xx_pdata* %9, %struct.wm97xx_pdata** %4, align 8
  %10 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %11 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_15__* @devm_input_allocate_device(i32 %12)
  %14 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %15 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %14, i32 0, i32 0
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %15, align 8
  %16 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %17 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = icmp eq %struct.TYPE_15__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %178

23:                                               ; preds = %1
  %24 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %25 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %29 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @wm97xx_ts_input_open, align 4
  %33 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %34 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %33, i32 0, i32 0
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 6
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* @wm97xx_ts_input_close, align 4
  %38 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %39 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 5
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @EV_ABS, align 4
  %43 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %44 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @__set_bit(i32 %42, i32 %47)
  %49 = load i32, i32* @EV_KEY, align 4
  %50 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %51 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @__set_bit(i32 %49, i32 %54)
  %56 = load i32, i32* @BTN_TOUCH, align 4
  %57 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %58 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @__set_bit(i32 %56, i32 %61)
  %63 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %64 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = load i32, i32* @ABS_X, align 4
  %67 = load i32*, i32** @abs_x, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** @abs_x, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @abs_x, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @input_set_abs_params(%struct.TYPE_15__* %65, i32 %66, i32 %69, i32 %72, i32 %75, i32 0)
  %77 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %78 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = load i32, i32* @ABS_Y, align 4
  %81 = load i32*, i32** @abs_y, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** @abs_y, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** @abs_y, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @input_set_abs_params(%struct.TYPE_15__* %79, i32 %80, i32 %83, i32 %86, i32 %89, i32 0)
  %91 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %92 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = load i32, i32* @ABS_PRESSURE, align 4
  %95 = load i32*, i32** @abs_p, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** @abs_p, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** @abs_p, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @input_set_abs_params(%struct.TYPE_15__* %93, i32 %94, i32 %97, i32 %100, i32 %103, i32 0)
  %105 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %106 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %105, i32 0, i32 0
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %109 = call i32 @input_set_drvdata(%struct.TYPE_15__* %107, %struct.wm97xx* %108)
  %110 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %111 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %114 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %113, i32 0, i32 0
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 8
  %118 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %119 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = call i32 @input_register_device(%struct.TYPE_15__* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %23
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %178

126:                                              ; preds = %23
  %127 = call %struct.TYPE_14__* @platform_device_alloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %128 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %129 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %128, i32 0, i32 1
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %129, align 8
  %130 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %131 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %130, i32 0, i32 1
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = icmp ne %struct.TYPE_14__* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %126
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %170

137:                                              ; preds = %126
  %138 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %139 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %138, i32 0, i32 1
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %142 = call i32 @platform_set_drvdata(%struct.TYPE_14__* %140, %struct.wm97xx* %141)
  %143 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %144 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %147 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %146, i32 0, i32 1
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  store i32 %145, i32* %150, align 8
  %151 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %4, align 8
  %152 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %153 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  store %struct.wm97xx_pdata* %151, %struct.wm97xx_pdata** %156, align 8
  %157 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %158 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %157, i32 0, i32 1
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = call i32 @platform_device_add(%struct.TYPE_14__* %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %137
  br label %165

164:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %178

165:                                              ; preds = %163
  %166 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %167 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %166, i32 0, i32 1
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = call i32 @platform_device_put(%struct.TYPE_14__* %168)
  br label %170

170:                                              ; preds = %165, %134
  %171 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %172 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %171, i32 0, i32 0
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %172, align 8
  %174 = call i32 @input_unregister_device(%struct.TYPE_15__* %173)
  %175 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %176 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %175, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %176, align 8
  %177 = load i32, i32* %5, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %170, %164, %124, %20
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.wm97xx_pdata* @dev_get_platdata(i32) #1

declare dso_local %struct.TYPE_15__* @devm_input_allocate_device(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_15__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_15__*, %struct.wm97xx*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.TYPE_14__*, %struct.wm97xx*) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_14__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_14__*) #1

declare dso_local i32 @input_unregister_device(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
