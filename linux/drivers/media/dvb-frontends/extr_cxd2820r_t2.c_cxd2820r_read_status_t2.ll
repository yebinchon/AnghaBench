; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t2.c_cxd2820r_read_status_t2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t2.c_cxd2820r_read_status_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.cxd2820r_priv* }
%struct.dtv_frontend_properties = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.cxd2820r_priv = type { i32, i32*, %struct.i2c_client** }
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
@CXD2820R_LOG10_8_24 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2820r_read_status_t2(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cxd2820r_priv*, align 8
  %7 = alloca %struct.dtv_frontend_properties*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1
  %19 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %18, align 8
  store %struct.cxd2820r_priv* %19, %struct.cxd2820r_priv** %6, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  store %struct.dtv_frontend_properties* %21, %struct.dtv_frontend_properties** %7, align 8
  %22 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %23 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %22, i32 0, i32 2
  %24 = load %struct.i2c_client**, %struct.i2c_client*** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %24, i64 0
  %26 = load %struct.i2c_client*, %struct.i2c_client** %25, align 8
  store %struct.i2c_client* %26, %struct.i2c_client** %8, align 8
  %27 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %28 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %33 = call i32 @regmap_bulk_read(i32 %31, i32 8208, i32* %32, i32 1)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %295

37:                                               ; preds = %2
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = ashr i32 %39, 0
  %41 = and i32 %40, 7
  store i32 %41, i32* %11, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = ashr i32 %43, 5
  %45 = and i32 %44, 1
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 6
  br i1 %47, label %48, label %62

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %53 = load i32, i32* @FE_HAS_CARRIER, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FE_HAS_VITERBI, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FE_HAS_SYNC, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @FE_HAS_LOCK, align 4
  %60 = or i32 %58, %59
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %80

62:                                               ; preds = %48, %37
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 6
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %77

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %70 = load i32, i32* @FE_HAS_CARRIER, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @FE_HAS_VITERBI, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @FE_HAS_SYNC, align 4
  %75 = or i32 %73, %74
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  br label %79

77:                                               ; preds = %65
  %78 = load i32*, i32** %5, align 8
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %77, %68
  br label %80

80:                                               ; preds = %79, %51
  %81 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %84, i32 1, i32* %85, i32 %86, i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %138

94:                                               ; preds = %80
  %95 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %96 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %101 = call i32 @regmap_bulk_read(i32 %99, i32 8230, i32* %100, i32 2)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %295

105:                                              ; preds = %94
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = shl i32 %107, 8
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 0
  %112 = or i32 %108, %111
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %114, 4095
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = shl i32 %116, 4
  %118 = load i32, i32* %10, align 4
  %119 = lshr i32 %118, 8
  %120 = or i32 %117, %119
  store i32 %120, i32* %14, align 4
  %121 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %122 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load i8*, i8** @FE_SCALE_RELATIVE, align 8
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store i8* %124, i8** %130, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %133 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32 %131, i32* %137, align 8
  br label %149

138:                                              ; preds = %80
  %139 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %140 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  %142 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %143 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %144 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i8* %142, i8** %148, align 8
  br label %149

149:                                              ; preds = %138, %105
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @FE_HAS_VITERBI, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %204

155:                                              ; preds = %149
  %156 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %157 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %162 = call i32 @regmap_bulk_read(i32 %160, i32 8232, i32* %161, i32 2)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %155
  br label %295

166:                                              ; preds = %155
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %168 = load i32, i32* %167, align 16
  %169 = shl i32 %168, 8
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 0
  %173 = or i32 %169, %172
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = and i32 %174, 4095
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %166
  %179 = load i32, i32* %10, align 4
  %180 = call i64 @intlog10(i32 %179)
  %181 = sub nsw i64 %180, 15151336
  %182 = trunc i64 %181 to i32
  %183 = mul nsw i32 %182, 10000
  %184 = call i32 @div_u64(i32 %183, i32 16777216)
  store i32 %184, i32* %15, align 4
  br label %186

185:                                              ; preds = %166
  store i32 0, i32* %15, align 4
  br label %186

186:                                              ; preds = %185, %178
  %187 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %188 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  %190 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %191 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %192 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  store i8* %190, i8** %196, align 8
  %197 = load i32, i32* %15, align 4
  %198 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %199 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  store i32 %197, i32* %203, align 8
  br label %215

204:                                              ; preds = %149
  %205 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %206 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  %208 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %209 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %210 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  store i8* %208, i8** %214, align 8
  br label %215

215:                                              ; preds = %204, %186
  %216 = load i32*, i32** %5, align 8
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @FE_HAS_SYNC, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %282

221:                                              ; preds = %215
  %222 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %223 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %228 = call i32 @regmap_bulk_read(i32 %226, i32 8249, i32* %227, i32 4)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %221
  br label %295

232:                                              ; preds = %221
  %233 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %234 = load i32, i32* %233, align 16
  %235 = ashr i32 %234, 4
  %236 = and i32 %235, 1
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %256

238:                                              ; preds = %232
  %239 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %240 = load i32, i32* %239, align 16
  %241 = shl i32 %240, 24
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = shl i32 %243, 16
  %245 = or i32 %241, %244
  %246 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %247 = load i32, i32* %246, align 8
  %248 = shl i32 %247, 8
  %249 = or i32 %245, %248
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %251, 0
  %253 = or i32 %249, %252
  store i32 %253, i32* %16, align 4
  %254 = load i32, i32* %16, align 4
  %255 = and i32 %254, 268435455
  store i32 %255, i32* %16, align 4
  br label %257

256:                                              ; preds = %232
  store i32 0, i32* %16, align 4
  br label %257

257:                                              ; preds = %256, %238
  %258 = load i32, i32* %16, align 4
  %259 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %260 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = add i32 %261, %258
  store i32 %262, i32* %260, align 8
  %263 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %264 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  store i32 1, i32* %265, align 8
  %266 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %267 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %268 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i64 0
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 1
  store i8* %266, i8** %272, align 8
  %273 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %274 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %277 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i64 0
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  store i32 %275, i32* %281, align 8
  br label %293

282:                                              ; preds = %215
  %283 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %284 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  store i32 1, i32* %285, align 8
  %286 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %287 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %288 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i64 0
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 1
  store i8* %286, i8** %292, align 8
  br label %293

293:                                              ; preds = %282, %257
  %294 = load i32, i32* %9, align 4
  store i32 %294, i32* %3, align 4
  br label %301

295:                                              ; preds = %231, %165, %104, %36
  %296 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %297 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %296, i32 0, i32 0
  %298 = load i32, i32* %9, align 4
  %299 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %297, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %298)
  %300 = load i32, i32* %9, align 4
  store i32 %300, i32* %3, align 4
  br label %301

301:                                              ; preds = %295, %293
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i64 @intlog10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
