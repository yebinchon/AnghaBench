; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_report_contact.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_report_contact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { i32, i32, i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"[%d] x=%d y=%d over max (%d, %d)\00", align 1
@ETP_FWIDTH_REDUCE = common dso_local global i32 0, align 4
@ETP_MAX_PRESSURE = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elan_tp_data*, i32, i32, i32*)* @elan_report_contact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elan_report_contact(%struct.elan_tp_data* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.elan_tp_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %20 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %21 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %20, i32 0, i32 5
  %22 = load %struct.input_dev*, %struct.input_dev** %21, align 8
  store %struct.input_dev* %22, %struct.input_dev** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %147

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 240
  %30 = shl i32 %29, 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %30, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  %39 = shl i32 %38, 8
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 4
  store i32 %51, i32* %14, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %57 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ugt i32 %55, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %25
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %63 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ugt i32 %61, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %60, %25
  %67 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %75 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %78 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72, i32 %73, i32 %76, i32 %79)
  br label %154

81:                                               ; preds = %60
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %84 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ETP_FWIDTH_REDUCE, align 4
  %87 = sub i32 %85, %86
  %88 = mul i32 %82, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %91 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ETP_FWIDTH_REDUCE, align 4
  %94 = sub i32 %92, %93
  %95 = mul i32 %89, %94
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @max(i32 %96, i32 %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @min(i32 %99, i32 %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %104 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = add i32 %102, %105
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* @ETP_MAX_PRESSURE, align 4
  %109 = icmp ugt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %81
  %111 = load i32, i32* @ETP_MAX_PRESSURE, align 4
  store i32 %111, i32* %19, align 4
  br label %112

112:                                              ; preds = %110, %81
  %113 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @input_mt_slot(%struct.input_dev* %113, i32 %114)
  %116 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %117 = load i32, i32* @MT_TOOL_FINGER, align 4
  %118 = call i32 @input_mt_report_slot_state(%struct.input_dev* %116, i32 %117, i32 1)
  %119 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %120 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @input_report_abs(%struct.input_dev* %119, i32 %120, i32 %121)
  %123 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %124 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %125 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %126 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %11, align 4
  %129 = sub i32 %127, %128
  %130 = call i32 @input_report_abs(%struct.input_dev* %123, i32 %124, i32 %129)
  %131 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %132 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @input_report_abs(%struct.input_dev* %131, i32 %132, i32 %133)
  %135 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %136 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @input_report_abs(%struct.input_dev* %135, i32 %136, i32 %137)
  %139 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %140 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @input_report_abs(%struct.input_dev* %139, i32 %140, i32 %141)
  %143 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %144 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @input_report_abs(%struct.input_dev* %143, i32 %144, i32 %145)
  br label %154

147:                                              ; preds = %4
  %148 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @input_mt_slot(%struct.input_dev* %148, i32 %149)
  %151 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %152 = load i32, i32* @MT_TOOL_FINGER, align 4
  %153 = call i32 @input_mt_report_slot_state(%struct.input_dev* %151, i32 %152, i32 0)
  br label %154

154:                                              ; preds = %66, %147, %112
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
