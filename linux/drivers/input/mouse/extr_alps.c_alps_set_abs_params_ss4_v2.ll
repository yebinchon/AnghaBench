; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_set_abs_params_ss4_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_set_abs_params_ss4_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_data = type { i32 }
%struct.input_dev = type { i32 }

@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOOL_QUINTTAP = common dso_local global i32 0, align 4
@MAX_TOUCHES = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@INPUT_MT_TRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alps_data*, %struct.input_dev*)* @alps_set_abs_params_ss4_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_set_abs_params_ss4_v2(%struct.alps_data* %0, %struct.input_dev* %1) #0 {
  %3 = alloca %struct.alps_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  store %struct.alps_data* %0, %struct.alps_data** %3, align 8
  store %struct.input_dev* %1, %struct.input_dev** %4, align 8
  %5 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %7 = call i32 @alps_set_abs_params_mt_common(%struct.alps_data* %5, %struct.input_dev* %6)
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = load i32, i32* @ABS_PRESSURE, align 4
  %10 = call i32 @input_set_abs_params(%struct.input_dev* %8, i32 %9, i32 0, i32 127, i32 0, i32 0)
  %11 = load i32, i32* @BTN_TOOL_QUINTTAP, align 4
  %12 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @set_bit(i32 %11, i32 %14)
  %16 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %17 = load i32, i32* @MAX_TOUCHES, align 4
  %18 = load i32, i32* @INPUT_MT_POINTER, align 4
  %19 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @INPUT_MT_TRACK, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @input_mt_init_slots(%struct.input_dev* %16, i32 %17, i32 %22)
  ret void
}

declare dso_local i32 @alps_set_abs_params_mt_common(%struct.alps_data*, %struct.input_dev*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
