; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SetCfgIfAgc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SetCfgIfAgc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32 }
%struct.SCfgAgc = type { i32, i64, i64, i64, i32, i32 }

@DRXD_FE_CTRL_MAX = common dso_local global i32 0, align 4
@AGC_CTRL_USER = common dso_local global i64 0, align 8
@FE_AG_REG_AG_MODE_LOP__A = common dso_local global i32 0, align 4
@FE_AG_REG_AG_MODE_LOP_MODE_4__M = common dso_local global i32 0, align 4
@FE_AG_REG_AG_MODE_LOP_MODE_4_STATIC = common dso_local global i32 0, align 4
@FE_AG_REG_PM1_AGC_WRI__M = common dso_local global i32 0, align 4
@FE_AG_REG_PM1_AGC_WRI__A = common dso_local global i32 0, align 4
@AGC_CTRL_AUTO = common dso_local global i64 0, align 8
@FE_AG_REG_AG_MODE_LOP_MODE_4_DYNAMIC = common dso_local global i32 0, align 4
@FE_AG_REG_EGC_SET_LVL__M = common dso_local global i32 0, align 4
@FE_AG_REG_EGC_SET_LVL__A = common dso_local global i32 0, align 4
@FE_AG_REG_GC1_AGC_RIC__A = common dso_local global i32 0, align 4
@FE_AG_REG_GC1_AGC_OFF__A = common dso_local global i32 0, align 4
@SetCfgIfAgc.slowIncrDecLUT = internal constant [5 x i32] [i32 3, i32 4, i32 4, i32 5, i32 6], align 16
@SetCfgIfAgc.fastIncrDecLUT = internal constant [18 x i32] [i32 14, i32 15, i32 15, i32 16, i32 17, i32 18, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 26, i32 27, i32 28, i32 29, i32 31], align 16
@FE_AG_REG_EGC_RUR_CNT__A = common dso_local global i32 0, align 4
@FE_AG_REG_EGC_FAS_INC__A = common dso_local global i32 0, align 4
@FE_AG_REG_EGC_FAS_DEC__A = common dso_local global i32 0, align 4
@FE_AG_REG_EGC_SLO_INC__A = common dso_local global i32 0, align 4
@FE_AG_REG_EGC_SLO_DEC__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, %struct.SCfgAgc*)* @SetCfgIfAgc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetCfgIfAgc(%struct.drxd_state* %0, %struct.SCfgAgc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drxd_state*, align 8
  %5 = alloca %struct.SCfgAgc*, align 8
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
  store %struct.drxd_state* %0, %struct.drxd_state** %4, align 8
  store %struct.SCfgAgc* %1, %struct.SCfgAgc** %5, align 8
  %20 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %21 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %266

26:                                               ; preds = %2
  %27 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %28 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AGC_CTRL_USER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %35 = load i32, i32* @FE_AG_REG_AG_MODE_LOP__A, align 4
  %36 = call i32 @Read16(%struct.drxd_state* %34, i32 %35, i32* %8, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %69

40:                                               ; preds = %33
  %41 = load i32, i32* @FE_AG_REG_AG_MODE_LOP_MODE_4__M, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @FE_AG_REG_AG_MODE_LOP_MODE_4_STATIC, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %49 = load i32, i32* @FE_AG_REG_AG_MODE_LOP__A, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @Write16(%struct.drxd_state* %48, i32 %49, i32 %50, i32 0)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %69

55:                                               ; preds = %40
  %56 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %57 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FE_AG_REG_PM1_AGC_WRI__M, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %62 = load i32, i32* @FE_AG_REG_PM1_AGC_WRI__A, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @Write16(%struct.drxd_state* %61, i32 %62, i32 %63, i32 0)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %69

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %67, %54, %39
  br label %264

70:                                               ; preds = %26
  %71 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %72 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AGC_CTRL_AUTO, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %262

76:                                               ; preds = %70
  %77 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %78 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %81 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %103, label %84

84:                                               ; preds = %76
  %85 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %86 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp sgt i64 %87, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %84
  %92 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %93 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %99 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97, %91, %84, %76
  store i32 -1, i32* %3, align 4
  br label %266

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %107 = load i32, i32* @FE_AG_REG_AG_MODE_LOP__A, align 4
  %108 = call i32 @Read16(%struct.drxd_state* %106, i32 %107, i32* %9, i32 0)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %261

112:                                              ; preds = %105
  %113 = load i32, i32* @FE_AG_REG_AG_MODE_LOP_MODE_4__M, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %9, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* @FE_AG_REG_AG_MODE_LOP_MODE_4_DYNAMIC, align 4
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %121 = load i32, i32* @FE_AG_REG_AG_MODE_LOP__A, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @Write16(%struct.drxd_state* %120, i32 %121, i32 %122, i32 0)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %261

127:                                              ; preds = %112
  %128 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %129 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 1
  %132 = load i32, i32* @FE_AG_REG_EGC_SET_LVL__M, align 4
  %133 = and i32 %131, %132
  store i32 %133, i32* %10, align 4
  %134 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %135 = load i32, i32* @FE_AG_REG_EGC_SET_LVL__A, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @Write16(%struct.drxd_state* %134, i32 %135, i32 %136, i32 0)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  br label %261

141:                                              ; preds = %127
  %142 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %143 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %146 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = sdiv i64 %148, 2
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %11, align 4
  %151 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %152 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %155 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = sdiv i64 %157, 2
  %159 = sub nsw i64 %158, 511
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %12, align 4
  %161 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %162 = load i32, i32* @FE_AG_REG_GC1_AGC_RIC__A, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @Write16(%struct.drxd_state* %161, i32 %162, i32 %163, i32 0)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %141
  br label %261

168:                                              ; preds = %141
  %169 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %170 = load i32, i32* @FE_AG_REG_GC1_AGC_OFF__A, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @Write16(%struct.drxd_state* %169, i32 %170, i32 %171, i32 0)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %261

176:                                              ; preds = %168
  store i32 8, i32* %13, align 4
  %177 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %178 = add nsw i32 %177, 1
  %179 = sdiv i32 %178, 9
  store i32 %179, i32* %14, align 4
  %180 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %181 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %184 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sdiv i32 %185, %186
  %188 = load i32, i32* %14, align 4
  %189 = mul nsw i32 %187, %188
  %190 = sub nsw i32 %182, %189
  store i32 %190, i32* %15, align 4
  %191 = load %struct.SCfgAgc*, %struct.SCfgAgc** %5, align 8
  %192 = getelementptr inbounds %struct.SCfgAgc, %struct.SCfgAgc* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sdiv i32 %193, %194
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = icmp sgt i32 %196, 8
  br i1 %197, label %198, label %202

198:                                              ; preds = %176
  store i32 0, i32* %17, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %15, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %15, align 4
  br label %205

202:                                              ; preds = %176
  %203 = load i32, i32* %16, align 4
  %204 = sub nsw i32 8, %203
  store i32 %204, i32* %17, align 4
  br label %205

205:                                              ; preds = %202, %198
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* %14, align 4
  %208 = sdiv i32 %207, 15
  %209 = add nsw i32 %208, 1
  %210 = sdiv i32 %206, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [18 x i32], [18 x i32]* @SetCfgIfAgc.fastIncrDecLUT, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %18, align 4
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* %14, align 4
  %216 = sdiv i32 %215, 4
  %217 = sdiv i32 %214, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [5 x i32], [5 x i32]* @SetCfgIfAgc.slowIncrDecLUT, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %19, align 4
  %221 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %222 = load i32, i32* @FE_AG_REG_EGC_RUR_CNT__A, align 4
  %223 = load i32, i32* %17, align 4
  %224 = call i32 @Write16(%struct.drxd_state* %221, i32 %222, i32 %223, i32 0)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %205
  br label %261

228:                                              ; preds = %205
  %229 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %230 = load i32, i32* @FE_AG_REG_EGC_FAS_INC__A, align 4
  %231 = load i32, i32* %18, align 4
  %232 = call i32 @Write16(%struct.drxd_state* %229, i32 %230, i32 %231, i32 0)
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* %6, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  br label %261

236:                                              ; preds = %228
  %237 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %238 = load i32, i32* @FE_AG_REG_EGC_FAS_DEC__A, align 4
  %239 = load i32, i32* %18, align 4
  %240 = call i32 @Write16(%struct.drxd_state* %237, i32 %238, i32 %239, i32 0)
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* %6, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %261

244:                                              ; preds = %236
  %245 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %246 = load i32, i32* @FE_AG_REG_EGC_SLO_INC__A, align 4
  %247 = load i32, i32* %19, align 4
  %248 = call i32 @Write16(%struct.drxd_state* %245, i32 %246, i32 %247, i32 0)
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  br label %261

252:                                              ; preds = %244
  %253 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %254 = load i32, i32* @FE_AG_REG_EGC_SLO_DEC__A, align 4
  %255 = load i32, i32* %19, align 4
  %256 = call i32 @Write16(%struct.drxd_state* %253, i32 %254, i32 %255, i32 0)
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* %6, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %252
  br label %261

260:                                              ; preds = %252
  br label %261

261:                                              ; preds = %260, %259, %251, %243, %235, %227, %175, %167, %140, %126, %111
  br label %263

262:                                              ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %266

263:                                              ; preds = %261
  br label %264

264:                                              ; preds = %263, %69
  %265 = load i32, i32* %6, align 4
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %264, %262, %103, %25
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i32 @Read16(%struct.drxd_state*, i32, i32*, i32) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
