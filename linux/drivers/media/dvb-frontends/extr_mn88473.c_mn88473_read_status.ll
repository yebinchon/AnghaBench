; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88473.c_mn88473_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88473.c_mn88473_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.i2c_client* }
%struct.dtv_frontend_properties = type { i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i8* }
%struct.i2c_client = type { i32 }
%struct.mn88473_dev = type { i32*, i32 }

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
@.str.5 = private unnamed_addr constant [37 x i8] c"post_bit_error=%u post_bit_count=%u\0A\00", align 1
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"block_error=%u block_count=%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @mn88473_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn88473_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mn88473_dev*, align 8
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
  %20 = call %struct.mn88473_dev* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.mn88473_dev* %20, %struct.mn88473_dev** %7, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  store %struct.dtv_frontend_properties* %22, %struct.dtv_frontend_properties** %8, align 8
  %23 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %24 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %666

30:                                               ; preds = %2
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %175 [
    i32 129, label %34
    i32 128, label %77
    i32 130, label %132
  ]

34:                                               ; preds = %30
  %35 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %36 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regmap_read(i32 %39, i32 98, i32* %12)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %666

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, 160
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, 15
  %51 = icmp uge i32 %50, 9
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %54 = load i32, i32* @FE_HAS_CARRIER, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @FE_HAS_VITERBI, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @FE_HAS_SYNC, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @FE_HAS_LOCK, align 4
  %61 = or i32 %59, %60
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %73

63:                                               ; preds = %48
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, 15
  %66 = icmp uge i32 %65, 3
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %69 = load i32, i32* @FE_HAS_CARRIER, align 4
  %70 = or i32 %68, %69
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %63
  br label %73

73:                                               ; preds = %72, %52
  br label %76

74:                                               ; preds = %44
  %75 = load i32*, i32** %5, align 8
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %73
  br label %178

77:                                               ; preds = %30
  %78 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %79 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @regmap_read(i32 %82, i32 139, i32* %12)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %666

87:                                               ; preds = %77
  %88 = load i32, i32* %12, align 4
  %89 = and i32 %88, 64
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %129, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 15
  %94 = icmp uge i32 %93, 13
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %97 = load i32, i32* @FE_HAS_CARRIER, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @FE_HAS_VITERBI, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @FE_HAS_SYNC, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @FE_HAS_LOCK, align 4
  %104 = or i32 %102, %103
  %105 = load i32*, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  br label %128

106:                                              ; preds = %91
  %107 = load i32, i32* %12, align 4
  %108 = and i32 %107, 15
  %109 = icmp uge i32 %108, 10
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %112 = load i32, i32* @FE_HAS_CARRIER, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @FE_HAS_VITERBI, align 4
  %115 = or i32 %113, %114
  %116 = load i32*, i32** %5, align 8
  store i32 %115, i32* %116, align 4
  br label %127

117:                                              ; preds = %106
  %118 = load i32, i32* %12, align 4
  %119 = and i32 %118, 15
  %120 = icmp uge i32 %119, 7
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %123 = load i32, i32* @FE_HAS_CARRIER, align 4
  %124 = or i32 %122, %123
  %125 = load i32*, i32** %5, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %117
  br label %127

127:                                              ; preds = %126, %110
  br label %128

128:                                              ; preds = %127, %95
  br label %131

129:                                              ; preds = %87
  %130 = load i32*, i32** %5, align 8
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %129, %128
  br label %178

132:                                              ; preds = %30
  %133 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %134 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @regmap_read(i32 %137, i32 133, i32* %12)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %666

142:                                              ; preds = %132
  %143 = load i32, i32* %12, align 4
  %144 = and i32 %143, 64
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %172, label %146

146:                                              ; preds = %142
  %147 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %148 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @regmap_read(i32 %151, i32 137, i32* %12)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %666

156:                                              ; preds = %146
  %157 = load i32, i32* %12, align 4
  %158 = and i32 %157, 1
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %162 = load i32, i32* @FE_HAS_CARRIER, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @FE_HAS_VITERBI, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @FE_HAS_SYNC, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @FE_HAS_LOCK, align 4
  %169 = or i32 %167, %168
  %170 = load i32*, i32** %5, align 8
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %160, %156
  br label %174

172:                                              ; preds = %142
  %173 = load i32*, i32** %5, align 8
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %172, %171
  br label %178

175:                                              ; preds = %30
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %9, align 4
  br label %666

178:                                              ; preds = %174, %131, %76
  %179 = load i32*, i32** %5, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %237

184:                                              ; preds = %178
  store i32 0, i32* %10, align 4
  br label %185

185:                                              ; preds = %204, %184
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %186, 2
  br i1 %187, label %188, label %207

188:                                              ; preds = %185
  %189 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %190 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 134, %194
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %197
  %199 = call i32 @regmap_bulk_read(i32 %193, i32 %195, i32* %198, i32 1)
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %188
  br label %666

203:                                              ; preds = %188
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %185

207:                                              ; preds = %185
  %208 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %209 = load i32, i32* %208, align 16
  %210 = shl i32 %209, 8
  %211 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %212, 0
  %214 = or i32 %210, %213
  %215 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %216 = load i32, i32* %215, align 16
  %217 = ashr i32 %216, 2
  %218 = or i32 %214, %217
  store i32 %218, i32* %13, align 4
  %219 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %220 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %219, i32 0, i32 0
  %221 = load i32, i32* %13, align 4
  %222 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %220, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %221)
  %223 = load i8*, i8** @FE_SCALE_RELATIVE, align 8
  %224 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %225 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %224, i32 0, i32 6
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 1
  store i8* %223, i8** %229, align 8
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %232 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  store i32 %230, i32* %236, align 8
  br label %245

237:                                              ; preds = %178
  %238 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %239 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %240 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i64 0
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 1
  store i8* %238, i8** %244, align 8
  br label %245

245:                                              ; preds = %237, %207
  %246 = load i32*, i32** %5, align 8
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @FE_HAS_VITERBI, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %305

251:                                              ; preds = %245
  %252 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %253 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 129
  br i1 %255, label %256, label %305

256:                                              ; preds = %251
  %257 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %258 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %263 = call i32 @regmap_bulk_read(i32 %261, i32 143, i32* %262, i32 2)
  store i32 %263, i32* %9, align 4
  %264 = load i32, i32* %9, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %256
  br label %666

267:                                              ; preds = %256
  %268 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %269 = load i32, i32* %268, align 16
  %270 = shl i32 %269, 8
  %271 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = shl i32 %272, 0
  %274 = or i32 %270, %273
  store i32 %274, i32* %12, align 4
  %275 = load i32, i32* %12, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %289

277:                                              ; preds = %267
  %278 = load i32, i32* %12, align 4
  %279 = call i32 @intlog10(i32 %278)
  %280 = sub nsw i32 80807124, %279
  %281 = add nsw i32 %280, 3355443
  %282 = mul nsw i32 %281, 10000
  %283 = call i32 @div_u64(i32 %282, i32 16777216)
  store i32 %283, i32* %11, align 4
  %284 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %285 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %284, i32 0, i32 0
  %286 = load i32, i32* %11, align 4
  %287 = load i32, i32* %12, align 4
  %288 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %285, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %286, i32 %287)
  br label %290

289:                                              ; preds = %267
  store i32 0, i32* %11, align 4
  br label %290

290:                                              ; preds = %289, %277
  %291 = load i32, i32* %11, align 4
  %292 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %293 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i64 0
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 0
  store i32 %291, i32* %297, align 8
  %298 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %299 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %300 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i64 0
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 1
  store i8* %298, i8** %304, align 8
  br label %480

305:                                              ; preds = %251, %245
  %306 = load i32*, i32** %5, align 8
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @FE_HAS_VITERBI, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %397

311:                                              ; preds = %305
  %312 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %313 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp eq i32 %314, 128
  br i1 %315, label %316, label %397

316:                                              ; preds = %311
  store i32 0, i32* %10, align 4
  br label %317

317:                                              ; preds = %336, %316
  %318 = load i32, i32* %10, align 4
  %319 = icmp slt i32 %318, 3
  br i1 %319, label %320, label %339

320:                                              ; preds = %317
  %321 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %322 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 2
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* %10, align 4
  %327 = add nsw i32 183, %326
  %328 = load i32, i32* %10, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %329
  %331 = call i32 @regmap_bulk_read(i32 %325, i32 %327, i32* %330, i32 1)
  store i32 %331, i32* %9, align 4
  %332 = load i32, i32* %9, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %320
  br label %666

335:                                              ; preds = %320
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %10, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %10, align 4
  br label %317

339:                                              ; preds = %317
  %340 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %341 = load i32, i32* %340, align 4
  %342 = shl i32 %341, 8
  %343 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  %344 = load i32, i32* %343, align 8
  %345 = shl i32 %344, 0
  %346 = or i32 %342, %345
  store i32 %346, i32* %12, align 4
  %347 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %348 = load i32, i32* %347, align 16
  %349 = ashr i32 %348, 2
  %350 = and i32 %349, 1
  store i32 %350, i32* %13, align 4
  %351 = load i32, i32* %12, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %381

353:                                              ; preds = %339
  %354 = load i32, i32* %13, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %368

356:                                              ; preds = %353
  %357 = load i32, i32* %12, align 4
  %358 = call i32 @intlog10(i32 %357)
  %359 = sub nsw i32 70706234, %358
  %360 = sub nsw i32 %359, 10066330
  %361 = mul nsw i32 %360, 10000
  %362 = call i32 @div_u64(i32 %361, i32 16777216)
  store i32 %362, i32* %11, align 4
  %363 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %364 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %363, i32 0, i32 0
  %365 = load i32, i32* %11, align 4
  %366 = load i32, i32* %12, align 4
  %367 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %364, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %365, i32 %366)
  br label %380

368:                                              ; preds = %353
  %369 = load i32, i32* %12, align 4
  %370 = call i32 @intlog10(i32 %369)
  %371 = sub nsw i32 80807124, %370
  %372 = add nsw i32 %371, 3355443
  %373 = mul nsw i32 %372, 10000
  %374 = call i32 @div_u64(i32 %373, i32 16777216)
  store i32 %374, i32* %11, align 4
  %375 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %376 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %375, i32 0, i32 0
  %377 = load i32, i32* %11, align 4
  %378 = load i32, i32* %12, align 4
  %379 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %376, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %377, i32 %378)
  br label %380

380:                                              ; preds = %368, %356
  br label %382

381:                                              ; preds = %339
  store i32 0, i32* %11, align 4
  br label %382

382:                                              ; preds = %381, %380
  %383 = load i32, i32* %11, align 4
  %384 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %385 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %384, i32 0, i32 5
  %386 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i64 0
  %389 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %388, i32 0, i32 0
  store i32 %383, i32* %389, align 8
  %390 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %391 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %392 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %391, i32 0, i32 5
  %393 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i64 0
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 1
  store i8* %390, i8** %396, align 8
  br label %479

397:                                              ; preds = %311, %305
  %398 = load i32*, i32** %5, align 8
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @FE_HAS_VITERBI, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %470

403:                                              ; preds = %397
  %404 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %405 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = icmp eq i32 %406, 130
  br i1 %407, label %408, label %470

408:                                              ; preds = %403
  %409 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %410 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %409, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 1
  %413 = load i32, i32* %412, align 4
  %414 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %415 = call i32 @regmap_bulk_read(i32 %413, i32 161, i32* %414, i32 4)
  store i32 %415, i32* %9, align 4
  %416 = load i32, i32* %9, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %408
  br label %666

419:                                              ; preds = %408
  %420 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %421 = load i32, i32* %420, align 16
  %422 = shl i32 %421, 8
  %423 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %424 = load i32, i32* %423, align 4
  %425 = shl i32 %424, 0
  %426 = or i32 %422, %425
  store i32 %426, i32* %13, align 4
  %427 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  %428 = load i32, i32* %427, align 8
  %429 = shl i32 %428, 8
  %430 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3
  %431 = load i32, i32* %430, align 4
  %432 = shl i32 %431, 0
  %433 = or i32 %429, %432
  store i32 %433, i32* %14, align 4
  %434 = load i32, i32* %13, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %454

436:                                              ; preds = %419
  %437 = load i32, i32* %14, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %454

439:                                              ; preds = %436
  %440 = load i32, i32* %13, align 4
  %441 = call i32 @intlog10(i32 %440)
  %442 = add nsw i32 15151336, %441
  %443 = load i32, i32* %14, align 4
  %444 = call i32 @intlog10(i32 %443)
  %445 = sub nsw i32 %442, %444
  %446 = mul nsw i32 %445, 10000
  %447 = call i32 @div_u64(i32 %446, i32 16777216)
  store i32 %447, i32* %11, align 4
  %448 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %449 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %448, i32 0, i32 0
  %450 = load i32, i32* %11, align 4
  %451 = load i32, i32* %13, align 4
  %452 = load i32, i32* %14, align 4
  %453 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %449, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %450, i32 %451, i32 %452)
  br label %455

454:                                              ; preds = %436, %419
  store i32 0, i32* %11, align 4
  br label %455

455:                                              ; preds = %454, %439
  %456 = load i32, i32* %11, align 4
  %457 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %458 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %457, i32 0, i32 5
  %459 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %458, i32 0, i32 0
  %460 = load %struct.TYPE_18__*, %struct.TYPE_18__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %460, i64 0
  %462 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %461, i32 0, i32 0
  store i32 %456, i32* %462, align 8
  %463 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %464 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %465 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %464, i32 0, i32 5
  %466 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %465, i32 0, i32 0
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i64 0
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %468, i32 0, i32 1
  store i8* %463, i8** %469, align 8
  br label %478

470:                                              ; preds = %403, %397
  %471 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %472 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %473 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %472, i32 0, i32 5
  %474 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %473, i32 0, i32 0
  %475 = load %struct.TYPE_18__*, %struct.TYPE_18__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %475, i64 0
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %476, i32 0, i32 1
  store i8* %471, i8** %477, align 8
  br label %478

478:                                              ; preds = %470, %455
  br label %479

479:                                              ; preds = %478, %382
  br label %480

480:                                              ; preds = %479, %290
  %481 = load i32*, i32** %5, align 8
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @FE_HAS_LOCK, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %566

486:                                              ; preds = %480
  %487 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %488 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = icmp eq i32 %489, 129
  br i1 %490, label %496, label %491

491:                                              ; preds = %486
  %492 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %493 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = icmp eq i32 %494, 130
  br i1 %495, label %496, label %566

496:                                              ; preds = %491, %486
  %497 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %498 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %497, i32 0, i32 0
  %499 = load i32*, i32** %498, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 0
  %501 = load i32, i32* %500, align 4
  %502 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %503 = call i32 @regmap_bulk_read(i32 %501, i32 146, i32* %502, i32 5)
  store i32 %503, i32* %9, align 4
  %504 = load i32, i32* %9, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %507

506:                                              ; preds = %496
  br label %666

507:                                              ; preds = %496
  %508 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %509 = load i32, i32* %508, align 16
  %510 = shl i32 %509, 16
  %511 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %512 = load i32, i32* %511, align 4
  %513 = shl i32 %512, 8
  %514 = or i32 %510, %513
  %515 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  %516 = load i32, i32* %515, align 8
  %517 = shl i32 %516, 0
  %518 = or i32 %514, %517
  store i32 %518, i32* %13, align 4
  %519 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3
  %520 = load i32, i32* %519, align 4
  %521 = shl i32 %520, 8
  %522 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 4
  %523 = load i32, i32* %522, align 16
  %524 = shl i32 %523, 0
  %525 = or i32 %521, %524
  store i32 %525, i32* %14, align 4
  %526 = load i32, i32* %14, align 4
  %527 = mul i32 %526, 8
  %528 = mul i32 %527, 204
  store i32 %528, i32* %14, align 4
  %529 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %530 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %529, i32 0, i32 0
  %531 = load i32, i32* %13, align 4
  %532 = load i32, i32* %14, align 4
  %533 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %530, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %531, i32 %532)
  %534 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %535 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %536 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %535, i32 0, i32 4
  %537 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %536, i32 0, i32 0
  %538 = load %struct.TYPE_20__*, %struct.TYPE_20__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %538, i64 0
  %540 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %539, i32 0, i32 1
  store i8* %534, i8** %540, align 8
  %541 = load i32, i32* %13, align 4
  %542 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %543 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %542, i32 0, i32 4
  %544 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %543, i32 0, i32 0
  %545 = load %struct.TYPE_20__*, %struct.TYPE_20__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %545, i64 0
  %547 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = add i32 %548, %541
  store i32 %549, i32* %547, align 8
  %550 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %551 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %552 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %551, i32 0, i32 3
  %553 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %552, i32 0, i32 0
  %554 = load %struct.TYPE_22__*, %struct.TYPE_22__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %554, i64 0
  %556 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %555, i32 0, i32 1
  store i8* %550, i8** %556, align 8
  %557 = load i32, i32* %14, align 4
  %558 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %559 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %558, i32 0, i32 3
  %560 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %559, i32 0, i32 0
  %561 = load %struct.TYPE_22__*, %struct.TYPE_22__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %561, i64 0
  %563 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = add i32 %564, %557
  store i32 %565, i32* %563, align 8
  br label %581

566:                                              ; preds = %491, %480
  %567 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %568 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %569 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %568, i32 0, i32 4
  %570 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %569, i32 0, i32 0
  %571 = load %struct.TYPE_20__*, %struct.TYPE_20__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %571, i64 0
  %573 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %572, i32 0, i32 1
  store i8* %567, i8** %573, align 8
  %574 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %575 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %576 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %575, i32 0, i32 3
  %577 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %576, i32 0, i32 0
  %578 = load %struct.TYPE_22__*, %struct.TYPE_22__** %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %578, i64 0
  %580 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %579, i32 0, i32 1
  store i8* %574, i8** %580, align 8
  br label %581

581:                                              ; preds = %566, %507
  %582 = load i32*, i32** %5, align 8
  %583 = load i32, i32* %582, align 4
  %584 = load i32, i32* @FE_HAS_LOCK, align 4
  %585 = and i32 %583, %584
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %650

587:                                              ; preds = %581
  %588 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %589 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %588, i32 0, i32 0
  %590 = load i32*, i32** %589, align 8
  %591 = getelementptr inbounds i32, i32* %590, i64 0
  %592 = load i32, i32* %591, align 4
  %593 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %594 = call i32 @regmap_bulk_read(i32 %592, i32 221, i32* %593, i32 4)
  store i32 %594, i32* %9, align 4
  %595 = load i32, i32* %9, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %598

597:                                              ; preds = %587
  br label %666

598:                                              ; preds = %587
  %599 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %600 = load i32, i32* %599, align 16
  %601 = shl i32 %600, 8
  %602 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %603 = load i32, i32* %602, align 4
  %604 = shl i32 %603, 0
  %605 = or i32 %601, %604
  store i32 %605, i32* %13, align 4
  %606 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  %607 = load i32, i32* %606, align 8
  %608 = shl i32 %607, 8
  %609 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3
  %610 = load i32, i32* %609, align 4
  %611 = shl i32 %610, 0
  %612 = or i32 %608, %611
  store i32 %612, i32* %14, align 4
  %613 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %614 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %613, i32 0, i32 0
  %615 = load i32, i32* %13, align 4
  %616 = load i32, i32* %14, align 4
  %617 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %614, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %615, i32 %616)
  %618 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %619 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %620 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %619, i32 0, i32 2
  %621 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %620, i32 0, i32 0
  %622 = load %struct.TYPE_24__*, %struct.TYPE_24__** %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %622, i64 0
  %624 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %623, i32 0, i32 1
  store i8* %618, i8** %624, align 8
  %625 = load i32, i32* %13, align 4
  %626 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %627 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %626, i32 0, i32 2
  %628 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %627, i32 0, i32 0
  %629 = load %struct.TYPE_24__*, %struct.TYPE_24__** %628, align 8
  %630 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %629, i64 0
  %631 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 8
  %633 = add i32 %632, %625
  store i32 %633, i32* %631, align 8
  %634 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %635 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %636 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %635, i32 0, i32 1
  %637 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %636, i32 0, i32 0
  %638 = load %struct.TYPE_14__*, %struct.TYPE_14__** %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %638, i64 0
  %640 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %639, i32 0, i32 1
  store i8* %634, i8** %640, align 8
  %641 = load i32, i32* %14, align 4
  %642 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %643 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %642, i32 0, i32 1
  %644 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %643, i32 0, i32 0
  %645 = load %struct.TYPE_14__*, %struct.TYPE_14__** %644, align 8
  %646 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %645, i64 0
  %647 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 8
  %649 = add i32 %648, %641
  store i32 %649, i32* %647, align 8
  br label %665

650:                                              ; preds = %581
  %651 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %652 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %653 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %652, i32 0, i32 2
  %654 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %653, i32 0, i32 0
  %655 = load %struct.TYPE_24__*, %struct.TYPE_24__** %654, align 8
  %656 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %655, i64 0
  %657 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %656, i32 0, i32 1
  store i8* %651, i8** %657, align 8
  %658 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %659 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %660 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %659, i32 0, i32 1
  %661 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %660, i32 0, i32 0
  %662 = load %struct.TYPE_14__*, %struct.TYPE_14__** %661, align 8
  %663 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %662, i64 0
  %664 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %663, i32 0, i32 1
  store i8* %658, i8** %664, align 8
  br label %665

665:                                              ; preds = %650, %598
  store i32 0, i32* %3, align 4
  br label %672

666:                                              ; preds = %597, %506, %418, %334, %266, %202, %175, %155, %141, %86, %43, %27
  %667 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %668 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %667, i32 0, i32 0
  %669 = load i32, i32* %9, align 4
  %670 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %668, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %669)
  %671 = load i32, i32* %9, align 4
  store i32 %671, i32* %3, align 4
  br label %672

672:                                              ; preds = %666, %665
  %673 = load i32, i32* %3, align 4
  ret i32 %673
}

declare dso_local %struct.mn88473_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @intlog10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
