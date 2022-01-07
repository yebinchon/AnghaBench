; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SetCfgRfAgc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SetCfgRfAgc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i64 }
%struct.SCfgAgc = type { i64, i64, i32 }

@DRXD_FE_CTRL_MAX = common dso_local global i64 0, align 8
@AGC_CTRL_USER = common dso_local global i64 0, align 8
@FE_AG_REG_PM2_AGC_WRI__A = common dso_local global i32 0, align 4
@FE_AG_REG_AG_PWD_PWD_PD2__M = common dso_local global i64 0, align 8
@FE_AG_REG_AG_PWD_PWD_PD2_DISABLE = common dso_local global i64 0, align 8
@FE_AG_REG_AG_PWD__A = common dso_local global i32 0, align 4
@FE_AG_REG_AG_MODE_LOP__A = common dso_local global i32 0, align 4
@FE_AG_REG_AG_MODE_LOP_MODE_5__M = common dso_local global i64 0, align 8
@FE_AG_REG_AG_MODE_LOP_MODE_E__M = common dso_local global i64 0, align 8
@FE_AG_REG_AG_MODE_LOP_MODE_5_STATIC = common dso_local global i64 0, align 8
@FE_AG_REG_AG_MODE_LOP_MODE_E_STATIC = common dso_local global i64 0, align 8
@FE_AG_REG_AG_AGC_SIO__A = common dso_local global i32 0, align 4
@FE_AG_REG_AG_AGC_SIO_AGC_SIO_2__M = common dso_local global i64 0, align 8
@FE_AG_REG_AG_AGC_SIO_AGC_SIO_2_OUTPUT = common dso_local global i64 0, align 8
@AGC_CTRL_AUTO = common dso_local global i64 0, align 8
@FE_AG_REG_AG_MODE_LOP_MODE_E_DYNAMIC = common dso_local global i64 0, align 8
@FE_AG_REG_TGC_SET_LVL__M = common dso_local global i32 0, align 4
@FE_AG_REG_TGC_SET_LVL__A = common dso_local global i32 0, align 4
@FE_AG_REG_AG_PWD_PWD_PD2_ENABLE = common dso_local global i64 0, align 8
@FE_AG_REG_AG_AGC_SIO_AGC_SIO_2_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, %struct.SCfgAgc*)* @SetCfgRfAgc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetCfgRfAgc(%struct.drxd_state* %0, %struct.SCfgAgc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drxd_state*, align 8
  %5 = alloca %struct.SCfgAgc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.drxd_state* %0, %struct.drxd_state** %4, align 8
  store %struct.SCfgAgc* %1, %struct.SCfgAgc** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %16 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DRXD_FE_CTRL_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %285

21:                                               ; preds = %2
  %22 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %23 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AGC_CTRL_USER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %117

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  store i64 0, i64* %7, align 8
  %29 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %30 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @DRXD_FE_CTRL_MAX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %40 = load i32, i32* @FE_AG_REG_PM2_AGC_WRI__A, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @Write16(%struct.drxd_state* %39, i32 %40, i64 %41, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %116

46:                                               ; preds = %38
  %47 = load i64, i64* @FE_AG_REG_AG_PWD_PWD_PD2__M, align 8
  %48 = xor i64 %47, -1
  %49 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %50 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = and i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* @FE_AG_REG_AG_PWD_PWD_PD2_DISABLE, align 8
  %54 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %55 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = or i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %59 = load i32, i32* @FE_AG_REG_AG_PWD__A, align 4
  %60 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %61 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @Write16(%struct.drxd_state* %58, i32 %59, i64 %62, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %46
  br label %116

67:                                               ; preds = %46
  %68 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %69 = load i32, i32* @FE_AG_REG_AG_MODE_LOP__A, align 4
  %70 = call i32 @Read16(%struct.drxd_state* %68, i32 %69, i64* %7, i32 0)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %116

74:                                               ; preds = %67
  %75 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_5__M, align 8
  %76 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_E__M, align 8
  %77 = or i64 %75, %76
  %78 = xor i64 %77, -1
  %79 = load i64, i64* %7, align 8
  %80 = and i64 %79, %78
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_5_STATIC, align 8
  %82 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_E_STATIC, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* %7, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %7, align 8
  %86 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %87 = load i32, i32* @FE_AG_REG_AG_MODE_LOP__A, align 4
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @Write16(%struct.drxd_state* %86, i32 %87, i64 %88, i32 0)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %74
  br label %116

93:                                               ; preds = %74
  store i64 0, i64* %9, align 8
  %94 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %95 = load i32, i32* @FE_AG_REG_AG_AGC_SIO__A, align 4
  %96 = call i32 @Read16(%struct.drxd_state* %94, i32 %95, i64* %9, i32 0)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %116

100:                                              ; preds = %93
  %101 = load i64, i64* @FE_AG_REG_AG_AGC_SIO_AGC_SIO_2__M, align 8
  %102 = xor i64 %101, -1
  %103 = load i64, i64* %9, align 8
  %104 = and i64 %103, %102
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* @FE_AG_REG_AG_AGC_SIO_AGC_SIO_2_OUTPUT, align 8
  %106 = load i64, i64* %9, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %9, align 8
  %108 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %109 = load i32, i32* @FE_AG_REG_AG_AGC_SIO__A, align 4
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @Write16(%struct.drxd_state* %108, i32 %109, i64 %110, i32 0)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %116

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %114, %99, %92, %73, %66, %45
  br label %283

117:                                              ; preds = %21
  %118 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %119 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @AGC_CTRL_AUTO, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %210

123:                                              ; preds = %117
  store i64 0, i64* %10, align 8
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* @FE_AG_REG_AG_PWD_PWD_PD2__M, align 8
  %126 = xor i64 %125, -1
  %127 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %128 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = and i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load i64, i64* @FE_AG_REG_AG_PWD_PWD_PD2_DISABLE, align 8
  %132 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %133 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = or i64 %134, %131
  store i64 %135, i64* %133, align 8
  %136 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %137 = load i32, i32* @FE_AG_REG_AG_PWD__A, align 4
  %138 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %139 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @Write16(%struct.drxd_state* %136, i32 %137, i64 %140, i32 0)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %124
  br label %209

145:                                              ; preds = %124
  %146 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %147 = load i32, i32* @FE_AG_REG_AG_MODE_LOP__A, align 4
  %148 = call i32 @Read16(%struct.drxd_state* %146, i32 %147, i64* %10, i32 0)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %209

152:                                              ; preds = %145
  %153 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_5__M, align 8
  %154 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_E__M, align 8
  %155 = or i64 %153, %154
  %156 = xor i64 %155, -1
  %157 = load i64, i64* %10, align 8
  %158 = and i64 %157, %156
  store i64 %158, i64* %10, align 8
  %159 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_5_STATIC, align 8
  %160 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_E_DYNAMIC, align 8
  %161 = or i64 %159, %160
  %162 = load i64, i64* %10, align 8
  %163 = or i64 %162, %161
  store i64 %163, i64* %10, align 8
  %164 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %165 = load i32, i32* @FE_AG_REG_AG_MODE_LOP__A, align 4
  %166 = load i64, i64* %10, align 8
  %167 = call i32 @Write16(%struct.drxd_state* %164, i32 %165, i64 %166, i32 0)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %152
  br label %209

171:                                              ; preds = %152
  %172 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %173 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = ashr i32 %174, 4
  %176 = load i32, i32* @FE_AG_REG_TGC_SET_LVL__M, align 4
  %177 = and i32 %175, %176
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %11, align 8
  %179 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %180 = load i32, i32* @FE_AG_REG_TGC_SET_LVL__A, align 4
  %181 = load i64, i64* %11, align 8
  %182 = call i32 @Write16(%struct.drxd_state* %179, i32 %180, i64 %181, i32 0)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %171
  br label %209

186:                                              ; preds = %171
  store i64 0, i64* %12, align 8
  %187 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %188 = load i32, i32* @FE_AG_REG_AG_AGC_SIO__A, align 4
  %189 = call i32 @Read16(%struct.drxd_state* %187, i32 %188, i64* %12, i32 0)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %209

193:                                              ; preds = %186
  %194 = load i64, i64* @FE_AG_REG_AG_AGC_SIO_AGC_SIO_2__M, align 8
  %195 = xor i64 %194, -1
  %196 = load i64, i64* %12, align 8
  %197 = and i64 %196, %195
  store i64 %197, i64* %12, align 8
  %198 = load i64, i64* @FE_AG_REG_AG_AGC_SIO_AGC_SIO_2_OUTPUT, align 8
  %199 = load i64, i64* %12, align 8
  %200 = or i64 %199, %198
  store i64 %200, i64* %12, align 8
  %201 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %202 = load i32, i32* @FE_AG_REG_AG_AGC_SIO__A, align 4
  %203 = load i64, i64* %12, align 8
  %204 = call i32 @Write16(%struct.drxd_state* %201, i32 %202, i64 %203, i32 0)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %193
  br label %209

208:                                              ; preds = %193
  br label %209

209:                                              ; preds = %208, %207, %192, %185, %170, %151, %144
  br label %282

210:                                              ; preds = %117
  store i64 0, i64* %13, align 8
  br label %211

211:                                              ; preds = %210
  %212 = load i64, i64* @FE_AG_REG_AG_PWD_PWD_PD2__M, align 8
  %213 = xor i64 %212, -1
  %214 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %215 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = and i64 %216, %213
  store i64 %217, i64* %215, align 8
  %218 = load i64, i64* @FE_AG_REG_AG_PWD_PWD_PD2_ENABLE, align 8
  %219 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %220 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = or i64 %221, %218
  store i64 %222, i64* %220, align 8
  %223 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %224 = load i32, i32* @FE_AG_REG_AG_PWD__A, align 4
  %225 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %226 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @Write16(%struct.drxd_state* %223, i32 %224, i64 %227, i32 0)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %211
  br label %281

232:                                              ; preds = %211
  %233 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %234 = load i32, i32* @FE_AG_REG_AG_MODE_LOP__A, align 4
  %235 = call i32 @Read16(%struct.drxd_state* %233, i32 %234, i64* %13, i32 0)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  br label %281

239:                                              ; preds = %232
  %240 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_5__M, align 8
  %241 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_E__M, align 8
  %242 = or i64 %240, %241
  %243 = xor i64 %242, -1
  %244 = load i64, i64* %13, align 8
  %245 = and i64 %244, %243
  store i64 %245, i64* %13, align 8
  %246 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_5_STATIC, align 8
  %247 = load i64, i64* @FE_AG_REG_AG_MODE_LOP_MODE_E_STATIC, align 8
  %248 = or i64 %246, %247
  %249 = load i64, i64* %13, align 8
  %250 = or i64 %249, %248
  store i64 %250, i64* %13, align 8
  %251 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %252 = load i32, i32* @FE_AG_REG_AG_MODE_LOP__A, align 4
  %253 = load i64, i64* %13, align 8
  %254 = call i32 @Write16(%struct.drxd_state* %251, i32 %252, i64 %253, i32 0)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* %6, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %239
  br label %281

258:                                              ; preds = %239
  store i64 0, i64* %14, align 8
  %259 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %260 = load i32, i32* @FE_AG_REG_AG_AGC_SIO__A, align 4
  %261 = call i32 @Read16(%struct.drxd_state* %259, i32 %260, i64* %14, i32 0)
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* %6, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %281

265:                                              ; preds = %258
  %266 = load i64, i64* @FE_AG_REG_AG_AGC_SIO_AGC_SIO_2__M, align 8
  %267 = xor i64 %266, -1
  %268 = load i64, i64* %14, align 8
  %269 = and i64 %268, %267
  store i64 %269, i64* %14, align 8
  %270 = load i64, i64* @FE_AG_REG_AG_AGC_SIO_AGC_SIO_2_INPUT, align 8
  %271 = load i64, i64* %14, align 8
  %272 = or i64 %271, %270
  store i64 %272, i64* %14, align 8
  %273 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %274 = load i32, i32* @FE_AG_REG_AG_AGC_SIO__A, align 4
  %275 = load i64, i64* %14, align 8
  %276 = call i32 @Write16(%struct.drxd_state* %273, i32 %274, i64 %275, i32 0)
  store i32 %276, i32* %6, align 4
  %277 = load i32, i32* %6, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %265
  br label %281

280:                                              ; preds = %265
  br label %281

281:                                              ; preds = %280, %279, %264, %257, %238, %231
  br label %282

282:                                              ; preds = %281, %209
  br label %283

283:                                              ; preds = %282, %116
  %284 = load i32, i32* %6, align 4
  store i32 %284, i32* %3, align 4
  br label %285

285:                                              ; preds = %283, %20
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i64, i32) #1

declare dso_local i32 @Read16(%struct.drxd_state*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
