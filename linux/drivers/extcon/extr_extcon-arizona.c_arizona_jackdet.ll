; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_jackdet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_jackdet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i64*, i64, i64, i32, i64, i32, %struct.arizona* }
%struct.TYPE_3__ = type { i32 }
%struct.arizona = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@ARIZONA_MICD_CLAMP_STS = common dso_local global i32 0, align 4
@ARIZONA_JD1_STS = common dso_local global i32 0, align 4
@ARIZONA_AOD_IRQ_RAW_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read jackdet status: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Suppressing duplicate JACKDET\0A\00", align 1
@system_power_efficient_wq = common dso_local global i32 0, align 4
@HPDET_DEBOUNCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Detected jack\0A\00", align 1
@EXTCON_MECHANICAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Mechanical report failed: %d\0A\00", align 1
@ARIZONA_JACK_DETECT_DEBOUNCE = common dso_local global i32 0, align 4
@ARIZONA_MICD_CLAMP_DB = common dso_local global i32 0, align 4
@ARIZONA_JD1_DB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Detected jack removal\0A\00", align 1
@arizona_cable = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"Removal report failed: %d\0A\00", align 1
@DEFAULT_MICD_TIMEOUT = common dso_local global i32 0, align 4
@ARIZONA_AOD_WKUP_AND_TRIG = common dso_local global i32 0, align 4
@ARIZONA_MICD_CLAMP_FALL_TRIG_STS = common dso_local global i32 0, align 4
@ARIZONA_MICD_CLAMP_RISE_TRIG_STS = common dso_local global i32 0, align 4
@ARIZONA_JD1_FALL_TRIG_STS = common dso_local global i32 0, align 4
@ARIZONA_JD1_RISE_TRIG_STS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arizona_jackdet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_jackdet(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arizona_extcon_info*, align 8
  %7 = alloca %struct.arizona*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.arizona_extcon_info*
  store %struct.arizona_extcon_info* %17, %struct.arizona_extcon_info** %6, align 8
  %18 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %19 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %18, i32 0, i32 18
  %20 = load %struct.arizona*, %struct.arizona** %19, align 8
  store %struct.arizona* %20, %struct.arizona** %7, align 8
  %21 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %22 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %21, i32 0, i32 15
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %25 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %24, i32 0, i32 17
  %26 = call i32 @cancel_delayed_work_sync(i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %28 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pm_runtime_get_sync(i32 %29)
  %31 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %32 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %31, i32 0, i32 8
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %35 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %34, i32 0, i32 14
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @ARIZONA_MICD_CLAMP_STS, align 4
  store i32 %39, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %51

40:                                               ; preds = %2
  %41 = load i32, i32* @ARIZONA_JD1_STS, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.arizona*, %struct.arizona** %7, align 8
  %43 = getelementptr inbounds %struct.arizona, %struct.arizona* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @ARIZONA_JD1_STS, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %47
  br label %51

51:                                               ; preds = %50, %38
  %52 = load %struct.arizona*, %struct.arizona** %7, align 8
  %53 = getelementptr inbounds %struct.arizona, %struct.arizona* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ARIZONA_AOD_IRQ_RAW_STATUS, align 4
  %56 = call i32 @regmap_read(i32 %54, i32 %55, i32* %8)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %51
  %60 = load %struct.arizona*, %struct.arizona** %7, align 8
  %61 = getelementptr inbounds %struct.arizona, %struct.arizona* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %66 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %65, i32 0, i32 8
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %69 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pm_runtime_put_autosuspend(i32 %70)
  %72 = load i32, i32* @IRQ_NONE, align 4
  store i32 %72, i32* %3, align 4
  br label %325

73:                                               ; preds = %51
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %79 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %73
  %83 = load %struct.arizona*, %struct.arizona** %7, align 8
  %84 = getelementptr inbounds %struct.arizona, %struct.arizona* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load i32, i32* @system_power_efficient_wq, align 4
  %91 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %92 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %91, i32 0, i32 15
  %93 = load i32, i32* @HPDET_DEBOUNCE, align 4
  %94 = call i32 @msecs_to_jiffies(i32 %93)
  %95 = call i32 @queue_delayed_work(i32 %90, i32* %92, i32 %94)
  br label %96

96:                                               ; preds = %89, %82
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %101 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* @system_power_efficient_wq, align 4
  %104 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %105 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %104, i32 0, i32 17
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @msecs_to_jiffies(i32 %106)
  %108 = call i32 @queue_delayed_work(i32 %103, i32* %105, i32 %107)
  br label %109

109:                                              ; preds = %99, %96
  br label %300

110:                                              ; preds = %73
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %113 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %115 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %180

119:                                              ; preds = %110
  %120 = load %struct.arizona*, %struct.arizona** %7, align 8
  %121 = getelementptr inbounds %struct.arizona, %struct.arizona* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dev_dbg(i32 %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %124 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %125 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* @EXTCON_MECHANICAL, align 8
  %128 = call i32 @extcon_set_state_sync(i32 %126, i64 %127, i32 1)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %119
  %132 = load %struct.arizona*, %struct.arizona** %7, align 8
  %133 = getelementptr inbounds %struct.arizona, %struct.arizona* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %131, %119
  %138 = load %struct.arizona*, %struct.arizona** %7, align 8
  %139 = getelementptr inbounds %struct.arizona, %struct.arizona* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %137
  %144 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %145 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %144, i32 0, i32 2
  store i32 1, i32* %145, align 8
  %146 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %147 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %146, i32 0, i32 3
  store i32 0, i32* %147, align 4
  %148 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %149 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %148, i32 0, i32 16
  store i64 0, i64* %149, align 8
  %150 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %151 = call i32 @arizona_start_mic(%struct.arizona_extcon_info* %150)
  br label %159

152:                                              ; preds = %137
  %153 = load i32, i32* @system_power_efficient_wq, align 4
  %154 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %155 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %154, i32 0, i32 15
  %156 = load i32, i32* @HPDET_DEBOUNCE, align 4
  %157 = call i32 @msecs_to_jiffies(i32 %156)
  %158 = call i32 @queue_delayed_work(i32 %153, i32* %155, i32 %157)
  br label %159

159:                                              ; preds = %152, %143
  %160 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %161 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %160, i32 0, i32 14
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %159
  %165 = load %struct.arizona*, %struct.arizona** %7, align 8
  %166 = getelementptr inbounds %struct.arizona, %struct.arizona* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %164, %159
  %171 = load %struct.arizona*, %struct.arizona** %7, align 8
  %172 = getelementptr inbounds %struct.arizona, %struct.arizona* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @ARIZONA_JACK_DETECT_DEBOUNCE, align 4
  %175 = load i32, i32* @ARIZONA_MICD_CLAMP_DB, align 4
  %176 = load i32, i32* @ARIZONA_JD1_DB, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @regmap_update_bits(i32 %173, i32 %174, i32 %177, i32 0)
  br label %179

179:                                              ; preds = %170, %164
  br label %282

180:                                              ; preds = %110
  %181 = load %struct.arizona*, %struct.arizona** %7, align 8
  %182 = getelementptr inbounds %struct.arizona, %struct.arizona* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @dev_dbg(i32 %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %185 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %186 = call i32 @arizona_stop_mic(%struct.arizona_extcon_info* %185)
  %187 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %188 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %187, i32 0, i32 13
  store i64 0, i64* %188, align 8
  store i32 0, i32* %14, align 4
  br label %189

189:                                              ; preds = %203, %180
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %192 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %191, i32 0, i32 12
  %193 = load i64*, i64** %192, align 8
  %194 = call i32 @ARRAY_SIZE(i64* %193)
  %195 = icmp slt i32 %190, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %189
  %197 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %198 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %197, i32 0, i32 12
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %196
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  br label %189

206:                                              ; preds = %189
  %207 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %208 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %207, i32 0, i32 3
  store i32 0, i32* %208, align 4
  %209 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %210 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %209, i32 0, i32 4
  store i32 0, i32* %210, align 8
  %211 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %212 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %211, i32 0, i32 5
  store i32 0, i32* %212, align 4
  store i32 0, i32* %14, align 4
  br label %213

213:                                              ; preds = %232, %206
  %214 = load i32, i32* %14, align 4
  %215 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %216 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %213
  %220 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %221 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %220, i32 0, i32 10
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %224 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %223, i32 0, i32 11
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @input_report_key(i32 %222, i32 %230, i32 0)
  br label %232

232:                                              ; preds = %219
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %14, align 4
  br label %213

235:                                              ; preds = %213
  %236 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %237 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %236, i32 0, i32 10
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @input_sync(i32 %238)
  store i32 0, i32* %14, align 4
  br label %240

240:                                              ; preds = %265, %235
  %241 = load i32, i32* %14, align 4
  %242 = load i64*, i64** @arizona_cable, align 8
  %243 = call i32 @ARRAY_SIZE(i64* %242)
  %244 = sub nsw i32 %243, 1
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %268

246:                                              ; preds = %240
  %247 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %248 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %247, i32 0, i32 9
  %249 = load i32, i32* %248, align 4
  %250 = load i64*, i64** @arizona_cable, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @extcon_set_state_sync(i32 %249, i64 %254, i32 0)
  store i32 %255, i32* %13, align 4
  %256 = load i32, i32* %13, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %246
  %259 = load %struct.arizona*, %struct.arizona** %7, align 8
  %260 = getelementptr inbounds %struct.arizona, %struct.arizona* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = call i32 @dev_err(i32 %261, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %258, %246
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %14, align 4
  br label %240

268:                                              ; preds = %240
  %269 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %270 = call i32 @arizona_hpdet_wait(%struct.arizona_extcon_info* %269)
  %271 = load %struct.arizona*, %struct.arizona** %7, align 8
  %272 = getelementptr inbounds %struct.arizona, %struct.arizona* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @ARIZONA_JACK_DETECT_DEBOUNCE, align 4
  %275 = load i32, i32* @ARIZONA_MICD_CLAMP_DB, align 4
  %276 = load i32, i32* @ARIZONA_JD1_DB, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* @ARIZONA_MICD_CLAMP_DB, align 4
  %279 = load i32, i32* @ARIZONA_JD1_DB, align 4
  %280 = or i32 %278, %279
  %281 = call i32 @regmap_update_bits(i32 %273, i32 %274, i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %268, %179
  %283 = load %struct.arizona*, %struct.arizona** %7, align 8
  %284 = getelementptr inbounds %struct.arizona, %struct.arizona* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %282
  %289 = load %struct.arizona*, %struct.arizona** %7, align 8
  %290 = getelementptr inbounds %struct.arizona, %struct.arizona* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %294 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 4
  br label %299

295:                                              ; preds = %282
  %296 = load i32, i32* @DEFAULT_MICD_TIMEOUT, align 4
  %297 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %298 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %297, i32 0, i32 1
  store i32 %296, i32* %298, align 4
  br label %299

299:                                              ; preds = %295, %288
  br label %300

300:                                              ; preds = %299, %109
  %301 = load %struct.arizona*, %struct.arizona** %7, align 8
  %302 = getelementptr inbounds %struct.arizona, %struct.arizona* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @ARIZONA_AOD_WKUP_AND_TRIG, align 4
  %305 = load i32, i32* @ARIZONA_MICD_CLAMP_FALL_TRIG_STS, align 4
  %306 = load i32, i32* @ARIZONA_MICD_CLAMP_RISE_TRIG_STS, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* @ARIZONA_JD1_FALL_TRIG_STS, align 4
  %309 = or i32 %307, %308
  %310 = load i32, i32* @ARIZONA_JD1_RISE_TRIG_STS, align 4
  %311 = or i32 %309, %310
  %312 = call i32 @regmap_write(i32 %303, i32 %304, i32 %311)
  %313 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %314 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %313, i32 0, i32 8
  %315 = call i32 @mutex_unlock(i32* %314)
  %316 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %317 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @pm_runtime_mark_last_busy(i32 %318)
  %320 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %321 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @pm_runtime_put_autosuspend(i32 %322)
  %324 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %324, i32* %3, align 4
  br label %325

325:                                              ; preds = %300, %59
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i64, i32) #1

declare dso_local i32 @arizona_start_mic(%struct.arizona_extcon_info*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @arizona_stop_mic(%struct.arizona_extcon_info*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @arizona_hpdet_wait(%struct.arizona_extcon_info*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
