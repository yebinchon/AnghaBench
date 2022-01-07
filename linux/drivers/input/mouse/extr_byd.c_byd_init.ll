; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_byd.c_byd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_byd.c_byd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i64, i32, i32, i32, %struct.byd_data*, %struct.input_dev* }
%struct.byd_data = type { i32, %struct.psmouse* }
%struct.input_dev = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@byd_clear_touch = common dso_local global i32 0, align 4
@byd_disconnect = common dso_local global i32 0, align 4
@byd_reconnect = common dso_local global i32 0, align 4
@byd_process_byte = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@BYD_PAD_WIDTH = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BYD_PAD_HEIGHT = common dso_local global i32 0, align 4
@BYD_PAD_RESOLUTION = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @byd_init(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.byd_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 6
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %4, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = call i64 @psmouse_reset(%struct.psmouse* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %120

15:                                               ; preds = %1
  %16 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %17 = call i64 @byd_reset_touchpad(%struct.psmouse* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %120

22:                                               ; preds = %15
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.byd_data* @kzalloc(i32 16, i32 %23)
  store %struct.byd_data* %24, %struct.byd_data** %5, align 8
  %25 = load %struct.byd_data*, %struct.byd_data** %5, align 8
  %26 = icmp ne %struct.byd_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %120

30:                                               ; preds = %22
  %31 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %32 = load %struct.byd_data*, %struct.byd_data** %5, align 8
  %33 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %32, i32 0, i32 1
  store %struct.psmouse* %31, %struct.psmouse** %33, align 8
  %34 = load %struct.byd_data*, %struct.byd_data** %5, align 8
  %35 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %34, i32 0, i32 0
  %36 = load i32, i32* @byd_clear_touch, align 4
  %37 = call i32 @timer_setup(i32* %35, i32 %36, i32 0)
  %38 = load %struct.byd_data*, %struct.byd_data** %5, align 8
  %39 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %40 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %39, i32 0, i32 5
  store %struct.byd_data* %38, %struct.byd_data** %40, align 8
  %41 = load i32, i32* @byd_disconnect, align 4
  %42 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %43 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @byd_reconnect, align 4
  %45 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %46 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @byd_process_byte, align 4
  %48 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %49 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %51 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %50, i32 0, i32 0
  store i32 4, i32* %51, align 8
  %52 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %53 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @__set_bit(i32 %54, i32 %57)
  %59 = load i32, i32* @BTN_TOUCH, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @__set_bit(i32 %59, i32 %62)
  %64 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__set_bit(i32 %64, i32 %67)
  %69 = load i32, i32* @BTN_LEFT, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @__set_bit(i32 %69, i32 %72)
  %74 = load i32, i32* @BTN_RIGHT, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @__set_bit(i32 %74, i32 %77)
  %79 = load i32, i32* @BTN_MIDDLE, align 4
  %80 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @__clear_bit(i32 %79, i32 %82)
  %84 = load i32, i32* @EV_ABS, align 4
  %85 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__set_bit(i32 %84, i32 %87)
  %89 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %90 = load i32, i32* @ABS_X, align 4
  %91 = load i32, i32* @BYD_PAD_WIDTH, align 4
  %92 = call i32 @input_set_abs_params(%struct.input_dev* %89, i32 %90, i32 0, i32 %91, i32 0, i32 0)
  %93 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %94 = load i32, i32* @ABS_Y, align 4
  %95 = load i32, i32* @BYD_PAD_HEIGHT, align 4
  %96 = call i32 @input_set_abs_params(%struct.input_dev* %93, i32 %94, i32 0, i32 %95, i32 0, i32 0)
  %97 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %98 = load i32, i32* @ABS_X, align 4
  %99 = load i32, i32* @BYD_PAD_RESOLUTION, align 4
  %100 = call i32 @input_abs_set_res(%struct.input_dev* %97, i32 %98, i32 %99)
  %101 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %102 = load i32, i32* @ABS_Y, align 4
  %103 = load i32, i32* @BYD_PAD_RESOLUTION, align 4
  %104 = call i32 @input_abs_set_res(%struct.input_dev* %101, i32 %102, i32 %103)
  %105 = load i32, i32* @EV_REL, align 4
  %106 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @__clear_bit(i32 %105, i32 %108)
  %110 = load i32, i32* @REL_X, align 4
  %111 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @__clear_bit(i32 %110, i32 %113)
  %115 = load i32, i32* @REL_Y, align 4
  %116 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @__clear_bit(i32 %115, i32 %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %30, %27, %19, %12
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i64 @byd_reset_touchpad(%struct.psmouse*) #1

declare dso_local %struct.byd_data* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
