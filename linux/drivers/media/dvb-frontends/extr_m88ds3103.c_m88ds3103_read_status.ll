; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.m88ds3103_dev* }
%struct.dtv_frontend_properties = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i8* }
%struct.m88ds3103_dev = type { i32, i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid delivery_system\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"lock=%02x status=%02x\0A\00", align 1
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@M88DS3103_SNR_ITERATIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @m88ds3103_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88ds3103_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.m88ds3103_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 1
  %24 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %23, align 8
  store %struct.m88ds3103_dev* %24, %struct.m88ds3103_dev** %6, align 8
  %25 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %26 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %25, i32 0, i32 6
  %27 = load %struct.i2c_client*, %struct.i2c_client** %26, align 8
  store %struct.i2c_client* %27, %struct.i2c_client** %7, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  store %struct.dtv_frontend_properties* %29, %struct.dtv_frontend_properties** %8, align 8
  %30 = load i32*, i32** %5, align 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %32 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %462

38:                                               ; preds = %2
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %90 [
    i32 129, label %42
    i32 128, label %66
  ]

42:                                               ; preds = %38
  %43 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %44 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @regmap_read(i32 %45, i32 209, i32* %12)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %462

50:                                               ; preds = %42
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, 7
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %56 = load i32, i32* @FE_HAS_CARRIER, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @FE_HAS_VITERBI, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @FE_HAS_SYNC, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @FE_HAS_LOCK, align 4
  %63 = or i32 %61, %62
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %54, %50
  br label %96

66:                                               ; preds = %38
  %67 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %68 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @regmap_read(i32 %69, i32 13, i32* %12)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %462

74:                                               ; preds = %66
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 143
  %77 = icmp eq i32 %76, 143
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %80 = load i32, i32* @FE_HAS_CARRIER, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @FE_HAS_VITERBI, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @FE_HAS_SYNC, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @FE_HAS_LOCK, align 4
  %87 = or i32 %85, %86
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %78, %74
  br label %96

90:                                               ; preds = %38
  %91 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  br label %462

96:                                               ; preds = %89, %65
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %100 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %105)
  %107 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %108 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @FE_HAS_VITERBI, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %238

113:                                              ; preds = %96
  store i32 0, i32* %14, align 4
  %114 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %115 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %205 [
    i32 129, label %117
    i32 128, label %148
  ]

117:                                              ; preds = %113
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %133, %117
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 3
  br i1 %120, label %121, label %136

121:                                              ; preds = %118
  %122 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %123 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @regmap_read(i32 %124, i32 255, i32* %12)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %462

129:                                              ; preds = %121
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add i32 %131, %130
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %118

136:                                              ; preds = %118
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @DIV_ROUND_CLOSEST(i32 %137, i32 24)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @intlog2(i32 %142)
  %144 = mul nsw i32 10000, %143
  %145 = call i32 @intlog2(i32 10)
  %146 = call i32 @div_u64(i32 %144, i32 %145)
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %141, %136
  br label %211

148:                                              ; preds = %113
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %185, %148
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %150, 3
  br i1 %151, label %152, label %188

152:                                              ; preds = %149
  %153 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %154 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %157 = call i32 @regmap_bulk_read(i32 %155, i32 140, i32* %156, i32 3)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %462

161:                                              ; preds = %152
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 6
  store i32 %164, i32* %15, align 4
  %165 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 63
  %168 = load i32, i32* %15, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = lshr i32 %170, 2
  store i32 %171, i32* %15, align 4
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %173, %175
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %16, align 4
  %178 = lshr i32 %177, 1
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %17, align 4
  %181 = add i32 %180, %179
  store i32 %181, i32* %17, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %18, align 4
  %184 = add i32 %183, %182
  store i32 %184, i32* %18, align 4
  br label %185

185:                                              ; preds = %161
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %149

188:                                              ; preds = %149
  %189 = load i32, i32* %17, align 4
  %190 = udiv i32 %189, 3
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %18, align 4
  %192 = udiv i32 %191, 3
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp ugt i32 %193, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %188
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %15, align 4
  %199 = udiv i32 %197, %198
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %11, align 4
  %201 = call i32 @intlog10(i32 %200)
  %202 = mul nsw i32 10000, %201
  %203 = call i32 @div_u64(i32 %202, i32 16777216)
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %196, %188
  br label %211

205:                                              ; preds = %113
  %206 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %207 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %206, i32 0, i32 0
  %208 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %207, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %9, align 4
  br label %462

211:                                              ; preds = %204, %147
  %212 = load i32, i32* %14, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %211
  %215 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %216 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %217 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i64 0
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  store i8* %215, i8** %221, align 8
  %222 = load i32, i32* %14, align 4
  %223 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %224 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  store i32 %222, i32* %228, align 8
  br label %237

229:                                              ; preds = %211
  %230 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %231 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %232 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  store i8* %230, i8** %236, align 8
  br label %237

237:                                              ; preds = %229, %214
  br label %246

238:                                              ; preds = %96
  %239 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %240 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %241 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i64 0
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  store i8* %239, i8** %245, align 8
  br label %246

246:                                              ; preds = %238, %237
  %247 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %248 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @FE_HAS_LOCK, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %446

253:                                              ; preds = %246
  %254 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %255 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  switch i32 %256, label %407 [
    i32 129, label %257
    i32 128, label %319
  ]

257:                                              ; preds = %253
  %258 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %259 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @regmap_write(i32 %260, i32 249, i32 4)
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %257
  br label %462

265:                                              ; preds = %257
  %266 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %267 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @regmap_read(i32 %268, i32 248, i32* %19)
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %9, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %265
  br label %462

273:                                              ; preds = %265
  %274 = load i32, i32* %19, align 4
  %275 = and i32 %274, 16
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %318, label %277

277:                                              ; preds = %273
  %278 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %279 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %282 = call i32 @regmap_bulk_read(i32 %280, i32 246, i32* %281, i32 2)
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %9, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %277
  br label %462

286:                                              ; preds = %277
  %287 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = shl i32 %288, 8
  %290 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = shl i32 %291, 0
  %293 = or i32 %289, %292
  store i32 %293, i32* %20, align 4
  store i32 8388608, i32* %21, align 4
  %294 = load i32, i32* %20, align 4
  %295 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %296 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = add i32 %297, %294
  store i32 %298, i32* %296, align 4
  %299 = load i32, i32* %21, align 4
  %300 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %301 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = add i32 %302, %299
  store i32 %303, i32* %301, align 8
  %304 = load i32, i32* %20, align 4
  %305 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %306 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %305, i32 0, i32 3
  store i32 %304, i32* %306, align 4
  %307 = load i32, i32* %19, align 4
  %308 = or i32 %307, 16
  store i32 %308, i32* %19, align 4
  %309 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %310 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* %19, align 4
  %313 = call i32 @regmap_write(i32 %311, i32 248, i32 %312)
  store i32 %313, i32* %9, align 4
  %314 = load i32, i32* %9, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %286
  br label %462

317:                                              ; preds = %286
  br label %318

318:                                              ; preds = %317, %273
  br label %413

319:                                              ; preds = %253
  %320 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %321 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %324 = call i32 @regmap_bulk_read(i32 %322, i32 213, i32* %323, i32 3)
  store i32 %324, i32* %9, align 4
  %325 = load i32, i32* %9, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %319
  br label %462

328:                                              ; preds = %319
  %329 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %330 = load i32, i32* %329, align 4
  %331 = shl i32 %330, 16
  %332 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %333 = load i32, i32* %332, align 4
  %334 = shl i32 %333, 8
  %335 = or i32 %331, %334
  %336 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %337 = load i32, i32* %336, align 4
  %338 = shl i32 %337, 0
  %339 = or i32 %335, %338
  store i32 %339, i32* %19, align 4
  %340 = load i32, i32* %19, align 4
  %341 = icmp ugt i32 %340, 4000
  br i1 %341, label %342, label %406

342:                                              ; preds = %328
  %343 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %344 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %347 = call i32 @regmap_bulk_read(i32 %345, i32 247, i32* %346, i32 2)
  store i32 %347, i32* %9, align 4
  %348 = load i32, i32* %9, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %342
  br label %462

351:                                              ; preds = %342
  %352 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %353 = load i32, i32* %352, align 4
  %354 = shl i32 %353, 8
  %355 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %356 = load i32, i32* %355, align 4
  %357 = shl i32 %356, 0
  %358 = or i32 %354, %357
  store i32 %358, i32* %20, align 4
  %359 = load i32, i32* %19, align 4
  %360 = mul i32 32, %359
  store i32 %360, i32* %21, align 4
  %361 = load i32, i32* %20, align 4
  %362 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %363 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = add i32 %364, %361
  store i32 %365, i32* %363, align 4
  %366 = load i32, i32* %21, align 4
  %367 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %368 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = add i32 %369, %366
  store i32 %370, i32* %368, align 8
  %371 = load i32, i32* %20, align 4
  %372 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %373 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %372, i32 0, i32 3
  store i32 %371, i32* %373, align 4
  %374 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %375 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @regmap_write(i32 %376, i32 209, i32 1)
  store i32 %377, i32* %9, align 4
  %378 = load i32, i32* %9, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %351
  br label %462

381:                                              ; preds = %351
  %382 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %383 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @regmap_write(i32 %384, i32 249, i32 1)
  store i32 %385, i32* %9, align 4
  %386 = load i32, i32* %9, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %381
  br label %462

389:                                              ; preds = %381
  %390 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %391 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @regmap_write(i32 %392, i32 249, i32 0)
  store i32 %393, i32* %9, align 4
  %394 = load i32, i32* %9, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %389
  br label %462

397:                                              ; preds = %389
  %398 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %399 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %398, i32 0, i32 4
  %400 = load i32, i32* %399, align 8
  %401 = call i32 @regmap_write(i32 %400, i32 209, i32 0)
  store i32 %401, i32* %9, align 4
  %402 = load i32, i32* %9, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %397
  br label %462

405:                                              ; preds = %397
  br label %406

406:                                              ; preds = %405, %328
  br label %413

407:                                              ; preds = %253
  %408 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %409 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %408, i32 0, i32 0
  %410 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %409, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %411 = load i32, i32* @EINVAL, align 4
  %412 = sub nsw i32 0, %411
  store i32 %412, i32* %9, align 4
  br label %462

413:                                              ; preds = %406, %318
  %414 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %415 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %416 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %416, i32 0, i32 0
  %418 = load %struct.TYPE_7__*, %struct.TYPE_7__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i64 0
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 1
  store i8* %414, i8** %420, align 8
  %421 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %422 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %425 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_7__*, %struct.TYPE_7__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i64 0
  %429 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i32 0, i32 0
  store i32 %423, i32* %429, align 8
  %430 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %431 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %432 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 0
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i64 0
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 1
  store i8* %430, i8** %436, align 8
  %437 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %438 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %441 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %441, i32 0, i32 0
  %443 = load %struct.TYPE_9__*, %struct.TYPE_9__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i64 0
  %445 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %444, i32 0, i32 0
  store i32 %439, i32* %445, align 8
  br label %461

446:                                              ; preds = %246
  %447 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %448 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %449 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %448, i32 0, i32 2
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 0
  %451 = load %struct.TYPE_7__*, %struct.TYPE_7__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i64 0
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 1
  store i8* %447, i8** %453, align 8
  %454 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %455 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %456 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i32 0, i32 0
  %458 = load %struct.TYPE_9__*, %struct.TYPE_9__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %458, i64 0
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 1
  store i8* %454, i8** %460, align 8
  br label %461

461:                                              ; preds = %446, %413
  store i32 0, i32* %3, align 4
  br label %468

462:                                              ; preds = %407, %404, %396, %388, %380, %350, %327, %316, %285, %272, %264, %205, %160, %128, %90, %73, %49, %35
  %463 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %464 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %463, i32 0, i32 0
  %465 = load i32, i32* %9, align 4
  %466 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %464, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %465)
  %467 = load i32, i32* %9, align 4
  store i32 %467, i32* %3, align 4
  br label %468

468:                                              ; preds = %462, %461
  %469 = load i32, i32* %3, align 4
  ret i32 %469
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @intlog2(i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @intlog10(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
