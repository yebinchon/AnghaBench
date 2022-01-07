; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_c.c_cxd2820r_read_status_c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_c.c_cxd2820r_read_status_c.c"
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
@CXD2820R_LOG2_E_24 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2820r_read_status_c(%struct.dvb_frontend* %0, i32* %1) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 1
  %22 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %21, align 8
  store %struct.cxd2820r_priv* %22, %struct.cxd2820r_priv** %6, align 8
  %23 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %24 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %23, i32 0, i32 3
  %25 = load %struct.i2c_client**, %struct.i2c_client*** %24, align 8
  %26 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %25, i64 0
  %27 = load %struct.i2c_client*, %struct.i2c_client** %26, align 8
  store %struct.i2c_client* %27, %struct.i2c_client** %7, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  store %struct.dtv_frontend_properties* %29, %struct.dtv_frontend_properties** %8, align 8
  %30 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %31 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %36 = call i32 @regmap_bulk_read(i32 %34, i32 136, i32* %35, i32 1)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %339

40:                                               ; preds = %2
  %41 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %42 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %47 = call i32 @regmap_bulk_read(i32 %45, i32 115, i32* %46, i32 1)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %339

51:                                               ; preds = %40
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 0
  %55 = and i32 %54, 1
  store i32 %55, i32* %11, align 4
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 3
  %59 = and i32 %58, 1
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %76

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %67 = load i32, i32* @FE_HAS_CARRIER, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @FE_HAS_VITERBI, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @FE_HAS_SYNC, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @FE_HAS_LOCK, align 4
  %74 = or i32 %72, %73
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  br label %94

76:                                               ; preds = %62, %51
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %91

82:                                               ; preds = %79, %76
  %83 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %84 = load i32, i32* @FE_HAS_CARRIER, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @FE_HAS_VITERBI, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @FE_HAS_SYNC, align 4
  %89 = or i32 %87, %88
  %90 = load i32*, i32** %5, align 8
  store i32 %89, i32* %90, align 4
  br label %93

91:                                               ; preds = %79
  %92 = load i32*, i32** %5, align 8
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %91, %82
  br label %94

94:                                               ; preds = %93, %65
  %95 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %98, i32 2, i32* %99, i32 %100, i32 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %152

108:                                              ; preds = %94
  %109 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %110 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %115 = call i32 @regmap_bulk_read(i32 %113, i32 73, i32* %114, i32 2)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %339

119:                                              ; preds = %108
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 8
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 0
  %126 = or i32 %122, %125
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @sign_extend32(i32 %127, i32 9)
  %129 = sub nsw i32 511, %128
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = shl i32 %130, 6
  %132 = load i32, i32* %10, align 4
  %133 = lshr i32 %132, 4
  %134 = or i32 %131, %133
  store i32 %134, i32* %14, align 4
  %135 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %136 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load i8*, i8** @FE_SCALE_RELATIVE, align 8
  %139 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %140 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  store i8* %138, i8** %144, align 8
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store i32 %145, i32* %151, align 8
  br label %163

152:                                              ; preds = %94
  %153 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %154 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %157 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %158 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  store i8* %156, i8** %162, align 8
  br label %163

163:                                              ; preds = %152, %119
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @FE_HAS_VITERBI, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %229

169:                                              ; preds = %163
  %170 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %171 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @regmap_read(i32 %174, i32 25, i32* %10)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  br label %339

179:                                              ; preds = %169
  %180 = load i32, i32* %10, align 4
  %181 = lshr i32 %180, 0
  %182 = and i32 %181, 3
  %183 = urem i32 %182, 2
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  store i32 8750, i32* %16, align 4
  store i32 650, i32* %17, align 4
  br label %187

186:                                              ; preds = %179
  store i32 9500, i32* %16, align 4
  store i32 760, i32* %17, align 4
  br label %187

187:                                              ; preds = %186, %185
  %188 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %189 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @regmap_read(i32 %192, i32 77, i32* %10)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %187
  br label %339

197:                                              ; preds = %187
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = load i32, i32* %17, align 4
  %202 = call i64 @intlog2(i32 %201)
  %203 = load i32, i32* %10, align 4
  %204 = call i64 @intlog2(i32 %203)
  %205 = sub nsw i64 %202, %204
  %206 = trunc i64 %205 to i32
  %207 = load i32, i32* %16, align 4
  %208 = mul i32 %206, %207
  %209 = call i32 @div_u64(i32 %208, i32 24204406)
  store i32 %209, i32* %15, align 4
  br label %211

210:                                              ; preds = %197
  store i32 0, i32* %15, align 4
  br label %211

211:                                              ; preds = %210, %200
  %212 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %213 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  %215 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %216 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %217 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i64 0
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  store i8* %215, i8** %221, align 8
  %222 = load i32, i32* %15, align 4
  %223 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %224 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  store i32 %222, i32* %228, align 8
  br label %240

229:                                              ; preds = %163
  %230 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %231 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  store i32 1, i32* %232, align 8
  %233 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %234 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %235 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 1
  store i8* %233, i8** %239, align 8
  br label %240

240:                                              ; preds = %229, %211
  %241 = load i32*, i32** %5, align 8
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @FE_HAS_SYNC, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %326

246:                                              ; preds = %240
  %247 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %248 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %284

251:                                              ; preds = %246
  %252 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %253 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %258 = call i32 @regmap_bulk_read(i32 %256, i32 118, i32* %257, i32 3)
  store i32 %258, i32* %9, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %251
  br label %339

262:                                              ; preds = %251
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %264 = load i32, i32* %263, align 4
  %265 = ashr i32 %264, 7
  %266 = and i32 %265, 1
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %282

268:                                              ; preds = %262
  %269 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = shl i32 %270, 16
  %272 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = shl i32 %273, 8
  %275 = or i32 %271, %274
  %276 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %277 = load i32, i32* %276, align 4
  %278 = shl i32 %277, 0
  %279 = or i32 %275, %278
  store i32 %279, i32* %18, align 4
  %280 = load i32, i32* %18, align 4
  %281 = and i32 %280, 1048575
  store i32 %281, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %283

282:                                              ; preds = %262
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %283

283:                                              ; preds = %282, %268
  br label %285

284:                                              ; preds = %246
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %285

285:                                              ; preds = %284, %283
  %286 = load i32, i32* %19, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %301

288:                                              ; preds = %285
  %289 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %290 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %289, i32 0, i32 2
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @regmap_write(i32 %293, i32 121, i32 1)
  store i32 %294, i32* %9, align 4
  %295 = load i32, i32* %9, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %288
  br label %339

298:                                              ; preds = %288
  %299 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %300 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %299, i32 0, i32 0
  store i32 1, i32* %300, align 8
  br label %301

301:                                              ; preds = %298, %285
  %302 = load i32, i32* %18, align 4
  %303 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %304 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = add i32 %305, %302
  store i32 %306, i32* %304, align 4
  %307 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %308 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 0
  store i32 1, i32* %309, align 8
  %310 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %311 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %312 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 1
  store i8* %310, i8** %316, align 8
  %317 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %318 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %321 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i64 0
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 0
  store i32 %319, i32* %325, align 8
  br label %337

326:                                              ; preds = %240
  %327 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %328 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 0
  store i32 1, i32* %329, align 8
  %330 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %331 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %332 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i64 0
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 1
  store i8* %330, i8** %336, align 8
  br label %337

337:                                              ; preds = %326, %301
  %338 = load i32, i32* %9, align 4
  store i32 %338, i32* %3, align 4
  br label %345

339:                                              ; preds = %297, %261, %196, %178, %118, %50, %39
  %340 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %341 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %340, i32 0, i32 0
  %342 = load i32, i32* %9, align 4
  %343 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %341, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %342)
  %344 = load i32, i32* %9, align 4
  store i32 %344, i32* %3, align 4
  br label %345

345:                                              ; preds = %339, %337
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i64 @intlog2(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
