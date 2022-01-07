; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_coldlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_coldlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32, %struct.dvb_frontend }
%struct.TYPE_2__ = type { i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i64)*, i64 (%struct.dvb_frontend*, i64*)* }
%struct.dvb_frontend = type { i32 }

@DMDISTATE = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Tuner phase locked\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Tuner unlocked\00", align 1
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_get_coldlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_coldlock(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %16 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %15, i32 0, i32 6
  store %struct.dvb_frontend* %16, %struct.dvb_frontend** %6, align 8
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %18 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %19, 10000000
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %22, 3
  store i32 %23, i32* %13, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %3, align 4
  br label %277

35:                                               ; preds = %27
  %36 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %37 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %38, 10000000
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %42 = call i64 @stv090x_chk_tmg(%struct.stv090x_state* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %46 = load i32, i32* @DMDISTATE, align 4
  %47 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %45, i32 %46, i32 31)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %274

50:                                               ; preds = %44
  %51 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %52 = load i32, i32* @DMDISTATE, align 4
  %53 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %51, i32 %52, i32 21)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %274

56:                                               ; preds = %50
  %57 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %277

60:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %277

61:                                               ; preds = %35
  %62 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %63 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sle i32 %64, 4000000
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 1000, i32* %8, align 4
  br label %82

67:                                               ; preds = %61
  %68 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %69 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sle i32 %70, 7000000
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 2000, i32* %8, align 4
  br label %81

73:                                               ; preds = %67
  %74 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %75 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sle i32 %76, 10000000
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 3000, i32* %8, align 4
  br label %80

79:                                               ; preds = %73
  store i32 5000, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80, %72
  br label %82

82:                                               ; preds = %81, %66
  %83 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %84 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 1000
  %87 = load i32, i32* %8, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sdiv i32 %89, 2
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  %93 = mul nsw i32 2, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  store i32 2, i32* %9, align 4
  br label %102

97:                                               ; preds = %82
  %98 = load i32, i32* %9, align 4
  %99 = icmp sgt i32 %98, 12
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 12, i32* %9, align 4
  br label %101

101:                                              ; preds = %100, %97
  br label %102

102:                                              ; preds = %101, %96
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %103 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %104 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %12, align 4
  %106 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %107 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %110 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @stv090x_car_width(i32 %108, i32 %111)
  %113 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %114 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %112, %116
  %118 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %119 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %260, %102
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  br label %128

128:                                              ; preds = %124, %120
  %129 = phi i1 [ false, %120 ], [ %127, %124 ]
  br i1 %129, label %130, label %269

130:                                              ; preds = %128
  %131 = load i32, i32* %11, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %8, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %12, align 4
  br label %145

139:                                              ; preds = %130
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %8, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %12, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %139, %133
  %146 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %147 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %146, i32 1)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %274

150:                                              ; preds = %145
  %151 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %152 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %151, i32 0, i32 3
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %154, align 8
  %156 = icmp ne i64 (%struct.dvb_frontend*, i32)* %155, null
  br i1 %156, label %157, label %169

157:                                              ; preds = %150
  %158 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %159 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %158, i32 0, i32 3
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %161, align 8
  %163 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %164 = load i32, i32* %12, align 4
  %165 = call i64 %162(%struct.dvb_frontend* %163, i32 %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  br label %271

168:                                              ; preds = %157
  br label %169

169:                                              ; preds = %168, %150
  %170 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %171 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %170, i32 0, i32 3
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i64 (%struct.dvb_frontend*, i64)*, i64 (%struct.dvb_frontend*, i64)** %173, align 8
  %175 = icmp ne i64 (%struct.dvb_frontend*, i64)* %174, null
  br i1 %175, label %176, label %190

176:                                              ; preds = %169
  %177 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %178 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %177, i32 0, i32 3
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i64 (%struct.dvb_frontend*, i64)*, i64 (%struct.dvb_frontend*, i64)** %180, align 8
  %182 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %183 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %184 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = call i64 %181(%struct.dvb_frontend* %182, i64 %185)
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  br label %271

189:                                              ; preds = %176
  br label %190

190:                                              ; preds = %189, %169
  %191 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %192 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %191, i32 0)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  br label %274

195:                                              ; preds = %190
  %196 = call i32 @msleep(i32 50)
  %197 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %198 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %197, i32 1)
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %274

201:                                              ; preds = %195
  %202 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %203 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %202, i32 0, i32 3
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 2
  %206 = load i64 (%struct.dvb_frontend*, i64*)*, i64 (%struct.dvb_frontend*, i64*)** %205, align 8
  %207 = icmp ne i64 (%struct.dvb_frontend*, i64*)* %206, null
  br i1 %207, label %208, label %228

208:                                              ; preds = %201
  %209 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %210 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %209, i32 0, i32 3
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 2
  %213 = load i64 (%struct.dvb_frontend*, i64*)*, i64 (%struct.dvb_frontend*, i64*)** %212, align 8
  %214 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %215 = call i64 %213(%struct.dvb_frontend* %214, i64* %7)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  br label %271

218:                                              ; preds = %208
  %219 = load i64, i64* %7, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load i32, i32* @FE_DEBUG, align 4
  %223 = call i32 @dprintk(i32 %222, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %227

224:                                              ; preds = %218
  %225 = load i32, i32* @FE_DEBUG, align 4
  %226 = call i32 @dprintk(i32 %225, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %221
  br label %228

228:                                              ; preds = %227, %201
  %229 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %230 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %229, i32 0)
  %231 = icmp slt i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  br label %274

233:                                              ; preds = %228
  %234 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %235 = load i32, i32* @DMDISTATE, align 4
  %236 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %234, i32 %235, i32 28)
  %237 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %238 = load i32, i32* @CFRINIT1, align 4
  %239 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %237, i32 %238, i32 0)
  %240 = icmp slt i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %233
  br label %274

242:                                              ; preds = %233
  %243 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %244 = load i32, i32* @CFRINIT0, align 4
  %245 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %243, i32 %244, i32 0)
  %246 = icmp slt i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %242
  br label %274

248:                                              ; preds = %242
  %249 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %250 = load i32, i32* @DMDISTATE, align 4
  %251 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %249, i32 %250, i32 31)
  %252 = icmp slt i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  br label %274

254:                                              ; preds = %248
  %255 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %256 = load i32, i32* @DMDISTATE, align 4
  %257 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %255, i32 %256, i32 21)
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  br label %274

260:                                              ; preds = %254
  %261 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sdiv i32 %262, 3
  %264 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %261, i32 %263)
  store i32 %264, i32* %14, align 4
  %265 = load i32, i32* %11, align 4
  %266 = mul nsw i32 %265, -1
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %10, align 4
  br label %120

269:                                              ; preds = %128
  %270 = load i32, i32* %14, align 4
  store i32 %270, i32* %3, align 4
  br label %277

271:                                              ; preds = %217, %188, %167
  %272 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %273 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %272, i32 0)
  br label %274

274:                                              ; preds = %271, %259, %253, %247, %241, %232, %200, %194, %149, %55, %49
  %275 = load i32, i32* @FE_ERROR, align 4
  %276 = call i32 @dprintk(i32 %275, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %277

277:                                              ; preds = %274, %269, %60, %56, %33
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local i32 @stv090x_get_dmdlock(%struct.stv090x_state*, i32) #1

declare dso_local i64 @stv090x_chk_tmg(%struct.stv090x_state*) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i64 @stv090x_car_width(i32, i32) #1

declare dso_local i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
