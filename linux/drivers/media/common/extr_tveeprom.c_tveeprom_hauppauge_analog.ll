; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_tveeprom.c_tveeprom_hauppauge_analog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_tveeprom.c_tveeprom_hauppauge_analog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.tveeprom = type { i8, i32, i8, i8, i8, i32*, i32, i32*, i32, i32, i32, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c" none\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.tveeprom_hauppauge_analog.t_fmt_name1 = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)], align 16
@__const.tveeprom_hauppauge_analog.t_fmt_name2 = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)], align 16
@TUNER_ABSENT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"Encountered bad packet header [%02x]. Corrupt or not a Hauppauge eeprom.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Tag [%02x] + %d bytes: %*ph\0A\00", align 1
@audio_ic = common dso_local global %struct.TYPE_6__* null, align 8
@TVEEPROM_AUDPROC_OTHER = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Not sure what to do with tag [%02x]\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Ran out of data!\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"The eeprom says no radio is present, but the tuner type\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"indicates otherwise. I will assume that radio is present.\0A\00", align 1
@hauppauge_tuner = common dso_local global %struct.TYPE_6__* null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@hauppauge_tuner_fmt = common dso_local global %struct.TYPE_5__* null, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"Hauppauge model %d, rev %s, serial# %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"MAC address is %pM\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"tuner model is %s (idx %d, type %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"TV standards%s%s%s%s%s%s%s%s (eeprom 0x%02x)\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"second tuner model is %s (idx %d, type %d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"audio processor is unknown (no idx)\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"audio processor is %s (idx %d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"audio processor is unknown (idx %d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"decoder processor is %s (idx %d)\0A\00", align 1
@decoderIC = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [54 x i8] c"has %sradio, has %sIR receiver, has %sIR transmitter\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"has %sradio\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tveeprom_hauppauge_analog(%struct.tveeprom* %0, i8* %1) #0 {
  %3 = alloca %struct.tveeprom*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [8 x i8*], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca [8 x i8*], align 16
  store %struct.tveeprom* %0, %struct.tveeprom** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %21 = bitcast [8 x i8*]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([8 x i8*]* @__const.tveeprom_hauppauge_analog.t_fmt_name1 to i8*), i64 64, i1 false)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i8* null, i8** %19, align 8
  %22 = bitcast [8 x i8*]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([8 x i8*]* @__const.tveeprom_hauppauge_analog.t_fmt_name2 to i8*), i64 64, i1 false)
  %23 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %24 = call i32 @memset(%struct.tveeprom* %23, i32 0, i32 88)
  %25 = load i8*, i8** @TUNER_ABSENT, align 8
  %26 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %27 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %26, i32 0, i32 13
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @TUNER_ABSENT, align 8
  %29 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %30 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %29, i32 0, i32 12
  store i8* %28, i8** %30, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 26
  br i1 %35, label %36, label %55

36:                                               ; preds = %2
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 235
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 103
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 149
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 160, i32* %11, align 4
  br label %109

55:                                               ; preds = %48, %42, %36, %2
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 225
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %81

62:                                               ; preds = %55
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 132
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 8, i32* %11, align 4
  br label %108

81:                                               ; preds = %74, %68, %62, %55
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 112
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 4
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 116
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 132
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 8, i32* %11, align 4
  br label %107

106:                                              ; preds = %99, %93, %87, %81
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %80
  br label %109

109:                                              ; preds = %108, %54
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %601, %109
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %115, 256
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi i1 [ false, %111 ], [ %116, %114 ]
  br i1 %118, label %119, label %605

119:                                              ; preds = %117
  %120 = load i8*, i8** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 132
  br i1 %126, label %127, label %146

127:                                              ; preds = %119
  %128 = load i8*, i8** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8*, i8** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = shl i32 %141, 8
  %143 = add nsw i32 %134, %142
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 3
  store i32 %145, i32* %5, align 4
  br label %184

146:                                              ; preds = %119
  %147 = load i8*, i8** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 240
  %154 = icmp eq i32 %153, 112
  br i1 %154, label %155, label %175

155:                                              ; preds = %146
  %156 = load i8*, i8** %4, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = and i32 %161, 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  store i32 1, i32* %8, align 4
  br label %605

165:                                              ; preds = %155
  %166 = load i8*, i8** %4, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = and i32 %171, 7
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %5, align 4
  br label %183

175:                                              ; preds = %146
  %176 = load i8*, i8** %4, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  br label %956

183:                                              ; preds = %165
  br label %184

184:                                              ; preds = %183, %127
  %185 = load i8*, i8** %4, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = load i32, i32* %7, align 4
  %192 = sub nsw i32 %191, 1
  %193 = load i32, i32* %7, align 4
  %194 = load i8*, i8** %4, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %192, i32 %193, i8* %197)
  %199 = load i8*, i8** %4, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %10, align 4
  switch i32 %205, label %597 [
    i32 0, label %206
    i32 1, label %280
    i32 2, label %309
    i32 4, label %336
    i32 5, label %431
    i32 6, label %458
    i32 7, label %524
    i32 9, label %525
    i32 10, label %535
    i32 11, label %575
    i32 14, label %576
    i32 15, label %585
  ]

206:                                              ; preds = %184
  %207 = load i8*, i8** %4, align 8
  %208 = load i32, i32* %5, align 4
  %209 = add nsw i32 %208, 6
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %207, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  store i32 %213, i32* %12, align 4
  %214 = load i8*, i8** %4, align 8
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, 5
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  store i32 %220, i32* %13, align 4
  %221 = load i8*, i8** %4, align 8
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %222, %223
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %221, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %230 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %229, i32 0, i32 0
  store i8 %228, i8* %230, align 8
  %231 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %232 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %231, i32 0, i32 1
  store i32 0, i32* %232, align 4
  %233 = load i8*, i8** %4, align 8
  %234 = load i32, i32* %5, align 4
  %235 = add nsw i32 %234, 8
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = load i8*, i8** %4, align 8
  %241 = load i32, i32* %5, align 4
  %242 = add nsw i32 %241, 9
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = shl i32 %246, 8
  %248 = add nsw i32 %239, %247
  %249 = trunc i32 %248 to i8
  %250 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %251 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %250, i32 0, i32 2
  store i8 %249, i8* %251, align 8
  %252 = load i8*, i8** %4, align 8
  %253 = load i32, i32* %5, align 4
  %254 = add nsw i32 %253, 10
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %252, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = load i8*, i8** %4, align 8
  %260 = load i32, i32* %5, align 4
  %261 = add nsw i32 %260, 11
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %259, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = shl i32 %265, 8
  %267 = add nsw i32 %258, %266
  %268 = load i8*, i8** %4, align 8
  %269 = load i32, i32* %5, align 4
  %270 = add nsw i32 %269, 12
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %268, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = shl i32 %274, 16
  %276 = add nsw i32 %267, %275
  %277 = trunc i32 %276 to i8
  %278 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %279 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %278, i32 0, i32 3
  store i8 %277, i8* %279, align 1
  br label %600

280:                                              ; preds = %184
  %281 = load i8*, i8** %4, align 8
  %282 = load i32, i32* %5, align 4
  %283 = add nsw i32 %282, 6
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %281, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = load i8*, i8** %4, align 8
  %289 = load i32, i32* %5, align 4
  %290 = add nsw i32 %289, 7
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %288, i64 %291
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  %295 = shl i32 %294, 8
  %296 = add nsw i32 %287, %295
  %297 = load i8*, i8** %4, align 8
  %298 = load i32, i32* %5, align 4
  %299 = add nsw i32 %298, 8
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %297, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = shl i32 %303, 16
  %305 = add nsw i32 %296, %304
  %306 = trunc i32 %305 to i8
  %307 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %308 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %307, i32 0, i32 4
  store i8 %306, i8* %308, align 2
  br label %600

309:                                              ; preds = %184
  %310 = load i8*, i8** %4, align 8
  %311 = load i32, i32* %5, align 4
  %312 = add nsw i32 %311, 2
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %310, i64 %313
  %315 = load i8, i8* %314, align 1
  %316 = zext i8 %315 to i32
  %317 = and i32 %316, 127
  store i32 %317, i32* %14, align 4
  %318 = load i32, i32* %14, align 4
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_ic, align 8
  %320 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %319)
  %321 = icmp slt i32 %318, %320
  br i1 %321, label %322, label %331

322:                                              ; preds = %309
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_ic, align 8
  %324 = load i32, i32* %14, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 1
  %328 = load i8*, i8** %327, align 8
  %329 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %330 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %329, i32 0, i32 11
  store i8* %328, i8** %330, align 8
  br label %335

331:                                              ; preds = %309
  %332 = load i8*, i8** @TVEEPROM_AUDPROC_OTHER, align 8
  %333 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %334 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %333, i32 0, i32 11
  store i8* %332, i8** %334, align 8
  br label %335

335:                                              ; preds = %331, %322
  br label %600

336:                                              ; preds = %184
  %337 = load i8*, i8** %4, align 8
  %338 = load i32, i32* %5, align 4
  %339 = add nsw i32 %338, 5
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %337, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = zext i8 %342 to i32
  %344 = load i8*, i8** %4, align 8
  %345 = load i32, i32* %5, align 4
  %346 = add nsw i32 %345, 6
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, i8* %344, i64 %347
  %349 = load i8, i8* %348, align 1
  %350 = zext i8 %349 to i32
  %351 = shl i32 %350, 8
  %352 = add nsw i32 %343, %351
  %353 = load i8*, i8** %4, align 8
  %354 = load i32, i32* %5, align 4
  %355 = add nsw i32 %354, 7
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %353, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = shl i32 %359, 16
  %361 = add nsw i32 %352, %360
  %362 = load i8*, i8** %4, align 8
  %363 = load i32, i32* %5, align 4
  %364 = add nsw i32 %363, 8
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* %362, i64 %365
  %367 = load i8, i8* %366, align 1
  %368 = zext i8 %367 to i32
  %369 = shl i32 %368, 24
  %370 = add nsw i32 %361, %369
  %371 = trunc i32 %370 to i8
  %372 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %373 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %372, i32 0, i32 4
  store i8 %371, i8* %373, align 2
  %374 = load i8*, i8** %4, align 8
  %375 = load i32, i32* %5, align 4
  %376 = add nsw i32 %375, 8
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, i8* %374, i64 %377
  %379 = load i8, i8* %378, align 1
  %380 = zext i8 %379 to i32
  %381 = icmp eq i32 %380, 240
  br i1 %381, label %382, label %430

382:                                              ; preds = %336
  %383 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %384 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %383, i32 0, i32 5
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 0
  store i32 0, i32* %386, align 4
  %387 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %388 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %387, i32 0, i32 5
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 1
  store i32 13, i32* %390, align 4
  %391 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %392 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %391, i32 0, i32 5
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 2
  store i32 254, i32* %394, align 4
  %395 = load i8*, i8** %4, align 8
  %396 = load i32, i32* %5, align 4
  %397 = add nsw i32 %396, 7
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %395, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = zext i8 %400 to i32
  %402 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %403 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %402, i32 0, i32 5
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 3
  store i32 %401, i32* %405, align 4
  %406 = load i8*, i8** %4, align 8
  %407 = load i32, i32* %5, align 4
  %408 = add nsw i32 %407, 6
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, i8* %406, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  %413 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %414 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %413, i32 0, i32 5
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 4
  store i32 %412, i32* %416, align 4
  %417 = load i8*, i8** %4, align 8
  %418 = load i32, i32* %5, align 4
  %419 = add nsw i32 %418, 5
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, i8* %417, i64 %420
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  %424 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %425 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %424, i32 0, i32 5
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 5
  store i32 %423, i32* %427, align 4
  %428 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %429 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %428, i32 0, i32 6
  store i32 1, i32* %429, align 8
  br label %430

430:                                              ; preds = %382, %336
  br label %600

431:                                              ; preds = %184
  %432 = load i8*, i8** %4, align 8
  %433 = load i32, i32* %5, align 4
  %434 = add nsw i32 %433, 1
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, i8* %432, i64 %435
  %437 = load i8, i8* %436, align 1
  %438 = zext i8 %437 to i32
  %439 = and i32 %438, 127
  store i32 %439, i32* %14, align 4
  %440 = load i32, i32* %14, align 4
  %441 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_ic, align 8
  %442 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %441)
  %443 = icmp slt i32 %440, %442
  br i1 %443, label %444, label %453

444:                                              ; preds = %431
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_ic, align 8
  %446 = load i32, i32* %14, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i32 0, i32 1
  %450 = load i8*, i8** %449, align 8
  %451 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %452 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %451, i32 0, i32 11
  store i8* %450, i8** %452, align 8
  br label %457

453:                                              ; preds = %431
  %454 = load i8*, i8** @TVEEPROM_AUDPROC_OTHER, align 8
  %455 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %456 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %455, i32 0, i32 11
  store i8* %454, i8** %456, align 8
  br label %457

457:                                              ; preds = %453, %444
  br label %600

458:                                              ; preds = %184
  %459 = load i8*, i8** %4, align 8
  %460 = load i32, i32* %5, align 4
  %461 = add nsw i32 %460, 1
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i8, i8* %459, i64 %462
  %464 = load i8, i8* %463, align 1
  %465 = zext i8 %464 to i32
  %466 = load i8*, i8** %4, align 8
  %467 = load i32, i32* %5, align 4
  %468 = add nsw i32 %467, 2
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i8, i8* %466, i64 %469
  %471 = load i8, i8* %470, align 1
  %472 = zext i8 %471 to i32
  %473 = shl i32 %472, 8
  %474 = add nsw i32 %465, %473
  %475 = load i8*, i8** %4, align 8
  %476 = load i32, i32* %5, align 4
  %477 = add nsw i32 %476, 3
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, i8* %475, i64 %478
  %480 = load i8, i8* %479, align 1
  %481 = zext i8 %480 to i32
  %482 = shl i32 %481, 16
  %483 = add nsw i32 %474, %482
  %484 = load i8*, i8** %4, align 8
  %485 = load i32, i32* %5, align 4
  %486 = add nsw i32 %485, 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i8, i8* %484, i64 %487
  %489 = load i8, i8* %488, align 1
  %490 = zext i8 %489 to i32
  %491 = shl i32 %490, 24
  %492 = add nsw i32 %483, %491
  %493 = trunc i32 %492 to i8
  %494 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %495 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %494, i32 0, i32 2
  store i8 %493, i8* %495, align 8
  %496 = load i8*, i8** %4, align 8
  %497 = load i32, i32* %5, align 4
  %498 = add nsw i32 %497, 5
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i8, i8* %496, i64 %499
  %501 = load i8, i8* %500, align 1
  %502 = zext i8 %501 to i32
  %503 = load i8*, i8** %4, align 8
  %504 = load i32, i32* %5, align 4
  %505 = add nsw i32 %504, 6
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i8, i8* %503, i64 %506
  %508 = load i8, i8* %507, align 1
  %509 = zext i8 %508 to i32
  %510 = shl i32 %509, 8
  %511 = add nsw i32 %502, %510
  %512 = load i8*, i8** %4, align 8
  %513 = load i32, i32* %5, align 4
  %514 = add nsw i32 %513, 7
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i8, i8* %512, i64 %515
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i32
  %519 = shl i32 %518, 16
  %520 = add nsw i32 %511, %519
  %521 = trunc i32 %520 to i8
  %522 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %523 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %522, i32 0, i32 3
  store i8 %521, i8* %523, align 1
  br label %600

524:                                              ; preds = %184
  br label %600

525:                                              ; preds = %184
  %526 = load i8*, i8** %4, align 8
  %527 = load i32, i32* %5, align 4
  %528 = add nsw i32 %527, 1
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i8, i8* %526, i64 %529
  %531 = load i8, i8* %530, align 1
  %532 = zext i8 %531 to i32
  %533 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %534 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %533, i32 0, i32 10
  store i32 %532, i32* %534, align 8
  br label %600

535:                                              ; preds = %184
  %536 = load i32, i32* %9, align 4
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %553

538:                                              ; preds = %535
  %539 = load i8*, i8** %4, align 8
  %540 = load i32, i32* %5, align 4
  %541 = add nsw i32 %540, 2
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i8, i8* %539, i64 %542
  %544 = load i8, i8* %543, align 1
  %545 = zext i8 %544 to i32
  store i32 %545, i32* %12, align 4
  %546 = load i8*, i8** %4, align 8
  %547 = load i32, i32* %5, align 4
  %548 = add nsw i32 %547, 1
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i8, i8* %546, i64 %549
  %551 = load i8, i8* %550, align 1
  %552 = zext i8 %551 to i32
  store i32 %552, i32* %13, align 4
  store i32 1, i32* %9, align 4
  br label %574

553:                                              ; preds = %535
  %554 = load i8*, i8** %4, align 8
  %555 = load i32, i32* %5, align 4
  %556 = add nsw i32 %555, 2
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i8, i8* %554, i64 %557
  %559 = load i8, i8* %558, align 1
  %560 = zext i8 %559 to i32
  store i32 %560, i32* %17, align 4
  %561 = load i8*, i8** %4, align 8
  %562 = load i32, i32* %5, align 4
  %563 = add nsw i32 %562, 1
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i8, i8* %561, i64 %564
  %566 = load i8, i8* %565, align 1
  %567 = zext i8 %566 to i32
  store i32 %567, i32* %18, align 4
  %568 = load i32, i32* %18, align 4
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %573

570:                                              ; preds = %553
  %571 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %572 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %571, i32 0, i32 0
  store i8 1, i8* %572, align 8
  br label %573

573:                                              ; preds = %570, %553
  br label %574

574:                                              ; preds = %573, %538
  br label %600

575:                                              ; preds = %184
  br label %600

576:                                              ; preds = %184
  %577 = load i8*, i8** %4, align 8
  %578 = load i32, i32* %5, align 4
  %579 = add nsw i32 %578, 1
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i8, i8* %577, i64 %580
  %582 = load i8, i8* %581, align 1
  %583 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %584 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %583, i32 0, i32 0
  store i8 %582, i8* %584, align 8
  br label %600

585:                                              ; preds = %184
  %586 = load i8*, i8** %4, align 8
  %587 = load i32, i32* %5, align 4
  %588 = add nsw i32 %587, 1
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i8, i8* %586, i64 %589
  %591 = load i8, i8* %590, align 1
  %592 = zext i8 %591 to i32
  %593 = shl i32 %592, 1
  %594 = or i32 1, %593
  %595 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %596 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %595, i32 0, i32 1
  store i32 %594, i32* %596, align 4
  br label %600

597:                                              ; preds = %184
  %598 = load i32, i32* %10, align 4
  %599 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %598)
  br label %600

600:                                              ; preds = %597, %585, %576, %575, %574, %525, %524, %458, %457, %430, %335, %280, %206
  br label %601

601:                                              ; preds = %600
  %602 = load i32, i32* %7, align 4
  %603 = load i32, i32* %5, align 4
  %604 = add nsw i32 %603, %602
  store i32 %604, i32* %5, align 4
  br label %111

605:                                              ; preds = %164, %117
  %606 = load i32, i32* %8, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %610, label %608

608:                                              ; preds = %605
  %609 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %956

610:                                              ; preds = %605
  %611 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %612 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %611, i32 0, i32 3
  %613 = load i8, i8* %612, align 1
  %614 = zext i8 %613 to i32
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %664

616:                                              ; preds = %610
  %617 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %618 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %617, i32 0, i32 3
  %619 = load i8, i8* %618, align 1
  %620 = zext i8 %619 to i32
  %621 = ashr i32 %620, 18
  %622 = and i32 %621, 63
  %623 = add nsw i32 32, %622
  %624 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %625 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %624, i32 0, i32 7
  %626 = load i32*, i32** %625, align 8
  %627 = getelementptr inbounds i32, i32* %626, i64 0
  store i32 %623, i32* %627, align 4
  %628 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %629 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %628, i32 0, i32 3
  %630 = load i8, i8* %629, align 1
  %631 = zext i8 %630 to i32
  %632 = ashr i32 %631, 12
  %633 = and i32 %632, 63
  %634 = add nsw i32 32, %633
  %635 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %636 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %635, i32 0, i32 7
  %637 = load i32*, i32** %636, align 8
  %638 = getelementptr inbounds i32, i32* %637, i64 1
  store i32 %634, i32* %638, align 4
  %639 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %640 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %639, i32 0, i32 3
  %641 = load i8, i8* %640, align 1
  %642 = zext i8 %641 to i32
  %643 = ashr i32 %642, 6
  %644 = and i32 %643, 63
  %645 = add nsw i32 32, %644
  %646 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %647 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %646, i32 0, i32 7
  %648 = load i32*, i32** %647, align 8
  %649 = getelementptr inbounds i32, i32* %648, i64 2
  store i32 %645, i32* %649, align 4
  %650 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %651 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %650, i32 0, i32 3
  %652 = load i8, i8* %651, align 1
  %653 = zext i8 %652 to i32
  %654 = and i32 %653, 63
  %655 = add nsw i32 32, %654
  %656 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %657 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %656, i32 0, i32 7
  %658 = load i32*, i32** %657, align 8
  %659 = getelementptr inbounds i32, i32* %658, i64 3
  store i32 %655, i32* %659, align 4
  %660 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %661 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %660, i32 0, i32 7
  %662 = load i32*, i32** %661, align 8
  %663 = getelementptr inbounds i32, i32* %662, i64 4
  store i32 0, i32* %663, align 4
  br label %664

664:                                              ; preds = %616, %610
  %665 = load i32, i32* %12, align 4
  %666 = call i64 @hasRadioTuner(i32 %665)
  %667 = icmp ne i64 %666, 0
  br i1 %667, label %668, label %678

668:                                              ; preds = %664
  %669 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %670 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %669, i32 0, i32 0
  %671 = load i8, i8* %670, align 8
  %672 = icmp ne i8 %671, 0
  br i1 %672, label %678, label %673

673:                                              ; preds = %668
  %674 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %675 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %676 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %677 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %676, i32 0, i32 0
  store i8 1, i8* %677, align 8
  br label %678

678:                                              ; preds = %673, %668, %664
  %679 = load i32, i32* %12, align 4
  %680 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hauppauge_tuner, align 8
  %681 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %680)
  %682 = icmp slt i32 %679, %681
  br i1 %682, label %683, label %698

683:                                              ; preds = %678
  %684 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hauppauge_tuner, align 8
  %685 = load i32, i32* %12, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %684, i64 %686
  %688 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %687, i32 0, i32 1
  %689 = load i8*, i8** %688, align 8
  %690 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %691 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %690, i32 0, i32 13
  store i8* %689, i8** %691, align 8
  %692 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hauppauge_tuner, align 8
  %693 = load i32, i32* %12, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %692, i64 %694
  %696 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %695, i32 0, i32 0
  %697 = load i8*, i8** %696, align 8
  store i8* %697, i8** %15, align 8
  br label %699

698:                                              ; preds = %678
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %15, align 8
  br label %699

699:                                              ; preds = %698, %683
  %700 = load i32, i32* %17, align 4
  %701 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hauppauge_tuner, align 8
  %702 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %701)
  %703 = icmp slt i32 %700, %702
  br i1 %703, label %704, label %719

704:                                              ; preds = %699
  %705 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hauppauge_tuner, align 8
  %706 = load i32, i32* %17, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %705, i64 %707
  %709 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %708, i32 0, i32 1
  %710 = load i8*, i8** %709, align 8
  %711 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %712 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %711, i32 0, i32 12
  store i8* %710, i8** %712, align 8
  %713 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hauppauge_tuner, align 8
  %714 = load i32, i32* %17, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %713, i64 %715
  %717 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %716, i32 0, i32 0
  %718 = load i8*, i8** %717, align 8
  store i8* %718, i8** %19, align 8
  br label %720

719:                                              ; preds = %699
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %19, align 8
  br label %720

720:                                              ; preds = %719, %704
  %721 = load i32, i32* %12, align 4
  %722 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %723 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %722, i32 0, i32 8
  store i32 %721, i32* %723, align 8
  %724 = load i32, i32* %17, align 4
  %725 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %726 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %725, i32 0, i32 9
  store i32 %724, i32* %726, align 4
  %727 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %728 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %727, i32 0, i32 15
  store i32 0, i32* %728, align 4
  %729 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %730 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %729, i32 0, i32 14
  store i32 0, i32* %730, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %731

731:                                              ; preds = %762, %720
  %732 = load i32, i32* %5, align 4
  %733 = icmp slt i32 %732, 8
  br i1 %733, label %734, label %765

734:                                              ; preds = %731
  %735 = load i32, i32* %13, align 4
  %736 = load i32, i32* %5, align 4
  %737 = shl i32 1, %736
  %738 = and i32 %735, %737
  %739 = icmp ne i32 %738, 0
  br i1 %739, label %740, label %761

740:                                              ; preds = %734
  %741 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hauppauge_tuner_fmt, align 8
  %742 = load i32, i32* %5, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %741, i64 %743
  %745 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %744, i32 0, i32 1
  %746 = load i32, i32* %745, align 8
  %747 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %748 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %747, i32 0, i32 15
  %749 = load i32, i32* %748, align 4
  %750 = or i32 %749, %746
  store i32 %750, i32* %748, align 4
  %751 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hauppauge_tuner_fmt, align 8
  %752 = load i32, i32* %5, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %751, i64 %753
  %755 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %754, i32 0, i32 0
  %756 = load i8*, i8** %755, align 8
  %757 = load i32, i32* %6, align 4
  %758 = add nsw i32 %757, 1
  store i32 %758, i32* %6, align 4
  %759 = sext i32 %757 to i64
  %760 = getelementptr inbounds [8 x i8*], [8 x i8*]* %16, i64 0, i64 %759
  store i8* %756, i8** %760, align 8
  br label %761

761:                                              ; preds = %740, %734
  br label %762

762:                                              ; preds = %761
  %763 = load i32, i32* %5, align 4
  %764 = add nsw i32 %763, 1
  store i32 %764, i32* %5, align 4
  br label %731

765:                                              ; preds = %731
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %766

766:                                              ; preds = %797, %765
  %767 = load i32, i32* %5, align 4
  %768 = icmp slt i32 %767, 8
  br i1 %768, label %769, label %800

769:                                              ; preds = %766
  %770 = load i32, i32* %18, align 4
  %771 = load i32, i32* %5, align 4
  %772 = shl i32 1, %771
  %773 = and i32 %770, %772
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %796

775:                                              ; preds = %769
  %776 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hauppauge_tuner_fmt, align 8
  %777 = load i32, i32* %5, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %776, i64 %778
  %780 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %779, i32 0, i32 1
  %781 = load i32, i32* %780, align 8
  %782 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %783 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %782, i32 0, i32 14
  %784 = load i32, i32* %783, align 8
  %785 = or i32 %784, %781
  store i32 %785, i32* %783, align 8
  %786 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hauppauge_tuner_fmt, align 8
  %787 = load i32, i32* %5, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %786, i64 %788
  %790 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %789, i32 0, i32 0
  %791 = load i8*, i8** %790, align 8
  %792 = load i32, i32* %6, align 4
  %793 = add nsw i32 %792, 1
  store i32 %793, i32* %6, align 4
  %794 = sext i32 %792 to i64
  %795 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 %794
  store i8* %791, i8** %795, align 8
  br label %796

796:                                              ; preds = %775, %769
  br label %797

797:                                              ; preds = %796
  %798 = load i32, i32* %5, align 4
  %799 = add nsw i32 %798, 1
  store i32 %799, i32* %5, align 4
  br label %766

800:                                              ; preds = %766
  %801 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %802 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %801, i32 0, i32 2
  %803 = load i8, i8* %802, align 8
  %804 = zext i8 %803 to i32
  %805 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %806 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %805, i32 0, i32 7
  %807 = load i32*, i32** %806, align 8
  %808 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %809 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %808, i32 0, i32 4
  %810 = load i8, i8* %809, align 2
  %811 = zext i8 %810 to i32
  %812 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %804, i32* %807, i32 %811)
  %813 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %814 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %813, i32 0, i32 6
  %815 = load i32, i32* %814, align 8
  %816 = icmp eq i32 %815, 1
  br i1 %816, label %817, label %822

817:                                              ; preds = %800
  %818 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %819 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %818, i32 0, i32 5
  %820 = load i32*, i32** %819, align 8
  %821 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32* %820)
  br label %822

822:                                              ; preds = %817, %800
  %823 = load i8*, i8** %15, align 8
  %824 = load i32, i32* %12, align 4
  %825 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %826 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %825, i32 0, i32 13
  %827 = load i8*, i8** %826, align 8
  %828 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i8* %823, i32 %824, i8* %827)
  %829 = getelementptr inbounds [8 x i8*], [8 x i8*]* %16, i64 0, i64 0
  %830 = load i8*, i8** %829, align 16
  %831 = getelementptr inbounds [8 x i8*], [8 x i8*]* %16, i64 0, i64 1
  %832 = load i8*, i8** %831, align 8
  %833 = getelementptr inbounds [8 x i8*], [8 x i8*]* %16, i64 0, i64 2
  %834 = load i8*, i8** %833, align 16
  %835 = getelementptr inbounds [8 x i8*], [8 x i8*]* %16, i64 0, i64 3
  %836 = load i8*, i8** %835, align 8
  %837 = getelementptr inbounds [8 x i8*], [8 x i8*]* %16, i64 0, i64 4
  %838 = load i8*, i8** %837, align 16
  %839 = getelementptr inbounds [8 x i8*], [8 x i8*]* %16, i64 0, i64 5
  %840 = load i8*, i8** %839, align 8
  %841 = getelementptr inbounds [8 x i8*], [8 x i8*]* %16, i64 0, i64 6
  %842 = load i8*, i8** %841, align 16
  %843 = getelementptr inbounds [8 x i8*], [8 x i8*]* %16, i64 0, i64 7
  %844 = load i8*, i8** %843, align 8
  %845 = load i32, i32* %13, align 4
  %846 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i8* %830, i8* %832, i8* %834, i8* %836, i8* %838, i8* %840, i8* %842, i8* %844, i32 %845)
  %847 = load i32, i32* %17, align 4
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %849, label %856

849:                                              ; preds = %822
  %850 = load i8*, i8** %19, align 8
  %851 = load i32, i32* %17, align 4
  %852 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %853 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %852, i32 0, i32 12
  %854 = load i8*, i8** %853, align 8
  %855 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i8* %850, i32 %851, i8* %854)
  br label %856

856:                                              ; preds = %849, %822
  %857 = load i32, i32* %18, align 4
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %859, label %878

859:                                              ; preds = %856
  %860 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 0
  %861 = load i8*, i8** %860, align 16
  %862 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 1
  %863 = load i8*, i8** %862, align 8
  %864 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 2
  %865 = load i8*, i8** %864, align 16
  %866 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 3
  %867 = load i8*, i8** %866, align 8
  %868 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 4
  %869 = load i8*, i8** %868, align 16
  %870 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 5
  %871 = load i8*, i8** %870, align 8
  %872 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 6
  %873 = load i8*, i8** %872, align 16
  %874 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 7
  %875 = load i8*, i8** %874, align 8
  %876 = load i32, i32* %18, align 4
  %877 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i8* %861, i8* %863, i8* %865, i8* %867, i8* %869, i8* %871, i8* %873, i8* %875, i32 %876)
  br label %878

878:                                              ; preds = %859, %856
  %879 = load i32, i32* %14, align 4
  %880 = icmp slt i32 %879, 0
  br i1 %880, label %881, label %886

881:                                              ; preds = %878
  %882 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %883 = load i8*, i8** @TVEEPROM_AUDPROC_OTHER, align 8
  %884 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %885 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %884, i32 0, i32 11
  store i8* %883, i8** %885, align 8
  br label %904

886:                                              ; preds = %878
  %887 = load i32, i32* %14, align 4
  %888 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_ic, align 8
  %889 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %888)
  %890 = icmp slt i32 %887, %889
  br i1 %890, label %891, label %900

891:                                              ; preds = %886
  %892 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_ic, align 8
  %893 = load i32, i32* %14, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %892, i64 %894
  %896 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %895, i32 0, i32 0
  %897 = load i8*, i8** %896, align 8
  %898 = load i32, i32* %14, align 4
  %899 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* %897, i32 %898)
  br label %903

900:                                              ; preds = %886
  %901 = load i32, i32* %14, align 4
  %902 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %901)
  br label %903

903:                                              ; preds = %900, %891
  br label %904

904:                                              ; preds = %903, %881
  %905 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %906 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %905, i32 0, i32 10
  %907 = load i32, i32* %906, align 8
  %908 = icmp ne i32 %907, 0
  br i1 %908, label %909, label %919

909:                                              ; preds = %904
  %910 = load i32, i32* @decoderIC, align 4
  %911 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %912 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %911, i32 0, i32 10
  %913 = load i32, i32* %912, align 8
  %914 = call i32 @STRM(i32 %910, i32 %913)
  %915 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %916 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %915, i32 0, i32 10
  %917 = load i32, i32* %916, align 8
  %918 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %914, i32 %917)
  br label %919

919:                                              ; preds = %909, %904
  %920 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %921 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %920, i32 0, i32 1
  %922 = load i32, i32* %921, align 4
  %923 = icmp ne i32 %922, 0
  br i1 %923, label %924, label %947

924:                                              ; preds = %919
  %925 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %926 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %925, i32 0, i32 0
  %927 = load i8, i8* %926, align 8
  %928 = zext i8 %927 to i32
  %929 = icmp ne i32 %928, 0
  %930 = zext i1 %929 to i64
  %931 = select i1 %929, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)
  %932 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %933 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %932, i32 0, i32 1
  %934 = load i32, i32* %933, align 4
  %935 = and i32 %934, 2
  %936 = icmp ne i32 %935, 0
  %937 = zext i1 %936 to i64
  %938 = select i1 %936, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)
  %939 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %940 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %939, i32 0, i32 1
  %941 = load i32, i32* %940, align 4
  %942 = and i32 %941, 4
  %943 = icmp ne i32 %942, 0
  %944 = zext i1 %943 to i64
  %945 = select i1 %943, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)
  %946 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i8* %931, i8* %938, i8* %945)
  br label %956

947:                                              ; preds = %919
  %948 = load %struct.tveeprom*, %struct.tveeprom** %3, align 8
  %949 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %948, i32 0, i32 0
  %950 = load i8, i8* %949, align 8
  %951 = zext i8 %950 to i32
  %952 = icmp ne i32 %951, 0
  %953 = zext i1 %952 to i64
  %954 = select i1 %952, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)
  %955 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %954)
  br label %956

956:                                              ; preds = %175, %608, %947, %924
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.tveeprom*, i32, i32) #2

declare dso_local i32 @pr_warn(i8*, ...) #2

declare dso_local i32 @pr_debug(i8*, i32, ...) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #2

declare dso_local i64 @hasRadioTuner(i32) #2

declare dso_local i32 @pr_info(i8*, ...) #2

declare dso_local i32 @STRM(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
