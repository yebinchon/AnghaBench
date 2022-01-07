; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.rtl2830_dev = type { i32, i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8* }

@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"IF AGC=%d\0A\00", align 1
@FE_SCALE_RELATIVE = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@rtl2830_read_status.constant = internal constant [3 x [4 x i32]] [[4 x i32] [i32 70705899, i32 70705899, i32 70705899, i32 70705899], [4 x i32] [i32 82433173, i32 82433173, i32 87483115, i32 94445660], [4 x i32] [i32 92888734, i32 92888734, i32 95487525, i32 99770748]], align 16
@.str.1 = private unnamed_addr constant [12 x i8] c"CNR raw=%u\0A\00", align 1
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"BER errors=%u total=1000000\0A\00", align 1
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@CONSTELLATION_NUM = common dso_local global i32 0, align 4
@HIERARCHY_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @rtl2830_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2830_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rtl2830_dev*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %6, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %20 = call %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.rtl2830_dev* %20, %struct.rtl2830_dev** %7, align 8
  %21 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %22 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store %struct.dtv_frontend_properties* %23, %struct.dtv_frontend_properties** %8, align 8
  %24 = load i32*, i32** %5, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %26 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %300

30:                                               ; preds = %2
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %31, i32 849, i32* %12, i32 1)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %294

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  %38 = ashr i32 %37, 3
  %39 = and i32 %38, 15
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 11
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %44 = load i32, i32* @FE_HAS_CARRIER, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @FE_HAS_VITERBI, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @FE_HAS_SYNC, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @FE_HAS_LOCK, align 4
  %51 = or i32 %49, %50
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %68

55:                                               ; preds = %36
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %60 = load i32, i32* @FE_HAS_CARRIER, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @FE_HAS_VITERBI, align 4
  %63 = or i32 %61, %62
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %58, %55
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %72 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %74 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %118

79:                                               ; preds = %68
  %80 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %82 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %80, i32 857, i32* %81, i32 2)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %294

86:                                               ; preds = %79
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 8
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 0
  %93 = or i32 %89, %92
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @sign_extend32(i32 %94, i32 13)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 -4, %96
  %98 = add nsw i32 %97, 32767
  %99 = call i32 @clamp_val(i32 %98, i32 0, i32 65535)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @dev_dbg(i32* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i8*, i8** @FE_SCALE_RELATIVE, align 8
  %105 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %106 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  store i8* %104, i8** %110, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  store i32 %111, i32* %117, align 8
  br label %126

118:                                              ; preds = %68
  %119 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %120 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %121 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  store i8* %119, i8** %125, align 8
  br label %126

126:                                              ; preds = %118, %86
  %127 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %128 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @FE_HAS_VITERBI, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %202

133:                                              ; preds = %126
  %134 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %135 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %134, i32 828, i32* %12, i32 1)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %294

139:                                              ; preds = %133
  %140 = load i32, i32* %12, align 4
  %141 = ashr i32 %140, 2
  %142 = and i32 %141, 3
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp ugt i32 %143, 2
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %294

146:                                              ; preds = %139
  %147 = load i32, i32* %12, align 4
  %148 = ashr i32 %147, 4
  %149 = and i32 %148, 7
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ugt i32 %150, 3
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %294

153:                                              ; preds = %146
  %154 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %156 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %154, i32 1036, i32* %155, i32 2)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %294

160:                                              ; preds = %153
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 8
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 0
  %167 = or i32 %163, %166
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %160
  %171 = load i32, i32* %15, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* @rtl2830_read_status.constant, i64 0, i64 %172
  %174 = load i32, i32* %14, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %173, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @intlog10(i32 %178)
  %180 = sub nsw i32 %177, %179
  %181 = sdiv i32 %180, 1677
  store i32 %181, i32* %10, align 4
  br label %183

182:                                              ; preds = %160
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %182, %170
  %184 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %185 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %184, i32 0, i32 0
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @dev_dbg(i32* %185, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %186)
  %188 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %189 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %190 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  store i8* %188, i8** %194, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %197 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  store i32 %195, i32* %201, align 8
  br label %210

202:                                              ; preds = %126
  %203 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %204 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %205 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  store i8* %203, i8** %209, align 8
  br label %210

210:                                              ; preds = %202, %183
  %211 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %212 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @FE_HAS_LOCK, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %277

217:                                              ; preds = %210
  %218 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %220 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %218, i32 846, i32* %219, i32 2)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %294

224:                                              ; preds = %217
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = shl i32 %226, 8
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = shl i32 %229, 0
  %231 = or i32 %227, %230
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %11, align 4
  %233 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %234 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = add i32 %235, %232
  store i32 %236, i32* %234, align 4
  %237 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %238 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 1000000
  store i32 %240, i32* %238, align 8
  %241 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %242 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %241, i32 0, i32 0
  %243 = load i32, i32* %11, align 4
  %244 = call i32 @dev_dbg(i32* %242, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %243)
  %245 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %246 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %247 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  store i8* %245, i8** %251, align 8
  %252 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %253 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %256 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i64 0
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  store i32 %254, i32* %260, align 8
  %261 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %262 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %263 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i64 0
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 1
  store i8* %261, i8** %267, align 8
  %268 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %269 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %272 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i64 0
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  store i32 %270, i32* %276, align 8
  br label %292

277:                                              ; preds = %210
  %278 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %279 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %280 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 1
  store i8* %278, i8** %284, align 8
  %285 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %286 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %287 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 1
  store i8* %285, i8** %291, align 8
  br label %292

292:                                              ; preds = %277, %224
  %293 = load i32, i32* %9, align 4
  store i32 %293, i32* %3, align 4
  br label %300

294:                                              ; preds = %223, %159, %152, %145, %138, %85, %35
  %295 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %296 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %295, i32 0, i32 0
  %297 = load i32, i32* %9, align 4
  %298 = call i32 @dev_dbg(i32* %296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %297)
  %299 = load i32, i32* %9, align 4
  store i32 %299, i32* %3, align 4
  br label %300

300:                                              ; preds = %294, %292, %29
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @rtl2830_bulk_read(%struct.i2c_client*, i32, i32*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @intlog10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
