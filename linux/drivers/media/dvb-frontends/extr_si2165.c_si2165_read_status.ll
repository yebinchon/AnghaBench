; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.si2165_state* }
%struct.dtv_frontend_properties = type { i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.si2165_state = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32 }

@REG_CHECK_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@REG_PS_LOCK = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@REG_FEC_LOCK = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@REG_C_N = common dso_local global i32 0, align 4
@FE_SCALE_DECIBEL = common dso_local global i64 0, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i64 0, align 8
@REG_BER_RST = common dso_local global i32 0, align 4
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@REG_BER_AVAIL = common dso_local global i32 0, align 4
@REG_BER_BIT = common dso_local global i32 0, align 4
@STATISTICS_PERIOD_BIT_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"post_bit_error=%u post_bit_count=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @si2165_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2165_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.si2165_state*, align 8
  %10 = alloca %struct.dtv_frontend_properties*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.si2165_state*, %struct.si2165_state** %14, align 8
  store %struct.si2165_state* %15, %struct.si2165_state** %9, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  store %struct.dtv_frontend_properties* %17, %struct.dtv_frontend_properties** %10, align 8
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %73 [
    i32 128, label %23
    i32 129, label %43
  ]

23:                                               ; preds = %2
  %24 = load %struct.si2165_state*, %struct.si2165_state** %9, align 8
  %25 = load i32, i32* @REG_CHECK_SIGNAL, align 4
  %26 = call i32 @si2165_readreg8(%struct.si2165_state* %24, i32 %25, i32* %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %279

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 3
  switch i32 %33, label %42 [
    i32 0, label %34
    i32 1, label %34
    i32 2, label %35
  ]

34:                                               ; preds = %31, %31
  br label %42

35:                                               ; preds = %31
  %36 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %37 = load i32, i32* @FE_HAS_CARRIER, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %31, %35, %34
  br label %73

43:                                               ; preds = %2
  %44 = load %struct.si2165_state*, %struct.si2165_state** %9, align 8
  %45 = load i32, i32* @REG_PS_LOCK, align 4
  %46 = call i32 @si2165_readreg8(%struct.si2165_state* %44, i32 %45, i32* %7)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %279

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @FE_HAS_CARRIER, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @FE_HAS_VITERBI, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @FE_HAS_SYNC, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %55, %51
  br label %73

73:                                               ; preds = %2, %72, %42
  %74 = load %struct.si2165_state*, %struct.si2165_state** %9, align 8
  %75 = load i32, i32* @REG_FEC_LOCK, align 4
  %76 = call i32 @si2165_readreg8(%struct.si2165_state* %74, i32 %75, i32* %7)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %279

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %81
  %86 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @FE_HAS_CARRIER, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @FE_HAS_VITERBI, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* @FE_HAS_SYNC, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @FE_HAS_LOCK, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %85, %81
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, 129
  br i1 %108, label %109, label %144

109:                                              ; preds = %106
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @FE_HAS_VITERBI, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %109
  %116 = load %struct.si2165_state*, %struct.si2165_state** %9, align 8
  %117 = load i32, i32* @REG_C_N, align 4
  %118 = call i32 @si2165_readreg24(%struct.si2165_state* %116, i32 %117, i32* %8)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %279

123:                                              ; preds = %115
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @intlog10(i32 %124)
  %126 = trunc i64 %125 to i32
  %127 = sub nsw i32 121210686, %126
  %128 = mul nsw i32 10000, %127
  %129 = ashr i32 %128, 24
  store i32 %129, i32* %8, align 4
  %130 = load i64, i64* @FE_SCALE_DECIBEL, align 8
  %131 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %132 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i64 %130, i64* %136, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %139 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 %137, i32* %143, align 8
  br label %152

144:                                              ; preds = %109, %106
  %145 = load i64, i64* @FE_SCALE_NOT_AVAILABLE, align 8
  %146 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i64 %145, i64* %151, align 8
  br label %152

152:                                              ; preds = %144, %123
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @FE_HAS_VITERBI, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %262

158:                                              ; preds = %152
  %159 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %160 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @FE_SCALE_NOT_AVAILABLE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %206

168:                                              ; preds = %158
  %169 = load %struct.si2165_state*, %struct.si2165_state** %9, align 8
  %170 = load i32, i32* @REG_BER_RST, align 4
  %171 = call i32 @si2165_writereg8(%struct.si2165_state* %169, i32 %170, i32 1)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %3, align 4
  br label %279

176:                                              ; preds = %168
  %177 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %178 = ptrtoint i8* %177 to i64
  %179 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %180 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  store i64 %178, i64* %184, align 8
  %185 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %186 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %187 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  store i8* %185, i8** %191, align 8
  %192 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %193 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  store i32 0, i32* %197, align 8
  %198 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %199 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  store i64 0, i64* %203, align 8
  %204 = load %struct.si2165_state*, %struct.si2165_state** %9, align 8
  %205 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %204, i32 0, i32 1
  store i64 0, i64* %205, align 8
  br label %261

206:                                              ; preds = %158
  %207 = load %struct.si2165_state*, %struct.si2165_state** %9, align 8
  %208 = load i32, i32* @REG_BER_AVAIL, align 4
  %209 = call i32 @si2165_readreg8(%struct.si2165_state* %207, i32 %208, i32* %7)
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = load i32, i32* %6, align 4
  store i32 %213, i32* %3, align 4
  br label %279

214:                                              ; preds = %206
  %215 = load i32, i32* %7, align 4
  %216 = and i32 %215, 1
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %260

218:                                              ; preds = %214
  %219 = load %struct.si2165_state*, %struct.si2165_state** %9, align 8
  %220 = load i32, i32* @REG_BER_BIT, align 4
  %221 = call i32 @si2165_readreg24(%struct.si2165_state* %219, i32 %220, i32* %12)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %218
  %225 = load i32, i32* %6, align 4
  store i32 %225, i32* %3, align 4
  br label %279

226:                                              ; preds = %218
  %227 = load i32, i32* %12, align 4
  %228 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %229 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, %227
  store i32 %235, i32* %233, align 8
  %236 = load i64, i64* @STATISTICS_PERIOD_BIT_COUNT, align 8
  %237 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %238 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i64 0
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, %236
  store i64 %244, i64* %242, align 8
  %245 = load %struct.si2165_state*, %struct.si2165_state** %9, align 8
  %246 = load i32, i32* @REG_BER_RST, align 4
  %247 = call i32 @si2165_writereg8(%struct.si2165_state* %245, i32 %246, i32 1)
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %6, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %226
  %251 = load i32, i32* %6, align 4
  store i32 %251, i32* %3, align 4
  br label %279

252:                                              ; preds = %226
  %253 = load %struct.si2165_state*, %struct.si2165_state** %9, align 8
  %254 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %253, i32 0, i32 0
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* %12, align 4
  %258 = load i64, i64* @STATISTICS_PERIOD_BIT_COUNT, align 8
  %259 = call i32 @dev_dbg(i32* %256, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %257, i64 %258)
  br label %260

260:                                              ; preds = %252, %214
  br label %261

261:                                              ; preds = %260, %176
  br label %278

262:                                              ; preds = %152
  %263 = load i64, i64* @FE_SCALE_NOT_AVAILABLE, align 8
  %264 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %265 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  store i64 %263, i64* %269, align 8
  %270 = load i64, i64* @FE_SCALE_NOT_AVAILABLE, align 8
  %271 = inttoptr i64 %270 to i8*
  %272 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %273 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i64 0
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  store i8* %271, i8** %277, align 8
  br label %278

278:                                              ; preds = %262, %261
  store i32 0, i32* %3, align 4
  br label %279

279:                                              ; preds = %278, %250, %224, %212, %174, %121, %79, %49, %29
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local i32 @si2165_readreg8(%struct.si2165_state*, i32, i32*) #1

declare dso_local i32 @si2165_readreg24(%struct.si2165_state*, i32, i32*) #1

declare dso_local i64 @intlog10(i32) #1

declare dso_local i32 @si2165_writereg8(%struct.si2165_state*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
