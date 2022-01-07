; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_report_proximity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_report_proximity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.cyapa_pip_report_data = type { i32* }

@PIP_PROXIMITY_DISTANCE_OFFSET = common dso_local global i64 0, align 8
@PIP_PROXIMITY_DISTANCE_MASK = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyapa*, %struct.cyapa_pip_report_data*)* @cyapa_pip_report_proximity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyapa_pip_report_proximity(%struct.cyapa* %0, %struct.cyapa_pip_report_data* %1) #0 {
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.cyapa_pip_report_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  store %struct.cyapa_pip_report_data* %1, %struct.cyapa_pip_report_data** %4, align 8
  %7 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %8 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %7, i32 0, i32 0
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  %10 = load %struct.cyapa_pip_report_data*, %struct.cyapa_pip_report_data** %4, align 8
  %11 = getelementptr inbounds %struct.cyapa_pip_report_data, %struct.cyapa_pip_report_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @PIP_PROXIMITY_DISTANCE_OFFSET, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PIP_PROXIMITY_DISTANCE_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %19 = load i32, i32* @ABS_DISTANCE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @input_report_abs(%struct.input_dev* %18, i32 %19, i32 %20)
  %22 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %23 = call i32 @input_sync(%struct.input_dev* %22)
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
