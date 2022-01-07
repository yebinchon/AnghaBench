; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21013_ts.c_bu21013_do_touch_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21013_ts.c_bu21013_do_touch_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bu21013_ts = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.input_mt_pos = type { i64, i64 }

@MAX_FINGERS = common dso_local global i32 0, align 4
@LENGTH_OF_BUFFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BU21013_SENSORS_EN_0_7 = common dso_local global i32 0, align 4
@BU21013_SENSORS_EN_8_15 = common dso_local global i32 0, align 4
@BU21013_SENSORS_EN_16_23 = common dso_local global i32 0, align 4
@SHIFT_8 = common dso_local global i32 0, align 4
@SHIFT_2 = common dso_local global i32 0, align 4
@MASK_BITS = common dso_local global i32 0, align 4
@DELTA_MIN = common dso_local global i64 0, align 8
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bu21013_ts*)* @bu21013_do_touch_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bu21013_do_touch_report(%struct.bu21013_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bu21013_ts*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bu21013_ts* %0, %struct.bu21013_ts** %3, align 8
  %17 = load %struct.bu21013_ts*, %struct.bu21013_ts** %3, align 8
  %18 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %17, i32 0, i32 1
  %19 = load %struct.input_dev*, %struct.input_dev** %18, align 8
  store %struct.input_dev* %19, %struct.input_dev** %4, align 8
  %20 = load i32, i32* @MAX_FINGERS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = alloca %struct.input_mt_pos, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %24 = load i32, i32* @MAX_FINGERS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  %27 = load i32, i32* @LENGTH_OF_BUFFER, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %30 = load %struct.bu21013_ts*, %struct.bu21013_ts** %3, align 8
  %31 = call i64 @bu21013_read_block_data(%struct.bu21013_ts* %30, i32* %29)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %183

36:                                               ; preds = %1
  %37 = getelementptr inbounds i32, i32* %29, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = load i32, i32* @BU21013_SENSORS_EN_0_7, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @hweight32(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = getelementptr inbounds i32, i32* %29, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BU21013_SENSORS_EN_8_15, align 4
  %45 = and i32 %43, %44
  %46 = getelementptr inbounds i32, i32* %29, i64 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BU21013_SENSORS_EN_16_23, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @SHIFT_8, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %45, %51
  %53 = load i32, i32* @SHIFT_2, align 4
  %54 = lshr i32 %52, %53
  %55 = call i32 @hweight32(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %36
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %36
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %183

62:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %111, %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @MAX_FINGERS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %114

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 4, %68
  %70 = add nsw i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %29, i64 %71
  store i32* %72, i32** %14, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SHIFT_2, align 4
  %77 = shl i32 %75, %76
  %78 = load i32*, i32** %14, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MASK_BITS, align 4
  %82 = and i32 %80, %81
  %83 = or i32 %77, %82
  store i32 %83, i32* %15, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SHIFT_2, align 4
  %88 = shl i32 %86, %87
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MASK_BITS, align 4
  %93 = and i32 %91, %92
  %94 = or i32 %88, %93
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %67
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %23, i64 %103
  %105 = load %struct.bu21013_ts*, %struct.bu21013_ts** %3, align 8
  %106 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %105, i32 0, i32 0
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @touchscreen_set_mt_pos(%struct.input_mt_pos* %104, i32* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %100, %97, %67
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %63

114:                                              ; preds = %63
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %140

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %23, i64 0
  %119 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %23, i64 1
  %122 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = call i64 @abs(i64 %124)
  %126 = load i64, i64* @DELTA_MIN, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %139, label %128

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %23, i64 0
  %130 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 16
  %132 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %23, i64 1
  %133 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 16
  %135 = sub nsw i64 %131, %134
  %136 = call i64 @abs(i64 %135)
  %137 = load i64, i64* @DELTA_MIN, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %128, %117
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %183

140:                                              ; preds = %128, %114
  %141 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i64, i64* @DELTA_MIN, align 8
  %144 = call i32 @input_mt_assign_slots(%struct.input_dev* %141, i32* %26, %struct.input_mt_pos* %23, i32 %142, i64 %143)
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %175, %140
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %178

149:                                              ; preds = %145
  %150 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %26, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @input_mt_slot(%struct.input_dev* %150, i32 %154)
  %156 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %157 = load i32, i32* @MT_TOOL_FINGER, align 4
  %158 = call i32 @input_mt_report_slot_state(%struct.input_dev* %156, i32 %157, i32 1)
  %159 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %160 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %23, i64 %162
  %164 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @input_report_abs(%struct.input_dev* %159, i32 %160, i64 %165)
  %167 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %168 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %23, i64 %170
  %172 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 16
  %174 = call i32 @input_report_abs(%struct.input_dev* %167, i32 %168, i64 %173)
  br label %175

175:                                              ; preds = %149
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  br label %145

178:                                              ; preds = %145
  %179 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %180 = call i32 @input_mt_sync_frame(%struct.input_dev* %179)
  %181 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %182 = call i32 @input_sync(%struct.input_dev* %181)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %183

183:                                              ; preds = %178, %139, %61, %33
  %184 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bu21013_read_block_data(%struct.bu21013_ts*, i32*) #2

declare dso_local i32 @hweight32(i32) #2

declare dso_local i32 @touchscreen_set_mt_pos(%struct.input_mt_pos*, i32*, i32, i32) #2

declare dso_local i64 @abs(i64) #2

declare dso_local i32 @input_mt_assign_slots(%struct.input_dev*, i32*, %struct.input_mt_pos*, i32, i64) #2

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #2

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i64) #2

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
