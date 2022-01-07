; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ix2505v.c_ix2505v_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ix2505v.c_ix2505v_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.ix2505v_state*, %struct.dtv_frontend_properties }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_4__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_4__ = type { i32, i32 }
%struct.ix2505v_state = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32 }

@kHz = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Frq=%d x=%d N=%d A=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Osc=%x b_w=%x lpf=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Data 0=[%4phN]\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Data 2=[%x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @ix2505v_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix2505v_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.ix2505v_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 2
  store %struct.dtv_frontend_properties* %22, %struct.dtv_frontend_properties** %4, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 1
  %25 = load %struct.ix2505v_state*, %struct.ix2505v_state** %24, align 8
  store %struct.ix2505v_state* %25, %struct.ix2505v_state** %5, align 8
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 27
  %33 = sdiv i32 %32, 32000
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %34 = bitcast [4 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 16, i1 false)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @kHz, align 4
  %42 = sdiv i32 %40, %41
  %43 = icmp slt i32 %35, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @kHz, align 4
  %52 = sdiv i32 %50, %51
  %53 = icmp sgt i32 %45, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44, %1
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %328

57:                                               ; preds = %44
  %58 = load %struct.ix2505v_state*, %struct.ix2505v_state** %5, align 8
  %59 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %57
  %65 = load %struct.ix2505v_state*, %struct.ix2505v_state** %5, align 8
  %66 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.ix2505v_state*, %struct.ix2505v_state** %5, align 8
  %73 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  br label %78

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %71
  %79 = phi i32 [ %76, %71 ], [ 0, %77 ]
  store i32 %79, i32* %14, align 4
  br label %81

80:                                               ; preds = %57
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %80, %78
  %82 = load %struct.ix2505v_state*, %struct.ix2505v_state** %5, align 8
  %83 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.ix2505v_state*, %struct.ix2505v_state** %5, align 8
  %90 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %15, align 4
  br label %95

94:                                               ; preds = %81
  store i32 3, i32* %15, align 4
  br label %95

95:                                               ; preds = %94, %88
  store i32 8, i32* %16, align 4
  store i32 32, i32* %17, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %16, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sdiv i32 %98, 40
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %17, align 4
  %102 = sdiv i32 %100, %101
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sdiv i32 %103, 100
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %106, 100
  %108 = sub nsw i32 %105, %107
  %109 = load i32, i32* %17, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sdiv i32 %110, 100
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %14, align 4
  %113 = and i32 %112, 3
  %114 = shl i32 %113, 5
  %115 = load i32, i32* %9, align 4
  %116 = ashr i32 %115, 3
  %117 = or i32 %114, %116
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  store i32 %117, i32* %118, align 16
  %119 = load i32, i32* %9, align 4
  %120 = shl i32 %119, 5
  %121 = load i32, i32* %10, align 4
  %122 = and i32 %121, 31
  %123 = or i32 %120, %122
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %15, align 4
  %126 = and i32 %125, 3
  %127 = shl i32 %126, 5
  %128 = or i32 129, %127
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  store i32 %128, i32* %129, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = icmp sle i32 %135, 1065000
  br i1 %136, label %137, label %138

137:                                              ; preds = %95
  store i32 194, i32* %18, align 4
  br label %169

138:                                              ; preds = %95
  %139 = load i32, i32* %6, align 4
  %140 = icmp sle i32 %139, 1170000
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 226, i32* %18, align 4
  br label %168

142:                                              ; preds = %138
  %143 = load i32, i32* %6, align 4
  %144 = icmp sle i32 %143, 1300000
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 32, i32* %18, align 4
  br label %167

146:                                              ; preds = %142
  %147 = load i32, i32* %6, align 4
  %148 = icmp sle i32 %147, 1445000
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 64, i32* %18, align 4
  br label %166

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  %152 = icmp sle i32 %151, 1607000
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 96, i32* %18, align 4
  br label %165

154:                                              ; preds = %150
  %155 = load i32, i32* %6, align 4
  %156 = icmp sle i32 %155, 1778000
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 128, i32* %18, align 4
  br label %164

158:                                              ; preds = %154
  %159 = load i32, i32* %6, align 4
  %160 = icmp sle i32 %159, 1942000
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 160, i32* %18, align 4
  br label %163

162:                                              ; preds = %158
  store i32 192, i32* %18, align 4
  br label %163

163:                                              ; preds = %162, %161
  br label %164

164:                                              ; preds = %163, %157
  br label %165

165:                                              ; preds = %164, %153
  br label %166

166:                                              ; preds = %165, %149
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167, %141
  br label %169

169:                                              ; preds = %168, %137
  %170 = load i32, i32* %18, align 4
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  store i32 %170, i32* %171, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp sle i32 %172, 10000
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store i32 12, i32* %19, align 4
  br label %221

175:                                              ; preds = %169
  %176 = load i32, i32* %7, align 4
  %177 = icmp sle i32 %176, 12000
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 2, i32* %19, align 4
  br label %220

179:                                              ; preds = %175
  %180 = load i32, i32* %7, align 4
  %181 = icmp sle i32 %180, 14000
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 10, i32* %19, align 4
  br label %219

183:                                              ; preds = %179
  %184 = load i32, i32* %7, align 4
  %185 = icmp sle i32 %184, 16000
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i32 6, i32* %19, align 4
  br label %218

187:                                              ; preds = %183
  %188 = load i32, i32* %7, align 4
  %189 = icmp sle i32 %188, 18000
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 14, i32* %19, align 4
  br label %217

191:                                              ; preds = %187
  %192 = load i32, i32* %7, align 4
  %193 = icmp sle i32 %192, 20000
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 1, i32* %19, align 4
  br label %216

195:                                              ; preds = %191
  %196 = load i32, i32* %7, align 4
  %197 = icmp sle i32 %196, 22000
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 9, i32* %19, align 4
  br label %215

199:                                              ; preds = %195
  %200 = load i32, i32* %7, align 4
  %201 = icmp sle i32 %200, 24000
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  store i32 5, i32* %19, align 4
  br label %214

203:                                              ; preds = %199
  %204 = load i32, i32* %7, align 4
  %205 = icmp sle i32 %204, 26000
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 13, i32* %19, align 4
  br label %213

207:                                              ; preds = %203
  %208 = load i32, i32* %7, align 4
  %209 = icmp sle i32 %208, 28000
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32 3, i32* %19, align 4
  br label %212

211:                                              ; preds = %207
  store i32 11, i32* %19, align 4
  br label %212

212:                                              ; preds = %211, %210
  br label %213

213:                                              ; preds = %212, %206
  br label %214

214:                                              ; preds = %213, %202
  br label %215

215:                                              ; preds = %214, %198
  br label %216

216:                                              ; preds = %215, %194
  br label %217

217:                                              ; preds = %216, %190
  br label %218

218:                                              ; preds = %217, %186
  br label %219

219:                                              ; preds = %218, %182
  br label %220

220:                                              ; preds = %219, %178
  br label %221

221:                                              ; preds = %220, %174
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* %19, align 4
  %225 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %222, i32 %223, i32 %224)
  %226 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %227 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %226)
  %228 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %229 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %230, align 8
  %232 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %231, null
  br i1 %232, label %233, label %241

233:                                              ; preds = %221
  %234 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %235 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %236, align 8
  %238 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %239 = bitcast %struct.dvb_frontend* %238 to %struct.dvb_frontend.0*
  %240 = call i32 %237(%struct.dvb_frontend.0* %239, i32 1)
  br label %241

241:                                              ; preds = %233, %221
  store i32 16, i32* %13, align 4
  %242 = load %struct.ix2505v_state*, %struct.ix2505v_state** %5, align 8
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %244 = load i32, i32* %13, align 4
  %245 = call i32 @ix2505v_write(%struct.ix2505v_state* %242, i32* %243, i32 %244)
  %246 = load i32, i32* %12, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %12, align 4
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, 4
  store i32 %250, i32* %248, align 8
  %251 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %252 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %253, align 8
  %255 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %254, null
  br i1 %255, label %256, label %264

256:                                              ; preds = %241
  %257 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %258 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %259, align 8
  %261 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %262 = bitcast %struct.dvb_frontend* %261 to %struct.dvb_frontend.0*
  %263 = call i32 %260(%struct.dvb_frontend.0* %262, i32 1)
  br label %264

264:                                              ; preds = %256, %241
  store i32 1, i32* %13, align 4
  %265 = load %struct.ix2505v_state*, %struct.ix2505v_state** %5, align 8
  %266 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %267 = load i32, i32* %13, align 4
  %268 = call i32 @ix2505v_write(%struct.ix2505v_state* %265, i32* %266, i32 %267)
  %269 = load i32, i32* %12, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %12, align 4
  %271 = call i32 @msleep(i32 10)
  %272 = load i32, i32* %19, align 4
  %273 = ashr i32 %272, 2
  %274 = and i32 %273, 3
  %275 = shl i32 %274, 3
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %275
  store i32 %278, i32* %276, align 8
  %279 = load i32, i32* %19, align 4
  %280 = and i32 %279, 3
  %281 = shl i32 %280, 2
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %281
  store i32 %284, i32* %282, align 4
  %285 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %286 = load i32, i32* %285, align 8
  %287 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  %288 = load i32, i32* %287, align 4
  %289 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %286, i32 %288)
  %290 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %291 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %292, align 8
  %294 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %293, null
  br i1 %294, label %295, label %303

295:                                              ; preds = %264
  %296 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %297 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 0
  %299 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %298, align 8
  %300 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %301 = bitcast %struct.dvb_frontend* %300 to %struct.dvb_frontend.0*
  %302 = call i32 %299(%struct.dvb_frontend.0* %301, i32 1)
  br label %303

303:                                              ; preds = %295, %264
  store i32 2, i32* %13, align 4
  %304 = load %struct.ix2505v_state*, %struct.ix2505v_state** %5, align 8
  %305 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %306 = load i32, i32* %13, align 4
  %307 = call i32 @ix2505v_write(%struct.ix2505v_state* %304, i32* %305, i32 %306)
  %308 = load i32, i32* %12, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %12, align 4
  %310 = load %struct.ix2505v_state*, %struct.ix2505v_state** %5, align 8
  %311 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %310, i32 0, i32 1
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %303
  %317 = load %struct.ix2505v_state*, %struct.ix2505v_state** %5, align 8
  %318 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %317, i32 0, i32 1
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @msleep(i32 %321)
  br label %323

323:                                              ; preds = %316, %303
  %324 = load i32, i32* %6, align 4
  %325 = load %struct.ix2505v_state*, %struct.ix2505v_state** %5, align 8
  %326 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 8
  %327 = load i32, i32* %12, align 4
  store i32 %327, i32* %2, align 4
  br label %328

328:                                              ; preds = %323, %54
  %329 = load i32, i32* %2, align 4
  ret i32 %329
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @deb_info(i8*, ...) #2

declare dso_local i32 @ix2505v_write(%struct.ix2505v_state*, i32*, i32) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
