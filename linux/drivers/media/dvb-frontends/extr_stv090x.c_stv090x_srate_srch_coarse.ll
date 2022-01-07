; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_srate_srch_coarse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_srate_srch_coarse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32, %struct.dvb_frontend }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32*)* }
%struct.dvb_frontend = type { i32 }

@DMDISTATE = common dso_local global i32 0, align 4
@I2C_DEMOD_MODE_FIELD = common dso_local global i32 0, align 4
@TMGCFG = common dso_local global i32 0, align 4
@TMGCFG2 = common dso_local global i32 0, align 4
@TMGTHRISE = common dso_local global i32 0, align 4
@TMGTHFALL = common dso_local global i32 0, align 4
@DMDCFGMD = common dso_local global i32 0, align 4
@SCAN_ENABLE_FIELD = common dso_local global i32 0, align 4
@CFR_AUTOSCAN_FIELD = common dso_local global i32 0, align 4
@SFRUP1 = common dso_local global i32 0, align 4
@SFRUP0 = common dso_local global i32 0, align 4
@SFRLOW1 = common dso_local global i32 0, align 4
@SFRLOW0 = common dso_local global i32 0, align 4
@DMDTOM = common dso_local global i32 0, align 4
@AGC2REF = common dso_local global i32 0, align 4
@CARFREQ = common dso_local global i32 0, align 4
@SFRSTEP = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@SFRINIT1 = common dso_local global i32 0, align 4
@SFRINIT0 = common dso_local global i32 0, align 4
@DSTATUS = common dso_local global i32 0, align 4
@TMGLOCK_QUALITY_FIELD = common dso_local global i32 0, align 4
@AGC2I1 = common dso_local global i32 0, align 4
@AGC2I0 = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Tuner phase locked\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Tuner unlocked\00", align 1
@FE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_srate_srch_coarse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_srate_srch_coarse(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
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
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %18 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %17, i32 0, i32 6
  store %struct.dvb_frontend* %18, %struct.dvb_frontend** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1200, i32* %14, align 4
  %19 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %20 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 48
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 11776, i32* %16, align 4
  br label %27

26:                                               ; preds = %1
  store i32 7936, i32* %16, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %29 = load i32, i32* @DMDISTATE, align 4
  %30 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @I2C_DEMOD_MODE_FIELD, align 4
  %33 = call i32 @STV090x_SETFIELD_Px(i32 %31, i32 %32, i32 31)
  %34 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %35 = load i32, i32* @DMDISTATE, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %34, i32 %35, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %437

40:                                               ; preds = %27
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %42 = load i32, i32* @TMGCFG, align 4
  %43 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %41, i32 %42, i32 18)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %437

46:                                               ; preds = %40
  %47 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %48 = load i32, i32* @TMGCFG2, align 4
  %49 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %47, i32 %48, i32 192)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %437

52:                                               ; preds = %46
  %53 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %54 = load i32, i32* @TMGTHRISE, align 4
  %55 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %53, i32 %54, i32 240)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %437

58:                                               ; preds = %52
  %59 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %60 = load i32, i32* @TMGTHFALL, align 4
  %61 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %59, i32 %60, i32 224)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %437

64:                                               ; preds = %58
  %65 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %66 = load i32, i32* @DMDCFGMD, align 4
  %67 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %65, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @SCAN_ENABLE_FIELD, align 4
  %70 = call i32 @STV090x_SETFIELD_Px(i32 %68, i32 %69, i32 1)
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @CFR_AUTOSCAN_FIELD, align 4
  %73 = call i32 @STV090x_SETFIELD_Px(i32 %71, i32 %72, i32 0)
  %74 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %75 = load i32, i32* @DMDCFGMD, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %74, i32 %75, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %437

80:                                               ; preds = %64
  %81 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %82 = load i32, i32* @SFRUP1, align 4
  %83 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %81, i32 %82, i32 131)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %437

86:                                               ; preds = %80
  %87 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %88 = load i32, i32* @SFRUP0, align 4
  %89 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %87, i32 %88, i32 192)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %437

92:                                               ; preds = %86
  %93 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %94 = load i32, i32* @SFRLOW1, align 4
  %95 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %93, i32 %94, i32 130)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %437

98:                                               ; preds = %92
  %99 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %100 = load i32, i32* @SFRLOW0, align 4
  %101 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %99, i32 %100, i32 160)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %437

104:                                              ; preds = %98
  %105 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %106 = load i32, i32* @DMDTOM, align 4
  %107 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %105, i32 %106, i32 0)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %437

110:                                              ; preds = %104
  %111 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %112 = load i32, i32* @AGC2REF, align 4
  %113 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %111, i32 %112, i32 80)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %437

116:                                              ; preds = %110
  %117 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %118 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %117, i32 0, i32 3
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %121, 48
  br i1 %122, label %123, label %136

123:                                              ; preds = %116
  %124 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %125 = load i32, i32* @CARFREQ, align 4
  %126 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %124, i32 %125, i32 153)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %437

129:                                              ; preds = %123
  %130 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %131 = load i32, i32* @SFRSTEP, align 4
  %132 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %130, i32 %131, i32 152)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %437

135:                                              ; preds = %129
  br label %157

136:                                              ; preds = %116
  %137 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %138 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %137, i32 0, i32 3
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp sge i32 %141, 32
  br i1 %142, label %143, label %156

143:                                              ; preds = %136
  %144 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %145 = load i32, i32* @CARFREQ, align 4
  %146 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %144, i32 %145, i32 106)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %437

149:                                              ; preds = %143
  %150 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %151 = load i32, i32* @SFRSTEP, align 4
  %152 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %150, i32 %151, i32 149)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %437

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %136
  br label %157

157:                                              ; preds = %156, %135
  %158 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %159 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp sle i32 %160, 2000000
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i32 1000, i32* %14, align 4
  br label %178

163:                                              ; preds = %157
  %164 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %165 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sle i32 %166, 5000000
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 2000, i32* %14, align 4
  br label %177

169:                                              ; preds = %163
  %170 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %171 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp sle i32 %172, 12000000
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store i32 3000, i32* %14, align 4
  br label %176

175:                                              ; preds = %169
  store i32 5000, i32* %14, align 4
  br label %176

176:                                              ; preds = %175, %174
  br label %177

177:                                              ; preds = %176, %168
  br label %178

178:                                              ; preds = %177, %162
  %179 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %180 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sdiv i32 %181, 1000
  %183 = load i32, i32* %14, align 4
  %184 = sdiv i32 %182, %183
  %185 = add nsw i32 -1, %184
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = sdiv i32 %186, 2
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = mul nsw i32 2, %188
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %178
  store i32 1, i32* %9, align 4
  br label %204

194:                                              ; preds = %178
  %195 = load i32, i32* %9, align 4
  %196 = icmp sgt i32 %195, 10
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  store i32 11, i32* %9, align 4
  %198 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %199 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = sdiv i32 %200, 1000
  %202 = sdiv i32 %201, 10
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %197, %194
  br label %204

204:                                              ; preds = %203, %193
  store i32 0, i32* %10, align 4
  store i32 1, i32* %8, align 4
  %205 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %206 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  store i32 %207, i32* %11, align 4
  br label %208

208:                                              ; preds = %419, %204
  %209 = load i32, i32* %5, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp slt i32 %212, %213
  br label %215

215:                                              ; preds = %211, %208
  %216 = phi i1 [ false, %208 ], [ %214, %211 ]
  br i1 %216, label %217, label %420

217:                                              ; preds = %215
  %218 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %219 = load i32, i32* @DMDISTATE, align 4
  %220 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %218, i32 %219, i32 95)
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %437

223:                                              ; preds = %217
  %224 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %225 = load i32, i32* @CFRINIT1, align 4
  %226 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %224, i32 %225, i32 0)
  %227 = icmp slt i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  br label %437

229:                                              ; preds = %223
  %230 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %231 = load i32, i32* @CFRINIT0, align 4
  %232 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %230, i32 %231, i32 0)
  %233 = icmp slt i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %437

235:                                              ; preds = %229
  %236 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %237 = load i32, i32* @SFRINIT1, align 4
  %238 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %236, i32 %237, i32 0)
  %239 = icmp slt i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %437

241:                                              ; preds = %235
  %242 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %243 = load i32, i32* @SFRINIT0, align 4
  %244 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %242, i32 %243, i32 0)
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %437

247:                                              ; preds = %241
  %248 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %249 = load i32, i32* @DMDISTATE, align 4
  %250 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %248, i32 %249, i32 64)
  %251 = icmp slt i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %247
  br label %437

253:                                              ; preds = %247
  %254 = call i32 @msleep(i32 50)
  store i32 0, i32* %6, align 4
  br label %255

255:                                              ; preds = %280, %253
  %256 = load i32, i32* %6, align 4
  %257 = icmp slt i32 %256, 10
  br i1 %257, label %258, label %283

258:                                              ; preds = %255
  %259 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %260 = load i32, i32* @DSTATUS, align 4
  %261 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %259, i32 %260)
  store i32 %261, i32* %15, align 4
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* @TMGLOCK_QUALITY_FIELD, align 4
  %264 = call i32 @STV090x_GETFIELD_Px(i32 %262, i32 %263)
  %265 = icmp sge i32 %264, 2
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %7, align 4
  br label %269

269:                                              ; preds = %266, %258
  %270 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %271 = load i32, i32* @AGC2I1, align 4
  %272 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %270, i32 %271)
  %273 = shl i32 %272, 8
  %274 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %275 = load i32, i32* @AGC2I0, align 4
  %276 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %274, i32 %275)
  %277 = or i32 %273, %276
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %13, align 4
  br label %280

280:                                              ; preds = %269
  %281 = load i32, i32* %6, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %6, align 4
  br label %255

283:                                              ; preds = %255
  %284 = load i32, i32* %13, align 4
  %285 = sdiv i32 %284, 10
  store i32 %285, i32* %13, align 4
  %286 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %287 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %288 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %287, i32 0, i32 3
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @stv090x_get_srate(%struct.stv090x_state* %286, i32 %291)
  store i32 %292, i32* %12, align 4
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %10, align 4
  %295 = load i32, i32* %8, align 4
  %296 = mul nsw i32 %295, -1
  store i32 %296, i32* %8, align 4
  %297 = load i32, i32* %7, align 4
  %298 = icmp sge i32 %297, 5
  br i1 %298, label %299, label %310

299:                                              ; preds = %283
  %300 = load i32, i32* %13, align 4
  %301 = load i32, i32* %16, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load i32, i32* %12, align 4
  %305 = icmp slt i32 %304, 50000000
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load i32, i32* %12, align 4
  %308 = icmp sgt i32 %307, 850000
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  store i32 1, i32* %5, align 4
  br label %419

310:                                              ; preds = %306, %303, %299, %283
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %9, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %418

314:                                              ; preds = %310
  %315 = load i32, i32* %8, align 4
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %314
  %318 = load i32, i32* %10, align 4
  %319 = load i32, i32* %14, align 4
  %320 = mul nsw i32 %318, %319
  %321 = load i32, i32* %11, align 4
  %322 = add nsw i32 %321, %320
  store i32 %322, i32* %11, align 4
  br label %329

323:                                              ; preds = %314
  %324 = load i32, i32* %10, align 4
  %325 = load i32, i32* %14, align 4
  %326 = mul nsw i32 %324, %325
  %327 = load i32, i32* %11, align 4
  %328 = sub nsw i32 %327, %326
  store i32 %328, i32* %11, align 4
  br label %329

329:                                              ; preds = %323, %317
  %330 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %331 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %330, i32 1)
  %332 = icmp slt i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  br label %437

334:                                              ; preds = %329
  %335 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %336 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %335, i32 0, i32 4
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 0
  %339 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %338, align 8
  %340 = icmp ne i64 (%struct.dvb_frontend*, i32)* %339, null
  br i1 %340, label %341, label %353

341:                                              ; preds = %334
  %342 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %343 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %342, i32 0, i32 4
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %345, align 8
  %347 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %348 = load i32, i32* %11, align 4
  %349 = call i64 %346(%struct.dvb_frontend* %347, i32 %348)
  %350 = icmp slt i64 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %341
  br label %434

352:                                              ; preds = %341
  br label %353

353:                                              ; preds = %352, %334
  %354 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %355 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %354, i32 0, i32 4
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 1
  %358 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %357, align 8
  %359 = icmp ne i64 (%struct.dvb_frontend*, i32)* %358, null
  br i1 %359, label %360, label %374

360:                                              ; preds = %353
  %361 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %362 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %361, i32 0, i32 4
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 1
  %365 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %364, align 8
  %366 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %367 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %368 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %367, i32 0, i32 5
  %369 = load i32, i32* %368, align 8
  %370 = call i64 %365(%struct.dvb_frontend* %366, i32 %369)
  %371 = icmp slt i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %360
  br label %434

373:                                              ; preds = %360
  br label %374

374:                                              ; preds = %373, %353
  %375 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %376 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %375, i32 0)
  %377 = icmp slt i64 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %374
  br label %437

379:                                              ; preds = %374
  %380 = call i32 @msleep(i32 50)
  %381 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %382 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %381, i32 1)
  %383 = icmp slt i64 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %379
  br label %437

385:                                              ; preds = %379
  %386 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %387 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %386, i32 0, i32 4
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 2
  %390 = load i64 (%struct.dvb_frontend*, i32*)*, i64 (%struct.dvb_frontend*, i32*)** %389, align 8
  %391 = icmp ne i64 (%struct.dvb_frontend*, i32*)* %390, null
  br i1 %391, label %392, label %403

392:                                              ; preds = %385
  %393 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %394 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %393, i32 0, i32 4
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 2
  %397 = load i64 (%struct.dvb_frontend*, i32*)*, i64 (%struct.dvb_frontend*, i32*)** %396, align 8
  %398 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %399 = call i64 %397(%struct.dvb_frontend* %398, i32* %15)
  %400 = icmp slt i64 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %392
  br label %434

402:                                              ; preds = %392
  br label %403

403:                                              ; preds = %402, %385
  %404 = load i32, i32* %15, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %403
  %407 = load i32, i32* @FE_DEBUG, align 4
  %408 = call i32 @dprintk(i32 %407, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %412

409:                                              ; preds = %403
  %410 = load i32, i32* @FE_DEBUG, align 4
  %411 = call i32 @dprintk(i32 %410, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %412

412:                                              ; preds = %409, %406
  %413 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %414 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %413, i32 0)
  %415 = icmp slt i64 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %412
  br label %437

417:                                              ; preds = %412
  br label %418

418:                                              ; preds = %417, %310
  br label %419

419:                                              ; preds = %418, %309
  br label %208

420:                                              ; preds = %215
  %421 = load i32, i32* %5, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %424, label %423

423:                                              ; preds = %420
  store i32 0, i32* %12, align 4
  br label %432

424:                                              ; preds = %420
  %425 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %426 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %427 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %426, i32 0, i32 3
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @stv090x_get_srate(%struct.stv090x_state* %425, i32 %430)
  store i32 %431, i32* %12, align 4
  br label %432

432:                                              ; preds = %424, %423
  %433 = load i32, i32* %12, align 4
  store i32 %433, i32* %2, align 4
  br label %440

434:                                              ; preds = %401, %372, %351
  %435 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %436 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %435, i32 0)
  br label %437

437:                                              ; preds = %434, %416, %384, %378, %333, %252, %246, %240, %234, %228, %222, %154, %148, %134, %128, %115, %109, %103, %97, %91, %85, %79, %63, %57, %51, %45, %39
  %438 = load i32, i32* @FE_ERROR, align 4
  %439 = call i32 @dprintk(i32 %438, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %440

440:                                              ; preds = %437, %432
  %441 = load i32, i32* %2, align 4
  ret i32 %441
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @stv090x_get_srate(%struct.stv090x_state*, i32) #1

declare dso_local i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
