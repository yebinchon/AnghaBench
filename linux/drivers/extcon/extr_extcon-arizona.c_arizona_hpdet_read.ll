; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_hpdet_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_hpdet_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.arizona_extcon_info = type { i32, %struct.arizona* }
%struct.arizona = type { i32, i32 }

@ARIZONA_HEADPHONE_DETECT_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to read HPDET status: %d\0A\00", align 1
@ARIZONA_HP_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"HPDET did not complete: %x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ARIZONA_HP_LVL_MASK = common dso_local global i32 0, align 4
@ARIZONA_HP_DONE_B = common dso_local global i32 0, align 4
@ARIZONA_HP_DACVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to read HP value: %d\0A\00", align 1
@ARIZONA_HEADPHONE_DETECT_1 = common dso_local global i32 0, align 4
@ARIZONA_HP_IMPEDANCE_RANGE_MASK = common dso_local global i32 0, align 4
@ARIZONA_HP_IMPEDANCE_RANGE_SHIFT = common dso_local global i32 0, align 4
@arizona_hpdet_b_ranges = common dso_local global %struct.TYPE_4__* null, align 8
@ARIZONA_HPDET_B_RANGE_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Moving to HPDET range %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Measurement out of range\0A\00", align 1
@ARIZONA_HPDET_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"HPDET read %d in range %d\0A\00", align 1
@ARIZONA_HP_LVL_B_MASK = common dso_local global i32 0, align 4
@arizona_hpdet_c_ranges = common dso_local global %struct.TYPE_4__* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Moving to HPDET range %d-%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Reporting range boundary %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unknown HPDET IP revision %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"HP impedance %d ohms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona_extcon_info*)* @arizona_hpdet_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_hpdet_read(%struct.arizona_extcon_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arizona_extcon_info*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.arizona_extcon_info* %0, %struct.arizona_extcon_info** %3, align 8
  %8 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %9 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %8, i32 0, i32 1
  %10 = load %struct.arizona*, %struct.arizona** %9, align 8
  store %struct.arizona* %10, %struct.arizona** %4, align 8
  %11 = load %struct.arizona*, %struct.arizona** %4, align 8
  %12 = getelementptr inbounds %struct.arizona, %struct.arizona* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ARIZONA_HEADPHONE_DETECT_2, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.arizona*, %struct.arizona** %4, align 8
  %20 = getelementptr inbounds %struct.arizona, %struct.arizona* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %285

25:                                               ; preds = %1
  %26 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %27 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %268 [
    i32 0, label %29
    i32 1, label %46
    i32 2, label %165
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ARIZONA_HP_DONE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.arizona*, %struct.arizona** %4, align 8
  %36 = getelementptr inbounds %struct.arizona, %struct.arizona* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %285

42:                                               ; preds = %29
  %43 = load i32, i32* @ARIZONA_HP_LVL_MASK, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %278

46:                                               ; preds = %25
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ARIZONA_HP_DONE_B, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.arizona*, %struct.arizona** %4, align 8
  %53 = getelementptr inbounds %struct.arizona, %struct.arizona* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %285

59:                                               ; preds = %46
  %60 = load %struct.arizona*, %struct.arizona** %4, align 8
  %61 = getelementptr inbounds %struct.arizona, %struct.arizona* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ARIZONA_HP_DACVAL, align 4
  %64 = call i32 @regmap_read(i32 %62, i32 %63, i32* %5)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.arizona*, %struct.arizona** %4, align 8
  %69 = getelementptr inbounds %struct.arizona, %struct.arizona* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %285

75:                                               ; preds = %59
  %76 = load %struct.arizona*, %struct.arizona** %4, align 8
  %77 = getelementptr inbounds %struct.arizona, %struct.arizona* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ARIZONA_HEADPHONE_DETECT_1, align 4
  %80 = call i32 @regmap_read(i32 %78, i32 %79, i32* %6)
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @ARIZONA_HP_IMPEDANCE_RANGE_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @ARIZONA_HP_IMPEDANCE_RANGE_SHIFT, align 4
  %85 = lshr i32 %83, %84
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_b_ranges, align 8
  %88 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %87)
  %89 = sub nsw i32 %88, 1
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %123

91:                                               ; preds = %75
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_b_ranges, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ult i32 %92, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @ARIZONA_HPDET_B_RANGE_MAX, align 4
  %103 = icmp uge i32 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %100, %91
  %105 = load i32, i32* %6, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %6, align 4
  %107 = load %struct.arizona*, %struct.arizona** %4, align 8
  %108 = getelementptr inbounds %struct.arizona, %struct.arizona* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 (i32, i8*, ...) @dev_dbg(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load %struct.arizona*, %struct.arizona** %4, align 8
  %113 = getelementptr inbounds %struct.arizona, %struct.arizona* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ARIZONA_HEADPHONE_DETECT_1, align 4
  %116 = load i32, i32* @ARIZONA_HP_IMPEDANCE_RANGE_MASK, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @ARIZONA_HP_IMPEDANCE_RANGE_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = call i32 @regmap_update_bits(i32 %114, i32 %115, i32 %116, i32 %119)
  %121 = load i32, i32* @EAGAIN, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %285

123:                                              ; preds = %100, %75
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_b_ranges, align 8
  %126 = load i32, i32* %6, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ult i32 %124, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @ARIZONA_HPDET_B_RANGE_MAX, align 4
  %135 = icmp uge i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132, %123
  %137 = load %struct.arizona*, %struct.arizona** %4, align 8
  %138 = getelementptr inbounds %struct.arizona, %struct.arizona* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @dev_dbg(i32 %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* @ARIZONA_HPDET_MAX, align 4
  store i32 %141, i32* %2, align 4
  br label %285

142:                                              ; preds = %132
  %143 = load %struct.arizona*, %struct.arizona** %4, align 8
  %144 = getelementptr inbounds %struct.arizona, %struct.arizona* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 (i32, i8*, ...) @dev_dbg(i32 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_b_ranges, align 8
  %150 = load i32, i32* %6, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %5, align 4
  %156 = mul i32 %155, 100
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_b_ranges, align 8
  %158 = load i32, i32* %6, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = sub i32 %156, %162
  %164 = udiv i32 %154, %163
  store i32 %164, i32* %5, align 4
  br label %278

165:                                              ; preds = %25
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @ARIZONA_HP_DONE_B, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %165
  %171 = load %struct.arizona*, %struct.arizona** %4, align 8
  %172 = getelementptr inbounds %struct.arizona, %struct.arizona* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @dev_err(i32 %173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* @EAGAIN, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %2, align 4
  br label %285

178:                                              ; preds = %165
  %179 = load i32, i32* @ARIZONA_HP_LVL_B_MASK, align 4
  %180 = load i32, i32* %5, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = udiv i32 %182, 2
  store i32 %183, i32* %5, align 4
  %184 = load %struct.arizona*, %struct.arizona** %4, align 8
  %185 = getelementptr inbounds %struct.arizona, %struct.arizona* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @ARIZONA_HEADPHONE_DETECT_1, align 4
  %188 = call i32 @regmap_read(i32 %186, i32 %187, i32* %6)
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @ARIZONA_HP_IMPEDANCE_RANGE_MASK, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* @ARIZONA_HP_IMPEDANCE_RANGE_SHIFT, align 4
  %193 = lshr i32 %191, %192
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_c_ranges, align 8
  %196 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %195)
  %197 = sub nsw i32 %196, 1
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %238

199:                                              ; preds = %178
  %200 = load i32, i32* %5, align 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_c_ranges, align 8
  %202 = load i32, i32* %6, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = icmp uge i32 %200, %206
  br i1 %207, label %208, label %238

208:                                              ; preds = %199
  %209 = load i32, i32* %6, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %6, align 4
  %211 = load %struct.arizona*, %struct.arizona** %4, align 8
  %212 = getelementptr inbounds %struct.arizona, %struct.arizona* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_c_ranges, align 8
  %215 = load i32, i32* %6, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_c_ranges, align 8
  %221 = load i32, i32* %6, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i32, i8*, ...) @dev_dbg(i32 %213, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %219, i32 %225)
  %227 = load %struct.arizona*, %struct.arizona** %4, align 8
  %228 = getelementptr inbounds %struct.arizona, %struct.arizona* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @ARIZONA_HEADPHONE_DETECT_1, align 4
  %231 = load i32, i32* @ARIZONA_HP_IMPEDANCE_RANGE_MASK, align 4
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @ARIZONA_HP_IMPEDANCE_RANGE_SHIFT, align 4
  %234 = shl i32 %232, %233
  %235 = call i32 @regmap_update_bits(i32 %229, i32 %230, i32 %231, i32 %234)
  %236 = load i32, i32* @EAGAIN, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %2, align 4
  br label %285

238:                                              ; preds = %199, %178
  %239 = load i32, i32* %6, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %267

241:                                              ; preds = %238
  %242 = load i32, i32* %5, align 4
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_c_ranges, align 8
  %244 = load i32, i32* %6, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp ult i32 %242, %248
  br i1 %249, label %250, label %267

250:                                              ; preds = %241
  %251 = load %struct.arizona*, %struct.arizona** %4, align 8
  %252 = getelementptr inbounds %struct.arizona, %struct.arizona* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_c_ranges, align 8
  %255 = load i32, i32* %6, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call i32 (i32, i8*, ...) @dev_dbg(i32 %253, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %259)
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arizona_hpdet_c_ranges, align 8
  %262 = load i32, i32* %6, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %5, align 4
  br label %267

267:                                              ; preds = %250, %241, %238
  br label %278

268:                                              ; preds = %25
  %269 = load %struct.arizona*, %struct.arizona** %4, align 8
  %270 = getelementptr inbounds %struct.arizona, %struct.arizona* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %273 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @dev_warn(i32 %271, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* @EINVAL, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %2, align 4
  br label %285

278:                                              ; preds = %267, %142, %42
  %279 = load %struct.arizona*, %struct.arizona** %4, align 8
  %280 = getelementptr inbounds %struct.arizona, %struct.arizona* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %5, align 4
  %283 = call i32 (i32, i8*, ...) @dev_dbg(i32 %281, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %282)
  %284 = load i32, i32* %5, align 4
  store i32 %284, i32* %2, align 4
  br label %285

285:                                              ; preds = %278, %268, %208, %170, %136, %104, %67, %51, %34, %18
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
