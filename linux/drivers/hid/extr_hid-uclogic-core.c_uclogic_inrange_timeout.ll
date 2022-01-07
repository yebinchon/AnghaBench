; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-core.c_uclogic_inrange_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-core.c_uclogic_inrange_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uclogic_drvdata = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.timer_list = type { i32 }

@inrange_timer = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@drvdata = common dso_local global %struct.uclogic_drvdata* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @uclogic_inrange_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uclogic_inrange_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.uclogic_drvdata*, align 8
  %4 = alloca %struct.input_dev*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.uclogic_drvdata*, %struct.uclogic_drvdata** %3, align 8
  %6 = ptrtoint %struct.uclogic_drvdata* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @inrange_timer, align 4
  %9 = call %struct.uclogic_drvdata* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.uclogic_drvdata* %9, %struct.uclogic_drvdata** %3, align 8
  %10 = load %struct.uclogic_drvdata*, %struct.uclogic_drvdata** %3, align 8
  %11 = getelementptr inbounds %struct.uclogic_drvdata, %struct.uclogic_drvdata* %10, i32 0, i32 0
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %14 = icmp eq %struct.input_dev* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = load i32, i32* @ABS_PRESSURE, align 4
  %19 = call i32 @input_report_abs(%struct.input_dev* %17, i32 %18, i32 0)
  %20 = load i32, i32* @BTN_TOUCH, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @test_bit(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %28 = load i32, i32* @EV_MSC, align 4
  %29 = load i32, i32* @MSC_SCAN, align 4
  %30 = call i32 @input_event(%struct.input_dev* %27, i32 %28, i32 %29, i32 852034)
  %31 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %32 = load i32, i32* @BTN_TOUCH, align 4
  %33 = call i32 @input_report_key(%struct.input_dev* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %26, %16
  %35 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %36 = load i32, i32* @BTN_TOOL_PEN, align 4
  %37 = call i32 @input_report_key(%struct.input_dev* %35, i32 %36, i32 0)
  %38 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %39 = call i32 @input_sync(%struct.input_dev* %38)
  br label %40

40:                                               ; preds = %34, %15
  ret void
}

declare dso_local %struct.uclogic_drvdata* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
