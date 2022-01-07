; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.af9033_dev* }
%struct.dtv_frontend_properties = type { %struct.TYPE_13__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i8* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.af9033_dev = type { i32, i32, i32, i32, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"cnr=%u\0A\00", align 1
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @af9033_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9033_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.af9033_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [7 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1
  %19 = load %struct.af9033_dev*, %struct.af9033_dev** %18, align 8
  store %struct.af9033_dev* %19, %struct.af9033_dev** %6, align 8
  %20 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %21 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %20, i32 0, i32 7
  %22 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  store %struct.i2c_client* %22, %struct.i2c_client** %7, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 0
  store %struct.dtv_frontend_properties* %24, %struct.dtv_frontend_properties** %8, align 8
  store i32 0, i32* %10, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %5, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %30 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_read(i32 %31, i32 8388679, i32* %12)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %455

36:                                               ; preds = %2
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %96

47:                                               ; preds = %44
  %48 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %49 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regmap_read(i32 %50, i32 8451497, i32* %12)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %455

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = lshr i32 %56, 0
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %62 = load i32, i32* @FE_HAS_CARRIER, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @FE_HAS_VITERBI, align 4
  %65 = or i32 %63, %64
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %60, %55
  %70 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %71 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @regmap_read(i32 %72, i32 8452505, i32* %12)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %455

77:                                               ; preds = %69
  %78 = load i32, i32* %12, align 4
  %79 = lshr i32 %78, 0
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %84 = load i32, i32* @FE_HAS_CARRIER, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @FE_HAS_VITERBI, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @FE_HAS_SYNC, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @FE_HAS_LOCK, align 4
  %91 = or i32 %89, %90
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %82, %77
  br label %96

96:                                               ; preds = %95, %44
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %100 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %102 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %154

107:                                              ; preds = %96
  %108 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %109 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %114 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @regmap_read(i32 %115, i32 8388682, i32* %12)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %455

120:                                              ; preds = %112
  %121 = load i32, i32* %12, align 4
  %122 = sub i32 0, %121
  %123 = mul i32 %122, 1000
  store i32 %123, i32* %10, align 4
  br label %136

124:                                              ; preds = %107
  %125 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %126 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @regmap_read(i32 %127, i32 8388855, i32* %12)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %455

132:                                              ; preds = %124
  %133 = load i32, i32* %12, align 4
  %134 = sub i32 %133, 100
  %135 = mul i32 %134, 1000
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %132, %120
  %137 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %138 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %141 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %142 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  store i8* %140, i8** %146, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %149 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  store i32 %147, i32* %153, align 8
  br label %165

154:                                              ; preds = %96
  %155 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %159 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %160 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  store i8* %158, i8** %164, align 8
  br label %165

165:                                              ; preds = %154, %136
  %166 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %167 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @FE_HAS_VITERBI, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %307

172:                                              ; preds = %165
  %173 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %174 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %177 = call i32 @regmap_bulk_read(i32 %175, i32 8388652, i32* %176, i32 3)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %455

181:                                              ; preds = %172
  %182 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 2
  %183 = load i32, i32* %182, align 8
  %184 = shl i32 %183, 16
  %185 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 8
  %188 = or i32 %184, %187
  %189 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %190 = load i32, i32* %189, align 16
  %191 = shl i32 %190, 0
  %192 = or i32 %188, %191
  store i32 %192, i32* %13, align 4
  %193 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %194 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @regmap_read(i32 %195, i32 8451979, i32* %12)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %181
  br label %455

200:                                              ; preds = %181
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %13, align 4
  %206 = udiv i32 %205, %204
  store i32 %206, i32* %13, align 4
  br label %207

207:                                              ; preds = %203, %200
  %208 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %209 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @regmap_read(i32 %210, i32 8452352, i32* %12)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %207
  br label %455

215:                                              ; preds = %207
  %216 = load i32, i32* %12, align 4
  %217 = lshr i32 %216, 0
  %218 = and i32 %217, 3
  switch i32 %218, label %228 [
    i32 0, label %219
    i32 1, label %222
    i32 2, label %225
  ]

219:                                              ; preds = %215
  %220 = load i32, i32* %13, align 4
  %221 = mul i32 %220, 4
  store i32 %221, i32* %13, align 4
  br label %231

222:                                              ; preds = %215
  %223 = load i32, i32* %13, align 4
  %224 = mul i32 %223, 1
  store i32 %224, i32* %13, align 4
  br label %231

225:                                              ; preds = %215
  %226 = load i32, i32* %13, align 4
  %227 = mul i32 %226, 2
  store i32 %227, i32* %13, align 4
  br label %231

228:                                              ; preds = %215
  %229 = load i32, i32* %13, align 4
  %230 = mul i32 %229, 0
  store i32 %230, i32* %13, align 4
  br label %231

231:                                              ; preds = %228, %225, %222, %219
  %232 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %233 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @regmap_read(i32 %234, i32 8452355, i32* %12)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %455

239:                                              ; preds = %231
  %240 = load i32, i32* %12, align 4
  %241 = lshr i32 %240, 0
  %242 = and i32 %241, 3
  switch i32 %242, label %287 [
    i32 0, label %243
    i32 1, label %257
    i32 2, label %272
  ]

243:                                              ; preds = %239
  %244 = load i32, i32* %13, align 4
  %245 = call i32 @clamp(i32 %244, i32 653799, i32 1689999)
  store i32 %245, i32* %13, align 4
  %246 = load i32, i32* %13, align 4
  %247 = call i64 @intlog10(i32 %246)
  %248 = load i32, i32* %13, align 4
  %249 = sub i32 1690000, %248
  %250 = call i64 @intlog10(i32 %249)
  %251 = sub nsw i64 %247, %250
  %252 = add nsw i64 %251, 3355443
  %253 = trunc i64 %252 to i32
  %254 = mul nsw i32 %253, 13
  %255 = mul nsw i32 %254, 1000
  %256 = ashr i32 %255, 24
  store i32 %256, i32* %13, align 4
  br label %288

257:                                              ; preds = %239
  %258 = load i32, i32* %13, align 4
  %259 = call i32 @clamp(i32 %258, i32 371105, i32 827999)
  store i32 %259, i32* %13, align 4
  %260 = load i32, i32* %13, align 4
  %261 = sub i32 %260, 370000
  %262 = call i64 @intlog10(i32 %261)
  %263 = load i32, i32* %13, align 4
  %264 = sub i32 828000, %263
  %265 = call i64 @intlog10(i32 %264)
  %266 = sub nsw i64 %262, %265
  %267 = add nsw i64 %266, 43900382
  %268 = trunc i64 %267 to i32
  %269 = mul nsw i32 %268, 6
  %270 = mul nsw i32 %269, 1000
  %271 = ashr i32 %270, 24
  store i32 %271, i32* %13, align 4
  br label %288

272:                                              ; preds = %239
  %273 = load i32, i32* %13, align 4
  %274 = call i32 @clamp(i32 %273, i32 193246, i32 424999)
  store i32 %274, i32* %13, align 4
  %275 = load i32, i32* %13, align 4
  %276 = sub i32 %275, 193000
  %277 = call i64 @intlog10(i32 %276)
  %278 = load i32, i32* %13, align 4
  %279 = sub i32 425000, %278
  %280 = call i64 @intlog10(i32 %279)
  %281 = sub nsw i64 %277, %280
  %282 = add nsw i64 %281, 49912218
  %283 = trunc i64 %282 to i32
  %284 = mul nsw i32 %283, 8
  %285 = mul nsw i32 %284, 1000
  %286 = ashr i32 %285, 24
  store i32 %286, i32* %13, align 4
  br label %288

287:                                              ; preds = %239
  store i32 0, i32* %13, align 4
  br label %288

288:                                              ; preds = %287, %272, %257, %243
  %289 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %290 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %289, i32 0, i32 0
  %291 = load i32, i32* %13, align 4
  %292 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %290, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %291)
  %293 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %294 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %295 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %294, i32 0, i32 4
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i64 0
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 1
  store i8* %293, i8** %299, align 8
  %300 = load i32, i32* %13, align 4
  %301 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %302 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %301, i32 0, i32 4
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i64 0
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  store i32 %300, i32* %306, align 8
  br label %315

307:                                              ; preds = %165
  %308 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %309 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %310 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i64 0
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 1
  store i8* %308, i8** %314, align 8
  br label %315

315:                                              ; preds = %307, %288
  %316 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %317 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @FE_HAS_LOCK, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %454

322:                                              ; preds = %315
  %323 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %324 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %327 = call i32 @regmap_bulk_read(i32 %325, i32 8388658, i32* %326, i32 7)
  store i32 %327, i32* %9, align 4
  %328 = load i32, i32* %9, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %322
  br label %455

331:                                              ; preds = %322
  %332 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 1
  %333 = load i32, i32* %332, align 4
  %334 = shl i32 %333, 8
  %335 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %336 = load i32, i32* %335, align 16
  %337 = shl i32 %336, 0
  %338 = or i32 %334, %337
  store i32 %338, i32* %14, align 4
  %339 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 4
  %340 = load i32, i32* %339, align 16
  %341 = shl i32 %340, 16
  %342 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 3
  %343 = load i32, i32* %342, align 4
  %344 = shl i32 %343, 8
  %345 = or i32 %341, %344
  %346 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 2
  %347 = load i32, i32* %346, align 8
  %348 = or i32 %345, %347
  store i32 %348, i32* %16, align 4
  %349 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 6
  %350 = load i32, i32* %349, align 8
  %351 = shl i32 %350, 8
  %352 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 5
  %353 = load i32, i32* %352, align 4
  %354 = shl i32 %353, 0
  %355 = or i32 %351, %354
  store i32 %355, i32* %15, align 4
  %356 = load i32, i32* %14, align 4
  %357 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %358 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = add nsw i32 %359, %356
  store i32 %360, i32* %358, align 4
  %361 = load i32, i32* %15, align 4
  %362 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %363 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = add nsw i32 %364, %361
  store i32 %365, i32* %363, align 8
  %366 = load i32, i32* %16, align 4
  %367 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %368 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %369, %366
  store i32 %370, i32* %368, align 4
  %371 = load i32, i32* %15, align 4
  %372 = mul nsw i32 %371, 204
  %373 = mul nsw i32 %372, 8
  %374 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %375 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 8
  %377 = add nsw i32 %376, %373
  store i32 %377, i32* %375, align 8
  %378 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %379 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %379, i32 0, i32 0
  store i32 1, i32* %380, align 8
  %381 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %382 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %383 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_18__*, %struct.TYPE_18__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %385, i64 0
  %387 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %386, i32 0, i32 1
  store i8* %381, i8** %387, align 8
  %388 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %389 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %392 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %391, i32 0, i32 3
  %393 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i64 0
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 0
  store i32 %390, i32* %396, align 8
  %397 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %398 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %398, i32 0, i32 0
  store i32 1, i32* %399, align 8
  %400 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %401 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %402 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %402, i32 0, i32 1
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i64 0
  %406 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %405, i32 0, i32 1
  store i8* %400, i8** %406, align 8
  %407 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %408 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %411 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i32 0, i32 1
  %413 = load %struct.TYPE_20__*, %struct.TYPE_20__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %413, i64 0
  %415 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %414, i32 0, i32 0
  store i32 %409, i32* %415, align 8
  %416 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %417 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %417, i32 0, i32 0
  store i32 1, i32* %418, align 8
  %419 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %420 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %421 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 1
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i64 0
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 1
  store i8* %419, i8** %425, align 8
  %426 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %427 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %426, i32 0, i32 4
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %430 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %430, i32 0, i32 1
  %432 = load %struct.TYPE_22__*, %struct.TYPE_22__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %432, i64 0
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 0
  store i32 %428, i32* %434, align 8
  %435 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %436 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 0
  store i32 1, i32* %437, align 8
  %438 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %439 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %440 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 1
  %442 = load %struct.TYPE_24__*, %struct.TYPE_24__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %442, i64 0
  %444 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %443, i32 0, i32 1
  store i8* %438, i8** %444, align 8
  %445 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %446 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %449 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i32 0, i32 1
  %451 = load %struct.TYPE_24__*, %struct.TYPE_24__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %451, i64 0
  %453 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %452, i32 0, i32 0
  store i32 %447, i32* %453, align 8
  br label %454

454:                                              ; preds = %331, %315
  store i32 0, i32* %3, align 4
  br label %461

455:                                              ; preds = %330, %238, %214, %199, %180, %131, %119, %76, %54, %35
  %456 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %457 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %456, i32 0, i32 0
  %458 = load i32, i32* %9, align 4
  %459 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %457, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %458)
  %460 = load i32, i32* %9, align 4
  store i32 %460, i32* %3, align 4
  br label %461

461:                                              ; preds = %455, %454
  %462 = load i32, i32* %3, align 4
  ret i32 %462
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i64 @intlog10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
