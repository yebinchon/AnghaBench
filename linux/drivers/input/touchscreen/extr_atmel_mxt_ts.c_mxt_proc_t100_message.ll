; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_proc_t100_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_proc_t100_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, i64, i64, i64, i32, %struct.input_dev*, %struct.TYPE_2__* }
%struct.input_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@MXT_T100_DETECT = common dso_local global i32 0, align 4
@MXT_T100_TYPE_MASK = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@MXT_DISTANCE_HOVERING = common dso_local global i32 0, align 4
@MXT_DISTANCE_ACTIVE_TOUCH = common dso_local global i32 0, align 4
@MT_TOOL_PEN = common dso_local global i32 0, align 4
@MXT_TOUCH_MAJOR_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unexpected T100 type\0A\00", align 1
@MXT_PRESSURE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"[%u] type:%u x:%u y:%u a:%02X p:%02X v:%02X\0A\00", align 1
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_DISTANCE = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"[%u] release\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxt_data*, i32*)* @mxt_proc_t100_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxt_proc_t100_message(%struct.mxt_data* %0, i32* %1) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %18 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %17, i32 0, i32 6
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %5, align 8
  %21 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %22 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %21, i32 0, i32 5
  %23 = load %struct.input_dev*, %struct.input_dev** %22, align 8
  store %struct.input_dev* %23, %struct.input_dev** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %28 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %26, %29
  %31 = sub nsw i32 %30, 2
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %191

35:                                               ; preds = %2
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = call i32 @get_unaligned_le16(i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = call i32 @get_unaligned_le16(i32* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MXT_T100_DETECT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %129

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @MXT_T100_TYPE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = ashr i32 %52, 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %125 [
    i32 130, label %55
    i32 132, label %70
    i32 131, label %70
    i32 128, label %109
    i32 129, label %124
  ]

55:                                               ; preds = %49
  %56 = load i32, i32* @MT_TOOL_FINGER, align 4
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* @MXT_DISTANCE_HOVERING, align 4
  store i32 %57, i32* %12, align 4
  %58 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %59 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %65 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %62, %55
  br label %128

70:                                               ; preds = %49, %49
  %71 = load i32, i32* @MT_TOOL_FINGER, align 4
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* @MXT_DISTANCE_ACTIVE_TOUCH, align 4
  store i32 %72, i32* %12, align 4
  %73 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %74 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %80 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %77, %70
  %85 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %86 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %92 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %98 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %104 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %101, %96
  br label %128

109:                                              ; preds = %49
  %110 = load i32, i32* @MT_TOOL_PEN, align 4
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* @MXT_TOUCH_MAJOR_DEFAULT, align 4
  store i32 %111, i32* %14, align 4
  %112 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %113 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i32*, i32** %4, align 8
  %118 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %119 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %116, %109
  br label %128

124:                                              ; preds = %49
  br label %128

125:                                              ; preds = %49
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %191

128:                                              ; preds = %124, %123, %108, %69
  br label %129

129:                                              ; preds = %128, %35
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 130
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @MXT_PRESSURE_DEFAULT, align 4
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %135, %132, %129
  %138 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @input_mt_slot(%struct.input_dev* %138, i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @MXT_T100_DETECT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %182

145:                                              ; preds = %137
  %146 = load %struct.device*, %struct.device** %5, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %16, align 4
  %154 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %146, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @input_mt_report_slot_state(%struct.input_dev* %155, i32 %156, i32 1)
  %158 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %159 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @input_report_abs(%struct.input_dev* %158, i32 %159, i32 %160)
  %162 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %163 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @input_report_abs(%struct.input_dev* %162, i32 %163, i32 %164)
  %166 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %167 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @input_report_abs(%struct.input_dev* %166, i32 %167, i32 %168)
  %170 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %171 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @input_report_abs(%struct.input_dev* %170, i32 %171, i32 %172)
  %174 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %175 = load i32, i32* @ABS_MT_DISTANCE, align 4
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @input_report_abs(%struct.input_dev* %174, i32 %175, i32 %176)
  %178 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %179 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @input_report_abs(%struct.input_dev* %178, i32 %179, i32 %180)
  br label %188

182:                                              ; preds = %137
  %183 = load %struct.device*, %struct.device** %5, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  %186 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %187 = call i32 @input_mt_report_slot_state(%struct.input_dev* %186, i32 0, i32 0)
  br label %188

188:                                              ; preds = %182, %145
  %189 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %190 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %189, i32 0, i32 4
  store i32 1, i32* %190, align 8
  br label %191

191:                                              ; preds = %188, %125, %34
  ret void
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
