; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88472.c_mn88472_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88472.c_mn88472_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.i2c_client* }
%struct.dtv_frontend_properties = type { i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.i2c_client = type { i32 }
%struct.mn88472_dev = type { i32*, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"strength=%u\0A\00", align 1
@FE_SCALE_RELATIVE = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"cnr=%d value=%u\0A\00", align 1
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"cnr=%d value=%u MISO\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"cnr=%d value=%u SISO\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"cnr=%d signal=%u noise=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"block_error=%u block_count=%u\0A\00", align 1
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @mn88472_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn88472_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mn88472_dev*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [5 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %6, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %20 = call %struct.mn88472_dev* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.mn88472_dev* %20, %struct.mn88472_dev** %7, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  store %struct.dtv_frontend_properties* %22, %struct.dtv_frontend_properties** %8, align 8
  %23 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %24 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %530

30:                                               ; preds = %2
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %140 [
    i32 129, label %34
    i32 128, label %62
    i32 130, label %112
  ]

34:                                               ; preds = %30
  %35 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %36 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regmap_read(i32 %39, i32 127, i32* %12)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %530

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, 15
  %47 = icmp uge i32 %46, 9
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %50 = load i32, i32* @FE_HAS_CARRIER, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @FE_HAS_VITERBI, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FE_HAS_SYNC, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @FE_HAS_LOCK, align 4
  %57 = or i32 %55, %56
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  br label %61

59:                                               ; preds = %44
  %60 = load i32*, i32** %5, align 8
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %59, %48
  br label %143

62:                                               ; preds = %30
  %63 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %64 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @regmap_read(i32 %67, i32 146, i32* %12)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %530

72:                                               ; preds = %62
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %73, 15
  %75 = icmp uge i32 %74, 13
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %78 = load i32, i32* @FE_HAS_CARRIER, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @FE_HAS_VITERBI, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @FE_HAS_SYNC, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @FE_HAS_LOCK, align 4
  %85 = or i32 %83, %84
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  br label %111

87:                                               ; preds = %72
  %88 = load i32, i32* %12, align 4
  %89 = and i32 %88, 15
  %90 = icmp uge i32 %89, 10
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %93 = load i32, i32* @FE_HAS_CARRIER, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @FE_HAS_VITERBI, align 4
  %96 = or i32 %94, %95
  %97 = load i32*, i32** %5, align 8
  store i32 %96, i32* %97, align 4
  br label %110

98:                                               ; preds = %87
  %99 = load i32, i32* %12, align 4
  %100 = and i32 %99, 15
  %101 = icmp uge i32 %100, 7
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %104 = load i32, i32* @FE_HAS_CARRIER, align 4
  %105 = or i32 %103, %104
  %106 = load i32*, i32** %5, align 8
  store i32 %105, i32* %106, align 4
  br label %109

107:                                              ; preds = %98
  %108 = load i32*, i32** %5, align 8
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %107, %102
  br label %110

110:                                              ; preds = %109, %91
  br label %111

111:                                              ; preds = %110, %76
  br label %143

112:                                              ; preds = %30
  %113 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %114 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @regmap_read(i32 %117, i32 132, i32* %12)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %530

122:                                              ; preds = %112
  %123 = load i32, i32* %12, align 4
  %124 = and i32 %123, 15
  %125 = icmp uge i32 %124, 8
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %128 = load i32, i32* @FE_HAS_CARRIER, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @FE_HAS_VITERBI, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @FE_HAS_SYNC, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @FE_HAS_LOCK, align 4
  %135 = or i32 %133, %134
  %136 = load i32*, i32** %5, align 8
  store i32 %135, i32* %136, align 4
  br label %139

137:                                              ; preds = %122
  %138 = load i32*, i32** %5, align 8
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %137, %126
  br label %143

140:                                              ; preds = %30
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %9, align 4
  br label %530

143:                                              ; preds = %139, %111, %61
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %202

149:                                              ; preds = %143
  store i32 0, i32* %10, align 4
  br label %150

150:                                              ; preds = %169, %149
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %151, 2
  br i1 %152, label %153, label %172

153:                                              ; preds = %150
  %154 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %155 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 142, %159
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %162
  %164 = call i32 @regmap_bulk_read(i32 %158, i32 %160, i32* %163, i32 1)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %153
  br label %530

168:                                              ; preds = %153
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %150

172:                                              ; preds = %150
  %173 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %174 = load i32, i32* %173, align 16
  %175 = shl i32 %174, 8
  %176 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 0
  %179 = or i32 %175, %178
  %180 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %181 = load i32, i32* %180, align 16
  %182 = ashr i32 %181, 2
  %183 = or i32 %179, %182
  store i32 %183, i32* %13, align 4
  %184 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %185 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %184, i32 0, i32 0
  %186 = load i32, i32* %13, align 4
  %187 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %186)
  %188 = load i8*, i8** @FE_SCALE_RELATIVE, align 8
  %189 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %190 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  store i8* %188, i8** %194, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %197 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  store i32 %195, i32* %201, align 8
  br label %210

202:                                              ; preds = %143
  %203 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %204 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %205 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  store i8* %203, i8** %209, align 8
  br label %210

210:                                              ; preds = %202, %172
  %211 = load i32*, i32** %5, align 8
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @FE_HAS_VITERBI, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %270

216:                                              ; preds = %210
  %217 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %218 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 129
  br i1 %220, label %221, label %270

221:                                              ; preds = %216
  %222 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %223 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %228 = call i32 @regmap_bulk_read(i32 %226, i32 156, i32* %227, i32 2)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %221
  br label %530

232:                                              ; preds = %221
  %233 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %234 = load i32, i32* %233, align 16
  %235 = shl i32 %234, 8
  %236 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 0
  %239 = or i32 %235, %238
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %232
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @intlog10(i32 %243)
  %245 = sub nsw i32 80807124, %244
  %246 = add nsw i32 %245, 3355443
  %247 = mul nsw i32 %246, 10000
  %248 = ashr i32 %247, 24
  store i32 %248, i32* %11, align 4
  %249 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %250 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %249, i32 0, i32 0
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %12, align 4
  %253 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %250, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %251, i32 %252)
  br label %255

254:                                              ; preds = %232
  store i32 0, i32* %11, align 4
  br label %255

255:                                              ; preds = %254, %242
  %256 = load i32, i32* %11, align 4
  %257 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %258 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  store i32 %256, i32* %262, align 8
  %263 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %264 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %265 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 1
  store i8* %263, i8** %269, align 8
  br label %445

270:                                              ; preds = %216, %210
  %271 = load i32*, i32** %5, align 8
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @FE_HAS_VITERBI, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %362

276:                                              ; preds = %270
  %277 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %278 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %279, 128
  br i1 %280, label %281, label %362

281:                                              ; preds = %276
  store i32 0, i32* %10, align 4
  br label %282

282:                                              ; preds = %301, %281
  %283 = load i32, i32* %10, align 4
  %284 = icmp slt i32 %283, 3
  br i1 %284, label %285, label %304

285:                                              ; preds = %282
  %286 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %287 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 188, %291
  %293 = load i32, i32* %10, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %294
  %296 = call i32 @regmap_bulk_read(i32 %290, i32 %292, i32* %295, i32 1)
  store i32 %296, i32* %9, align 4
  %297 = load i32, i32* %9, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %285
  br label %530

300:                                              ; preds = %285
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %10, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %10, align 4
  br label %282

304:                                              ; preds = %282
  %305 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = shl i32 %306, 8
  %308 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  %309 = load i32, i32* %308, align 8
  %310 = shl i32 %309, 0
  %311 = or i32 %307, %310
  store i32 %311, i32* %12, align 4
  %312 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %313 = load i32, i32* %312, align 16
  %314 = ashr i32 %313, 2
  %315 = and i32 %314, 1
  store i32 %315, i32* %13, align 4
  %316 = load i32, i32* %12, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %346

318:                                              ; preds = %304
  %319 = load i32, i32* %13, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %333

321:                                              ; preds = %318
  %322 = load i32, i32* %12, align 4
  %323 = call i32 @intlog10(i32 %322)
  %324 = sub nsw i32 70706234, %323
  %325 = sub nsw i32 %324, 10066330
  %326 = mul nsw i32 %325, 10000
  %327 = ashr i32 %326, 24
  store i32 %327, i32* %11, align 4
  %328 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %329 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %328, i32 0, i32 0
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* %12, align 4
  %332 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %329, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %330, i32 %331)
  br label %345

333:                                              ; preds = %318
  %334 = load i32, i32* %12, align 4
  %335 = call i32 @intlog10(i32 %334)
  %336 = sub nsw i32 80807124, %335
  %337 = add nsw i32 %336, 3355443
  %338 = mul nsw i32 %337, 10000
  %339 = ashr i32 %338, 24
  store i32 %339, i32* %11, align 4
  %340 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %341 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %340, i32 0, i32 0
  %342 = load i32, i32* %11, align 4
  %343 = load i32, i32* %12, align 4
  %344 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %341, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %342, i32 %343)
  br label %345

345:                                              ; preds = %333, %321
  br label %347

346:                                              ; preds = %304
  store i32 0, i32* %11, align 4
  br label %347

347:                                              ; preds = %346, %345
  %348 = load i32, i32* %11, align 4
  %349 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %350 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %349, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i64 0
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  store i32 %348, i32* %354, align 8
  %355 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %356 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %357 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %356, i32 0, i32 3
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i64 0
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 1
  store i8* %355, i8** %361, align 8
  br label %444

362:                                              ; preds = %276, %270
  %363 = load i32*, i32** %5, align 8
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @FE_HAS_VITERBI, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %435

368:                                              ; preds = %362
  %369 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %370 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = icmp eq i32 %371, 130
  br i1 %372, label %373, label %435

373:                                              ; preds = %368
  %374 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %375 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 1
  %378 = load i32, i32* %377, align 4
  %379 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %380 = call i32 @regmap_bulk_read(i32 %378, i32 161, i32* %379, i32 4)
  store i32 %380, i32* %9, align 4
  %381 = load i32, i32* %9, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %373
  br label %530

384:                                              ; preds = %373
  %385 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %386 = load i32, i32* %385, align 16
  %387 = shl i32 %386, 8
  %388 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %389 = load i32, i32* %388, align 4
  %390 = shl i32 %389, 0
  %391 = or i32 %387, %390
  store i32 %391, i32* %13, align 4
  %392 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  %393 = load i32, i32* %392, align 8
  %394 = shl i32 %393, 8
  %395 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3
  %396 = load i32, i32* %395, align 4
  %397 = shl i32 %396, 0
  %398 = or i32 %394, %397
  store i32 %398, i32* %14, align 4
  %399 = load i32, i32* %13, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %419

401:                                              ; preds = %384
  %402 = load i32, i32* %14, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %419

404:                                              ; preds = %401
  %405 = load i32, i32* %13, align 4
  %406 = call i32 @intlog10(i32 %405)
  %407 = add nsw i32 15151336, %406
  %408 = load i32, i32* %14, align 4
  %409 = call i32 @intlog10(i32 %408)
  %410 = sub nsw i32 %407, %409
  %411 = mul nsw i32 %410, 10000
  %412 = ashr i32 %411, 24
  store i32 %412, i32* %11, align 4
  %413 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %414 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %413, i32 0, i32 0
  %415 = load i32, i32* %11, align 4
  %416 = load i32, i32* %13, align 4
  %417 = load i32, i32* %14, align 4
  %418 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %414, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %415, i32 %416, i32 %417)
  br label %420

419:                                              ; preds = %401, %384
  store i32 0, i32* %11, align 4
  br label %420

420:                                              ; preds = %419, %404
  %421 = load i32, i32* %11, align 4
  %422 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %423 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %422, i32 0, i32 3
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_11__*, %struct.TYPE_11__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i64 0
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %426, i32 0, i32 0
  store i32 %421, i32* %427, align 8
  %428 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %429 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %430 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %429, i32 0, i32 3
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 0
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i64 0
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 1
  store i8* %428, i8** %434, align 8
  br label %443

435:                                              ; preds = %368, %362
  %436 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %437 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %438 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %437, i32 0, i32 3
  %439 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %438, i32 0, i32 0
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i64 0
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %441, i32 0, i32 1
  store i8* %436, i8** %442, align 8
  br label %443

443:                                              ; preds = %435, %420
  br label %444

444:                                              ; preds = %443, %347
  br label %445

445:                                              ; preds = %444, %255
  %446 = load i32*, i32** %5, align 8
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @FE_HAS_SYNC, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %514

451:                                              ; preds = %445
  %452 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %453 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %452, i32 0, i32 0
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 0
  %456 = load i32, i32* %455, align 4
  %457 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %458 = call i32 @regmap_bulk_read(i32 %456, i32 225, i32* %457, i32 4)
  store i32 %458, i32* %9, align 4
  %459 = load i32, i32* %9, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %451
  br label %530

462:                                              ; preds = %451
  %463 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %464 = load i32, i32* %463, align 16
  %465 = shl i32 %464, 8
  %466 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %467 = load i32, i32* %466, align 4
  %468 = shl i32 %467, 0
  %469 = or i32 %465, %468
  store i32 %469, i32* %13, align 4
  %470 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  %471 = load i32, i32* %470, align 8
  %472 = shl i32 %471, 8
  %473 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3
  %474 = load i32, i32* %473, align 4
  %475 = shl i32 %474, 0
  %476 = or i32 %472, %475
  store i32 %476, i32* %14, align 4
  %477 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %478 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %477, i32 0, i32 0
  %479 = load i32, i32* %13, align 4
  %480 = load i32, i32* %14, align 4
  %481 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %478, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %479, i32 %480)
  %482 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %483 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %484 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %483, i32 0, i32 2
  %485 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %484, i32 0, i32 0
  %486 = load %struct.TYPE_13__*, %struct.TYPE_13__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %486, i64 0
  %488 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %487, i32 0, i32 1
  store i8* %482, i8** %488, align 8
  %489 = load i32, i32* %13, align 4
  %490 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %491 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %491, i32 0, i32 0
  %493 = load %struct.TYPE_13__*, %struct.TYPE_13__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %493, i64 0
  %495 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = add i32 %496, %489
  store i32 %497, i32* %495, align 8
  %498 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %499 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %500 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %500, i32 0, i32 0
  %502 = load %struct.TYPE_15__*, %struct.TYPE_15__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %502, i64 0
  %504 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %503, i32 0, i32 1
  store i8* %498, i8** %504, align 8
  %505 = load i32, i32* %14, align 4
  %506 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %507 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %507, i32 0, i32 0
  %509 = load %struct.TYPE_15__*, %struct.TYPE_15__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %509, i64 0
  %511 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 8
  %513 = add i32 %512, %505
  store i32 %513, i32* %511, align 8
  br label %529

514:                                              ; preds = %445
  %515 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %516 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %517 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %516, i32 0, i32 2
  %518 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %517, i32 0, i32 0
  %519 = load %struct.TYPE_13__*, %struct.TYPE_13__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %519, i64 0
  %521 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %520, i32 0, i32 1
  store i8* %515, i8** %521, align 8
  %522 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %523 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %524 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %524, i32 0, i32 0
  %526 = load %struct.TYPE_15__*, %struct.TYPE_15__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %526, i64 0
  %528 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %527, i32 0, i32 1
  store i8* %522, i8** %528, align 8
  br label %529

529:                                              ; preds = %514, %462
  store i32 0, i32* %3, align 4
  br label %536

530:                                              ; preds = %461, %383, %299, %231, %167, %140, %121, %71, %43, %27
  %531 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %532 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %531, i32 0, i32 0
  %533 = load i32, i32* %9, align 4
  %534 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %532, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %533)
  %535 = load i32, i32* %9, align 4
  store i32 %535, i32* %3, align 4
  br label %536

536:                                              ; preds = %530, %529
  %537 = load i32, i32* %3, align 4
  ret i32 %537
}

declare dso_local %struct.mn88472_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @intlog10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
