; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_setup_pen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_setup_pen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w8001 = type { i32, i64, i64, i32, %struct.input_dev* }
%struct.input_dev = type { i32, i32, i32 }
%struct.w8001_coord = type { i64, i64, i64, i64, i64 }

@W8001_CMD_QUERY = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@W8001_PEN_RESOLUTION = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" Penabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w8001*, i8*, i64)* @w8001_setup_pen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w8001_setup_pen(%struct.w8001* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.w8001*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.w8001_coord, align 8
  %10 = alloca i32, align 4
  store %struct.w8001* %0, %struct.w8001** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.w8001*, %struct.w8001** %5, align 8
  %12 = getelementptr inbounds %struct.w8001, %struct.w8001* %11, i32 0, i32 4
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %8, align 8
  %14 = load %struct.w8001*, %struct.w8001** %5, align 8
  %15 = load i32, i32* @W8001_CMD_QUERY, align 4
  %16 = call i32 @w8001_command(%struct.w8001* %14, i32 %15, i32 1)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %121

21:                                               ; preds = %3
  %22 = load i32, i32* @EV_KEY, align 4
  %23 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__set_bit(i32 %22, i32 %25)
  %27 = load i32, i32* @EV_ABS, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__set_bit(i32 %27, i32 %30)
  %32 = load i32, i32* @BTN_TOUCH, align 4
  %33 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__set_bit(i32 %32, i32 %35)
  %37 = load i32, i32* @BTN_TOOL_PEN, align 4
  %38 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__set_bit(i32 %37, i32 %40)
  %42 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %43 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %44 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__set_bit(i32 %42, i32 %45)
  %47 = load i32, i32* @BTN_STYLUS, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__set_bit(i32 %47, i32 %50)
  %52 = load i32, i32* @BTN_STYLUS2, align 4
  %53 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__set_bit(i32 %52, i32 %55)
  %57 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %58 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @__set_bit(i32 %57, i32 %60)
  %62 = load %struct.w8001*, %struct.w8001** %5, align 8
  %63 = getelementptr inbounds %struct.w8001, %struct.w8001* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @parse_pen_data(i32 %64, %struct.w8001_coord* %9)
  %66 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.w8001*, %struct.w8001** %5, align 8
  %69 = getelementptr inbounds %struct.w8001, %struct.w8001* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.w8001*, %struct.w8001** %5, align 8
  %73 = getelementptr inbounds %struct.w8001, %struct.w8001* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %75 = load i32, i32* @ABS_X, align 4
  %76 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @input_set_abs_params(%struct.input_dev* %74, i32 %75, i32 0, i64 %77, i32 0, i32 0)
  %79 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %80 = load i32, i32* @ABS_Y, align 4
  %81 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @input_set_abs_params(%struct.input_dev* %79, i32 %80, i32 0, i64 %82, i32 0, i32 0)
  %84 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %85 = load i32, i32* @ABS_X, align 4
  %86 = load i32, i32* @W8001_PEN_RESOLUTION, align 4
  %87 = call i32 @input_abs_set_res(%struct.input_dev* %84, i32 %85, i32 %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %89 = load i32, i32* @ABS_Y, align 4
  %90 = load i32, i32* @W8001_PEN_RESOLUTION, align 4
  %91 = call i32 @input_abs_set_res(%struct.input_dev* %88, i32 %89, i32 %90)
  %92 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %93 = load i32, i32* @ABS_PRESSURE, align 4
  %94 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @input_set_abs_params(%struct.input_dev* %92, i32 %93, i32 0, i64 %95, i32 0, i32 0)
  %97 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %21
  %101 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %106 = load i32, i32* @ABS_TILT_X, align 4
  %107 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @input_set_abs_params(%struct.input_dev* %105, i32 %106, i32 0, i64 %108, i32 0, i32 0)
  %110 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %111 = load i32, i32* @ABS_TILT_Y, align 4
  %112 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @input_set_abs_params(%struct.input_dev* %110, i32 %111, i32 0, i64 %113, i32 0, i32 0)
  br label %115

115:                                              ; preds = %104, %100, %21
  %116 = load %struct.w8001*, %struct.w8001** %5, align 8
  %117 = getelementptr inbounds %struct.w8001, %struct.w8001* %116, i32 0, i32 0
  store i32 144, i32* %117, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @strlcat(i8* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %119)
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %115, %19
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @w8001_command(%struct.w8001*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @parse_pen_data(i32, %struct.w8001_coord*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
