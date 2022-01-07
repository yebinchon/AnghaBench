; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_proc_t9_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_proc_t9_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, i32, i32, i32, %struct.input_dev*, %struct.TYPE_2__* }
%struct.input_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"[%u] %c%c%c%c%c%c%c%c x: %5u y: %5u area: %3u amp: %3u\0A\00", align 1
@MXT_T9_DETECT = common dso_local global i32 0, align 4
@MXT_T9_PRESS = common dso_local global i32 0, align 4
@MXT_T9_RELEASE = common dso_local global i32 0, align 4
@MXT_T9_MOVE = common dso_local global i32 0, align 4
@MXT_T9_VECTOR = common dso_local global i32 0, align 4
@MXT_T9_AMP = common dso_local global i32 0, align 4
@MXT_T9_SUPPRESS = common dso_local global i32 0, align 4
@MXT_T9_UNGRIP = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@MXT_PRESSURE_DEFAULT = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxt_data*, i32*)* @mxt_proc_t9_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxt_proc_t9_message(%struct.mxt_data* %0, i32* %1) #0 {
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %14 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %13, i32 0, i32 5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %18 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %17, i32 0, i32 4
  %19 = load %struct.input_dev*, %struct.input_dev** %18, align 8
  store %struct.input_dev* %19, %struct.input_dev** %6, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %24 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 4
  %38 = and i32 %37, 15
  %39 = or i32 %33, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  %48 = or i32 %43, %47
  store i32 %48, i32* %10, align 4
  %49 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %50 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 1024
  br i1 %52, label %53, label %56

53:                                               ; preds = %2
  %54 = load i32, i32* %9, align 4
  %55 = ashr i32 %54, 2
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %2
  %57 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %58 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 1024
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  %63 = ashr i32 %62, 2
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @MXT_T9_DETECT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 68, i32 46
  %79 = trunc i32 %78 to i8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @MXT_T9_PRESS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 80, i32 46
  %86 = trunc i32 %85 to i8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @MXT_T9_RELEASE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 82, i32 46
  %93 = trunc i32 %92 to i8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @MXT_T9_MOVE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 77, i32 46
  %100 = trunc i32 %99 to i8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @MXT_T9_VECTOR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 86, i32 46
  %107 = trunc i32 %106 to i8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @MXT_T9_AMP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 65, i32 46
  %114 = trunc i32 %113 to i8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @MXT_T9_SUPPRESS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 83, i32 46
  %121 = trunc i32 %120 to i8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @MXT_T9_UNGRIP, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 85, i32 46
  %128 = trunc i32 %127 to i8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @dev_dbg(%struct.device* %71, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %72, i8 signext %79, i8 signext %86, i8 signext %93, i8 signext %100, i8 signext %107, i8 signext %114, i8 signext %121, i8 zeroext %128, i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @input_mt_slot(%struct.input_dev* %134, i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @MXT_T9_DETECT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %177

141:                                              ; preds = %64
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @MXT_T9_RELEASE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %148 = load i32, i32* @MT_TOOL_FINGER, align 4
  %149 = call i32 @input_mt_report_slot_state(%struct.input_dev* %147, i32 %148, i32 0)
  %150 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %151 = call i32 @mxt_input_sync(%struct.mxt_data* %150)
  br label %152

152:                                              ; preds = %146, %141
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* @MXT_PRESSURE_DEFAULT, align 4
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %155, %152
  %158 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %159 = load i32, i32* @MT_TOOL_FINGER, align 4
  %160 = call i32 @input_mt_report_slot_state(%struct.input_dev* %158, i32 %159, i32 1)
  %161 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %162 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @input_report_abs(%struct.input_dev* %161, i32 %162, i32 %163)
  %165 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %166 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @input_report_abs(%struct.input_dev* %165, i32 %166, i32 %167)
  %169 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %170 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @input_report_abs(%struct.input_dev* %169, i32 %170, i32 %171)
  %173 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %174 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @input_report_abs(%struct.input_dev* %173, i32 %174, i32 %175)
  br label %181

177:                                              ; preds = %64
  %178 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %179 = load i32, i32* @MT_TOOL_FINGER, align 4
  %180 = call i32 @input_mt_report_slot_state(%struct.input_dev* %178, i32 %179, i32 0)
  br label %181

181:                                              ; preds = %177, %157
  %182 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %183 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %182, i32 0, i32 3
  store i32 1, i32* %183, align 4
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 zeroext, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @mxt_input_sync(%struct.mxt_data*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
