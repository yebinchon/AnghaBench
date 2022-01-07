; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_set_abs_params_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_set_abs_params_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_data = type { i32, i32 }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alps_data*, %struct.input_dev*)* @alps_set_abs_params_st to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_set_abs_params_st(%struct.alps_data* %0, %struct.input_dev* %1) #0 {
  %3 = alloca %struct.alps_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  store %struct.alps_data* %0, %struct.alps_data** %3, align 8
  store %struct.input_dev* %1, %struct.input_dev** %4, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %6 = load i32, i32* @ABS_X, align 4
  %7 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %8 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @input_set_abs_params(%struct.input_dev* %5, i32 %6, i32 0, i32 %9, i32 0, i32 0)
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = load i32, i32* @ABS_Y, align 4
  %13 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %14 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @input_set_abs_params(%struct.input_dev* %11, i32 %12, i32 0, i32 %15, i32 0, i32 0)
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = load i32, i32* @ABS_PRESSURE, align 4
  %19 = call i32 @input_set_abs_params(%struct.input_dev* %17, i32 %18, i32 0, i32 127, i32 0, i32 0)
  ret void
}

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
