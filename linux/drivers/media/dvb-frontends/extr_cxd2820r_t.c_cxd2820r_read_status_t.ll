; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t.c_cxd2820r_read_status_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t.c_cxd2820r_read_status_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.cxd2820r_priv* }
%struct.dtv_frontend_properties = type { %struct.TYPE_8__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.cxd2820r_priv = type { i32, i32, i32*, %struct.i2c_client** }
%struct.i2c_client = type { i32 }

@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"status=%02x raw=%*ph sync=%u ts=%u\0A\00", align 1
@FE_SCALE_RELATIVE = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2820r_read_status_t(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cxd2820r_priv*, align 8
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
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1
  %20 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %19, align 8
  store %struct.cxd2820r_priv* %20, %struct.cxd2820r_priv** %6, align 8
  %21 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %22 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %21, i32 0, i32 3
  %23 = load %struct.i2c_client**, %struct.i2c_client*** %22, align 8
  %24 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %23, i64 0
  %25 = load %struct.i2c_client*, %struct.i2c_client** %24, align 8
  store %struct.i2c_client* %25, %struct.i2c_client** %7, align 8
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 0
  store %struct.dtv_frontend_properties* %27, %struct.dtv_frontend_properties** %8, align 8
  %28 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %29 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %34 = call i32 @regmap_bulk_read(i32 %32, i32 16, i32* %33, i32 1)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %328

38:                                               ; preds = %2
  %39 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %40 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %45 = call i32 @regmap_bulk_read(i32 %43, i32 115, i32* %44, i32 1)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %328

49:                                               ; preds = %38
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 0
  %53 = and i32 %52, 7
  store i32 %53, i32* %11, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 3
  %57 = and i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 6
  br i1 %59, label %60, label %74

60:                                               ; preds = %49
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %65 = load i32, i32* @FE_HAS_CARRIER, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FE_HAS_VITERBI, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @FE_HAS_SYNC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @FE_HAS_LOCK, align 4
  %72 = or i32 %70, %71
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  br label %92

74:                                               ; preds = %60, %49
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 6
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %89

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %82 = load i32, i32* @FE_HAS_CARRIER, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @FE_HAS_VITERBI, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @FE_HAS_SYNC, align 4
  %87 = or i32 %85, %86
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  br label %91

89:                                               ; preds = %77
  %90 = load i32*, i32** %5, align 8
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %89, %80
  br label %92

92:                                               ; preds = %91, %63
  %93 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %96, i32 2, i32* %97, i32 %98, i32 %99)
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %150

106:                                              ; preds = %92
  %107 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %108 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %113 = call i32 @regmap_bulk_read(i32 %111, i32 38, i32* %112, i32 2)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %328

117:                                              ; preds = %106
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 8
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 0
  %124 = or i32 %120, %123
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %126, 4095
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = shl i32 %128, 4
  %130 = load i32, i32* %10, align 4
  %131 = lshr i32 %130, 8
  %132 = or i32 %129, %131
  store i32 %132, i32* %14, align 4
  %133 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %134 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load i8*, i8** @FE_SCALE_RELATIVE, align 8
  %137 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %138 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i8* %136, i8** %142, align 8
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %145 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  store i32 %143, i32* %149, align 8
  br label %161

150:                                              ; preds = %92
  %151 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %152 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  %154 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %155 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  store i8* %154, i8** %160, align 8
  br label %161

161:                                              ; preds = %150, %117
  %162 = load i32*, i32** %5, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @FE_HAS_VITERBI, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %218

167:                                              ; preds = %161
  %168 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %169 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %174 = call i32 @regmap_bulk_read(i32 %172, i32 44, i32* %173, i32 2)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  br label %328

178:                                              ; preds = %167
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 8
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 0
  %185 = or i32 %181, %184
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %178
  %189 = load i32, i32* %10, align 4
  %190 = call i64 @intlog10(i32 %189)
  %191 = load i32, i32* %10, align 4
  %192 = sub i32 32000, %191
  %193 = call i64 @intlog10(i32 %192)
  %194 = sub nsw i64 %190, %193
  %195 = add nsw i64 %194, 55532585
  %196 = trunc i64 %195 to i32
  %197 = mul nsw i32 %196, 10000
  %198 = call i32 @div_u64(i32 %197, i32 16777216)
  store i32 %198, i32* %15, align 4
  br label %200

199:                                              ; preds = %178
  store i32 0, i32* %15, align 4
  br label %200

200:                                              ; preds = %199, %188
  %201 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %202 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  store i32 1, i32* %203, align 8
  %204 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %205 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %206 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  store i8* %204, i8** %210, align 8
  %211 = load i32, i32* %15, align 4
  %212 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %213 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  store i32 %211, i32* %217, align 8
  br label %229

218:                                              ; preds = %161
  %219 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %220 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  store i32 1, i32* %221, align 8
  %222 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %223 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %224 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  store i8* %222, i8** %228, align 8
  br label %229

229:                                              ; preds = %218, %200
  %230 = load i32*, i32** %5, align 8
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @FE_HAS_SYNC, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %315

235:                                              ; preds = %229
  %236 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %237 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %273

240:                                              ; preds = %235
  %241 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %242 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %247 = call i32 @regmap_bulk_read(i32 %245, i32 118, i32* %246, i32 3)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  br label %328

251:                                              ; preds = %240
  %252 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %253 = load i32, i32* %252, align 4
  %254 = ashr i32 %253, 7
  %255 = and i32 %254, 1
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %271

257:                                              ; preds = %251
  %258 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = shl i32 %259, 16
  %261 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = shl i32 %262, 8
  %264 = or i32 %260, %263
  %265 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = shl i32 %266, 0
  %268 = or i32 %264, %267
  store i32 %268, i32* %16, align 4
  %269 = load i32, i32* %16, align 4
  %270 = and i32 %269, 1048575
  store i32 %270, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %272

271:                                              ; preds = %251
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %272

272:                                              ; preds = %271, %257
  br label %274

273:                                              ; preds = %235
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %274

274:                                              ; preds = %273, %272
  %275 = load i32, i32* %17, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %290

277:                                              ; preds = %274
  %278 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %279 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %278, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @regmap_write(i32 %282, i32 121, i32 1)
  store i32 %283, i32* %9, align 4
  %284 = load i32, i32* %9, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %277
  br label %328

287:                                              ; preds = %277
  %288 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %289 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %288, i32 0, i32 0
  store i32 1, i32* %289, align 8
  br label %290

290:                                              ; preds = %287, %274
  %291 = load i32, i32* %16, align 4
  %292 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %293 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = add i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %297 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  store i32 1, i32* %298, align 8
  %299 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %300 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %301 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i64 0
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  store i8* %299, i8** %305, align 8
  %306 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %307 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %310 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i64 0
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 0
  store i32 %308, i32* %314, align 8
  br label %326

315:                                              ; preds = %229
  %316 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %317 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 0
  store i32 1, i32* %318, align 8
  %319 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %320 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %321 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i64 0
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 1
  store i8* %319, i8** %325, align 8
  br label %326

326:                                              ; preds = %315, %290
  %327 = load i32, i32* %9, align 4
  store i32 %327, i32* %3, align 4
  br label %334

328:                                              ; preds = %286, %250, %177, %116, %48, %37
  %329 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %330 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %329, i32 0, i32 0
  %331 = load i32, i32* %9, align 4
  %332 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %330, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %331)
  %333 = load i32, i32* %9, align 4
  store i32 %333, i32* %3, align 4
  br label %334

334:                                              ; preds = %328, %326
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i64 @intlog10(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
