; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_set_input_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_set_input_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.fsp_data*, %struct.input_dev* }
%struct.fsp_data = type { i64 }
%struct.input_dev = type { i32, i32, i32, i32 }

@FSP_VER_STL3888_C0 = common dso_local global i64 0, align 8
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@INPUT_PROP_SEMI_MT = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @fsp_set_input_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_set_input_params(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.fsp_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 1
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %3, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  %12 = load %struct.fsp_data*, %struct.fsp_data** %11, align 8
  store %struct.fsp_data* %12, %struct.fsp_data** %4, align 8
  %13 = load %struct.fsp_data*, %struct.fsp_data** %4, align 8
  %14 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FSP_VER_STL3888_C0, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = load i32, i32* @BTN_MIDDLE, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__set_bit(i32 %19, i32 %22)
  %24 = load i32, i32* @BTN_BACK, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__set_bit(i32 %24, i32 %27)
  %29 = load i32, i32* @BTN_FORWARD, align 4
  %30 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__set_bit(i32 %29, i32 %32)
  %34 = load i32, i32* @REL_WHEEL, align 4
  %35 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__set_bit(i32 %34, i32 %37)
  %39 = load i32, i32* @REL_HWHEEL, align 4
  %40 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__set_bit(i32 %39, i32 %42)
  br label %93

44:                                               ; preds = %1
  store i32 967, i32* %5, align 4
  store i32 711, i32* %6, align 4
  %45 = load i32, i32* @EV_ABS, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__set_bit(i32 %45, i32 %48)
  %50 = load i32, i32* @EV_REL, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__clear_bit(i32 %50, i32 %53)
  %55 = load i32, i32* @BTN_TOUCH, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__set_bit(i32 %55, i32 %58)
  %60 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %61 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__set_bit(i32 %60, i32 %63)
  %65 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %66 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @__set_bit(i32 %65, i32 %68)
  %70 = load i32, i32* @INPUT_PROP_SEMI_MT, align 4
  %71 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %72 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @__set_bit(i32 %70, i32 %73)
  %75 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %76 = load i32, i32* @ABS_X, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @input_set_abs_params(%struct.input_dev* %75, i32 %76, i32 0, i32 %77, i32 0, i32 0)
  %79 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %80 = load i32, i32* @ABS_Y, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @input_set_abs_params(%struct.input_dev* %79, i32 %80, i32 0, i32 %81, i32 0, i32 0)
  %83 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %84 = call i32 @input_mt_init_slots(%struct.input_dev* %83, i32 2, i32 0)
  %85 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %86 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @input_set_abs_params(%struct.input_dev* %85, i32 %86, i32 0, i32 %87, i32 0, i32 0)
  %89 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %90 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @input_set_abs_params(%struct.input_dev* %89, i32 %90, i32 0, i32 %91, i32 0, i32 0)
  br label %93

93:                                               ; preds = %44, %18
  ret i32 0
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
