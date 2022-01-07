; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.silead_ts_data = type { i32, i32*, i32*, %struct.TYPE_3__*, i32, %struct.input_dev* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.input_dev = type { i32 }

@SILEAD_TS_DATA_LEN = common dso_local global i32 0, align 4
@SILEAD_REG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Data read error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"More touches reported then supported %d > %d\0A\00", align 1
@SILEAD_POINT_DATA_LEN = common dso_local global i32 0, align 4
@SILEAD_POINT_Y_MSB_OFF = common dso_local global i64 0, align 8
@SILEAD_EXTRA_DATA_MASK = common dso_local global i32 0, align 4
@SILEAD_POINT_X_MSB_OFF = common dso_local global i64 0, align 8
@SILEAD_POINT_X_OFF = common dso_local global i64 0, align 8
@SILEAD_POINT_Y_OFF = common dso_local global i64 0, align 8
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"x=%d y=%d hw_id=%d sw_id=%d\0A\00", align 1
@KEY_LEFTMETA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @silead_ts_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @silead_ts_read_data(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.silead_ts_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %16 = call %struct.silead_ts_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.silead_ts_data* %16, %struct.silead_ts_data** %3, align 8
  %17 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %18 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %17, i32 0, i32 5
  %19 = load %struct.input_dev*, %struct.input_dev** %18, align 8
  store %struct.input_dev* %19, %struct.input_dev** %4, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %5, align 8
  %22 = load i32, i32* @SILEAD_TS_DATA_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %7, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %27 = load i32, i32* @SILEAD_REG_DATA, align 4
  %28 = load i32, i32* @SILEAD_TS_DATA_LEN, align 4
  %29 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %26, i32 %27, i32 %28, i32* %25)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 1, i32* %14, align 4
  br label %214

36:                                               ; preds = %1
  %37 = getelementptr inbounds i32, i32* %25, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %40 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = getelementptr inbounds i32, i32* %25, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %48 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_warn(%struct.device* %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %52 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %53, i32* %54, align 16
  br label %55

55:                                               ; preds = %43, %36
  store i32 0, i32* %9, align 4
  %56 = load i32, i32* @SILEAD_POINT_DATA_LEN, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %25, i64 %57
  store i32* %58, i32** %6, align 8
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %114, %55
  %60 = load i32, i32* %12, align 4
  %61 = getelementptr inbounds i32, i32* %25, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %121

64:                                               ; preds = %59
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* @SILEAD_POINT_Y_MSB_OFF, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SILEAD_EXTRA_DATA_MASK, align 4
  %70 = and i32 %68, %69
  %71 = ashr i32 %70, 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 1, i32* %13, align 4
  br label %78

78:                                               ; preds = %77, %74
  br label %114

79:                                               ; preds = %64
  %80 = load i32*, i32** %6, align 8
  %81 = load i64, i64* @SILEAD_POINT_X_MSB_OFF, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SILEAD_EXTRA_DATA_MASK, align 4
  %85 = and i32 %83, %84
  %86 = ashr i32 %85, 4
  %87 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %88 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  %93 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %94 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %100 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %99, i32 0, i32 4
  %101 = load i32*, i32** %6, align 8
  %102 = load i64, i64* @SILEAD_POINT_X_OFF, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = call i32 @get_unaligned_le16(i32* %103)
  %105 = and i32 %104, 4095
  %106 = load i32*, i32** %6, align 8
  %107 = load i64, i64* @SILEAD_POINT_Y_OFF, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = call i32 @get_unaligned_le16(i32* %108)
  %110 = and i32 %109, 4095
  %111 = call i32 @touchscreen_set_mt_pos(%struct.TYPE_3__* %98, i32* %100, i32 %105, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %79, %78
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* @SILEAD_POINT_DATA_LEN, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %6, align 8
  br label %59

121:                                              ; preds = %59
  %122 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %123 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %124 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %127 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %126, i32 0, i32 3
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @input_mt_assign_slots(%struct.input_dev* %122, i32* %125, %struct.TYPE_3__* %128, i32 %129, i32 0)
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %202, %121
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %205

135:                                              ; preds = %131
  %136 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %137 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %138 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @input_mt_slot(%struct.input_dev* %136, i32 %143)
  %145 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %146 = load i32, i32* @MT_TOOL_FINGER, align 4
  %147 = call i32 @input_mt_report_slot_state(%struct.input_dev* %145, i32 %146, i32 1)
  %148 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %149 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %150 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %151 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %150, i32 0, i32 3
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @input_report_abs(%struct.input_dev* %148, i32 %149, i32 %157)
  %159 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %160 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %161 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %162 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %161, i32 0, i32 3
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @input_report_abs(%struct.input_dev* %159, i32 %160, i32 %168)
  %170 = load %struct.device*, %struct.device** %5, align 8
  %171 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %172 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %171, i32 0, i32 3
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %180 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %179, i32 0, i32 3
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %188 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %195 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @dev_dbg(%struct.device* %170, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %178, i32 %186, i32 %193, i32 %200)
  br label %202

202:                                              ; preds = %135
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %12, align 4
  br label %131

205:                                              ; preds = %131
  %206 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %207 = call i32 @input_mt_sync_frame(%struct.input_dev* %206)
  %208 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %209 = load i32, i32* @KEY_LEFTMETA, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @input_report_key(%struct.input_dev* %208, i32 %209, i32 %210)
  %212 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %213 = call i32 @input_sync(%struct.input_dev* %212)
  store i32 0, i32* %14, align 4
  br label %214

214:                                              ; preds = %205, %32
  %215 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %14, align 4
  switch i32 %216, label %218 [
    i32 0, label %217
    i32 1, label %217
  ]

217:                                              ; preds = %214, %214
  ret void

218:                                              ; preds = %214
  unreachable
}

declare dso_local %struct.silead_ts_data* @i2c_get_clientdata(%struct.i2c_client*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @touchscreen_set_mt_pos(%struct.TYPE_3__*, i32*, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @input_mt_assign_slots(%struct.input_dev*, i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
