; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_report_trackpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_report_trackpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@ETP_REPORT_ID_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"received a trackpoint report while no trackpoint device has been created. Please report upstream.\0A\00", align 1
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elan_tp_data*, i32*)* @elan_report_trackpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elan_report_trackpoint(%struct.elan_tp_data* %0, i32* %1) #0 {
  %3 = alloca %struct.elan_tp_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %10 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %9, i32 0, i32 1
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @ETP_REPORT_ID_OFFSET, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32* %16, i32** %6, align 8
  %17 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %18 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %17, i32 0, i32 1
  %19 = load %struct.input_dev*, %struct.input_dev** %18, align 8
  %20 = icmp ne %struct.input_dev* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %23 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_warn_once(i32* %25, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0))
  br label %84

27:                                               ; preds = %2
  %28 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %29 = load i32, i32* @BTN_LEFT, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 1
  %34 = call i32 @input_report_key(%struct.input_dev* %28, i32 %29, i32 %33)
  %35 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %36 = load i32, i32* @BTN_RIGHT, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 2
  %41 = call i32 @input_report_key(%struct.input_dev* %35, i32 %36, i32 %40)
  %42 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %43 = load i32, i32* @BTN_MIDDLE, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 4
  %48 = call i32 @input_report_key(%struct.input_dev* %42, i32 %43, i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 15
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %81

54:                                               ; preds = %27
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %60, 128
  %62 = shl i32 %61, 1
  %63 = sub nsw i32 %57, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %66, 128
  %68 = shl i32 %67, 1
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %8, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = load i32, i32* @REL_X, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @input_report_rel(%struct.input_dev* %73, i32 %74, i32 %75)
  %77 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %78 = load i32, i32* @REL_Y, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @input_report_rel(%struct.input_dev* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %54, %27
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = call i32 @input_sync(%struct.input_dev* %82)
  br label %84

84:                                               ; preds = %81, %21
  ret void
}

declare dso_local i32 @dev_warn_once(i32*, i8*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
