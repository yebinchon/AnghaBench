; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_report_touches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_report_touches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.cyapa_pip_report_data = type { i32*, i32* }

@PIP_NUMBER_OF_TOUCH_OFFSET = common dso_local global i64 0, align 8
@PIP_NUMBER_OF_TOUCH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyapa*, %struct.cyapa_pip_report_data*)* @cyapa_pip_report_touches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyapa_pip_report_touches(%struct.cyapa* %0, %struct.cyapa_pip_report_data* %1) #0 {
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.cyapa_pip_report_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  store %struct.cyapa_pip_report_data* %1, %struct.cyapa_pip_report_data** %4, align 8
  %8 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %9 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %8, i32 0, i32 0
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %5, align 8
  %11 = load %struct.cyapa_pip_report_data*, %struct.cyapa_pip_report_data** %4, align 8
  %12 = getelementptr inbounds %struct.cyapa_pip_report_data, %struct.cyapa_pip_report_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @PIP_NUMBER_OF_TOUCH_OFFSET, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PIP_NUMBER_OF_TOUCH_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %32, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %25 = load %struct.cyapa_pip_report_data*, %struct.cyapa_pip_report_data** %4, align 8
  %26 = getelementptr inbounds %struct.cyapa_pip_report_data, %struct.cyapa_pip_report_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @cyapa_pip_report_slot_data(%struct.cyapa* %24, i32* %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %37 = call i32 @input_mt_sync_frame(%struct.input_dev* %36)
  %38 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %39 = call i32 @input_sync(%struct.input_dev* %38)
  ret void
}

declare dso_local i32 @cyapa_pip_report_slot_data(%struct.cyapa*, i32*) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
