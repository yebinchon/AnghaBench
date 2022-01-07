; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_set_input_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_set_input_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32, i32 }
%struct.cytp_data = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@CYTP_MAX_MT_SLOTS = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@INPUT_MT_TRACK = common dso_local global i32 0, align 4
@INPUT_PROP_SEMI_MT = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_QUADTAP = common dso_local global i32 0, align 4
@BTN_TOOL_QUINTTAP = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.cytp_data*)* @cypress_set_input_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_set_input_params(%struct.input_dev* %0, %struct.cytp_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.cytp_data*, align 8
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.cytp_data* %1, %struct.cytp_data** %5, align 8
  %7 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %8 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %13 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %169

19:                                               ; preds = %11
  %20 = load i32, i32* @EV_ABS, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__set_bit(i32 %20, i32 %23)
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = load i32, i32* @ABS_X, align 4
  %27 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %28 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @input_set_abs_params(%struct.input_dev* %25, i32 %26, i32 0, i32 %29, i32 0, i32 0)
  %31 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %32 = load i32, i32* @ABS_Y, align 4
  %33 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %34 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @input_set_abs_params(%struct.input_dev* %31, i32 %32, i32 0, i32 %35, i32 0, i32 0)
  %37 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %38 = load i32, i32* @ABS_PRESSURE, align 4
  %39 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %40 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %43 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @input_set_abs_params(%struct.input_dev* %37, i32 %38, i32 %41, i32 %44, i32 0, i32 0)
  %46 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %47 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %48 = call i32 @input_set_abs_params(%struct.input_dev* %46, i32 %47, i32 0, i32 255, i32 0, i32 0)
  %49 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %50 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %51 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %52 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @input_set_abs_params(%struct.input_dev* %49, i32 %50, i32 0, i32 %53, i32 0, i32 0)
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %57 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %58 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @input_set_abs_params(%struct.input_dev* %55, i32 %56, i32 0, i32 %59, i32 0, i32 0)
  %61 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %62 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %63 = call i32 @input_set_abs_params(%struct.input_dev* %61, i32 %62, i32 0, i32 255, i32 0, i32 0)
  %64 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %65 = load i32, i32* @CYTP_MAX_MT_SLOTS, align 4
  %66 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %67 = load i32, i32* @INPUT_MT_TRACK, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @input_mt_init_slots(%struct.input_dev* %64, i32 %65, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %19
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %169

74:                                               ; preds = %19
  %75 = load i32, i32* @INPUT_PROP_SEMI_MT, align 4
  %76 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @__set_bit(i32 %75, i32 %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %81 = load i32, i32* @ABS_X, align 4
  %82 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %83 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @input_abs_set_res(%struct.input_dev* %80, i32 %81, i32 %84)
  %86 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %87 = load i32, i32* @ABS_Y, align 4
  %88 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %89 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @input_abs_set_res(%struct.input_dev* %86, i32 %87, i32 %90)
  %92 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %93 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %94 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %95 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @input_abs_set_res(%struct.input_dev* %92, i32 %93, i32 %96)
  %98 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %99 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %100 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %101 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @input_abs_set_res(%struct.input_dev* %98, i32 %99, i32 %102)
  %104 = load i32, i32* @BTN_TOUCH, align 4
  %105 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %106 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @__set_bit(i32 %104, i32 %107)
  %109 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %110 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @__set_bit(i32 %109, i32 %112)
  %114 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %115 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %116 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @__set_bit(i32 %114, i32 %117)
  %119 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %120 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @__set_bit(i32 %119, i32 %122)
  %124 = load i32, i32* @BTN_TOOL_QUADTAP, align 4
  %125 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %126 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @__set_bit(i32 %124, i32 %127)
  %129 = load i32, i32* @BTN_TOOL_QUINTTAP, align 4
  %130 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %131 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @__set_bit(i32 %129, i32 %132)
  %134 = load i32, i32* @EV_REL, align 4
  %135 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %136 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @__clear_bit(i32 %134, i32 %137)
  %139 = load i32, i32* @REL_X, align 4
  %140 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %141 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @__clear_bit(i32 %139, i32 %142)
  %144 = load i32, i32* @REL_Y, align 4
  %145 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %146 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @__clear_bit(i32 %144, i32 %147)
  %149 = load i32, i32* @EV_KEY, align 4
  %150 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %151 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @__set_bit(i32 %149, i32 %152)
  %154 = load i32, i32* @BTN_LEFT, align 4
  %155 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %156 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @__set_bit(i32 %154, i32 %157)
  %159 = load i32, i32* @BTN_RIGHT, align 4
  %160 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %161 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @__set_bit(i32 %159, i32 %162)
  %164 = load i32, i32* @BTN_MIDDLE, align 4
  %165 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %166 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @__set_bit(i32 %164, i32 %167)
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %74, %72, %16
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
