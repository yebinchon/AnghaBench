; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_register_patching_mc_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_register_patching_mc_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ci_mc_reg_table = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }

@MC_SEQ_MISC0 = common dso_local global i32 0, align 4
@SMU7_DISCRETE_MC_REGISTER_ARRAY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_INDEX = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.ci_mc_reg_table*)* @ci_register_patching_mc_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_register_patching_mc_seq(%struct.radeon_device* %0, %struct.ci_mc_reg_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.ci_mc_reg_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.ci_mc_reg_table* %1, %struct.ci_mc_reg_table** %5, align 8
  %10 = load i32, i32* @MC_SEQ_MISC0, align 4
  %11 = call i32 @RREG32(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, 3840
  %14 = icmp eq i32 %13, 768
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %422

19:                                               ; preds = %2
  %20 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 26544
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 26545
  br i1 %32, label %33, label %422

33:                                               ; preds = %26, %19
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %406, %33
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %37 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %409

40:                                               ; preds = %34
  %41 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %42 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SMU7_DISCRETE_MC_REGISTER_ARRAY_SIZE, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %423

49:                                               ; preds = %40
  %50 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %51 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 2
  switch i32 %57, label %404 [
    i32 132, label %58
    i32 129, label %110
    i32 128, label %162
    i32 130, label %214
    i32 133, label %254
    i32 131, label %329
  ]

58:                                               ; preds = %49
  store i64 0, i64* %7, align 8
  br label %59

59:                                               ; preds = %106, %58
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %62 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %109

65:                                               ; preds = %59
  %66 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %67 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 125000
  br i1 %73, label %83, label %74

74:                                               ; preds = %65
  %75 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %76 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 137500
  br i1 %82, label %83, label %105

83:                                               ; preds = %74, %65
  %84 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %85 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -8
  %95 = or i32 %94, 7
  %96 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %97 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %95, i32* %104, align 4
  br label %105

105:                                              ; preds = %83, %74
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %59

109:                                              ; preds = %59
  br label %405

110:                                              ; preds = %49
  store i64 0, i64* %7, align 8
  br label %111

111:                                              ; preds = %158, %110
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %114 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ult i64 %112, %115
  br i1 %116, label %117, label %161

117:                                              ; preds = %111
  %118 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %119 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 125000
  br i1 %125, label %135, label %126

126:                                              ; preds = %117
  %127 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %128 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %127, i32 0, i32 2
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 137500
  br i1 %134, label %135, label %157

135:                                              ; preds = %126, %117
  %136 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %137 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i64, i64* %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, -61696
  %147 = or i32 %146, 53469
  %148 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %149 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %148, i32 0, i32 2
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %6, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32 %147, i32* %156, align 4
  br label %157

157:                                              ; preds = %135, %126
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %7, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %7, align 8
  br label %111

161:                                              ; preds = %111
  br label %405

162:                                              ; preds = %49
  store i64 0, i64* %7, align 8
  br label %163

163:                                              ; preds = %210, %162
  %164 = load i64, i64* %7, align 8
  %165 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %166 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ult i64 %164, %167
  br i1 %168, label %169, label %213

169:                                              ; preds = %163
  %170 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %171 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %170, i32 0, i32 2
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i64, i64* %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 125000
  br i1 %177, label %187, label %178

178:                                              ; preds = %169
  %179 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %180 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %179, i32 0, i32 2
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i64, i64* %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 137500
  br i1 %186, label %187, label %209

187:                                              ; preds = %178, %169
  %188 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %189 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %188, i32 0, i32 2
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = load i64, i64* %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* %6, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, -61696
  %199 = or i32 %198, 53469
  %200 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %201 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %200, i32 0, i32 2
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = load i64, i64* %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* %6, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32 %199, i32* %208, align 4
  br label %209

209:                                              ; preds = %187, %178
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %7, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %7, align 8
  br label %163

213:                                              ; preds = %163
  br label %405

214:                                              ; preds = %49
  store i64 0, i64* %7, align 8
  br label %215

215:                                              ; preds = %250, %214
  %216 = load i64, i64* %7, align 8
  %217 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %218 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ult i64 %216, %219
  br i1 %220, label %221, label %253

221:                                              ; preds = %215
  %222 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %223 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %222, i32 0, i32 2
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i64, i64* %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 125000
  br i1 %229, label %239, label %230

230:                                              ; preds = %221
  %231 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %232 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %231, i32 0, i32 2
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = load i64, i64* %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %237, 137500
  br i1 %238, label %239, label %249

239:                                              ; preds = %230, %221
  %240 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %241 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %240, i32 0, i32 2
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = load i64, i64* %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i64, i64* %6, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  store i32 0, i32* %248, align 4
  br label %249

249:                                              ; preds = %239, %230
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %7, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %7, align 8
  br label %215

253:                                              ; preds = %215
  br label %405

254:                                              ; preds = %49
  store i64 0, i64* %7, align 8
  br label %255

255:                                              ; preds = %325, %254
  %256 = load i64, i64* %7, align 8
  %257 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %258 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ult i64 %256, %259
  br i1 %260, label %261, label %328

261:                                              ; preds = %255
  %262 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %263 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %262, i32 0, i32 2
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = load i64, i64* %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp eq i32 %268, 125000
  br i1 %269, label %270, label %292

270:                                              ; preds = %261
  %271 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %272 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %271, i32 0, i32 2
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = load i64, i64* %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = load i64, i64* %6, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, -2032113
  %282 = or i32 %281, 786752
  %283 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %284 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %283, i32 0, i32 2
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = load i64, i64* %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* %6, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  store i32 %282, i32* %291, align 4
  br label %324

292:                                              ; preds = %261
  %293 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %294 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %293, i32 0, i32 2
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %294, align 8
  %296 = load i64, i64* %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp eq i32 %299, 137500
  br i1 %300, label %301, label %323

301:                                              ; preds = %292
  %302 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %303 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %302, i32 0, i32 2
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %303, align 8
  %305 = load i64, i64* %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = load i64, i64* %6, align 8
  %310 = getelementptr inbounds i32, i32* %308, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, -2032113
  %313 = or i32 %312, 786768
  %314 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %315 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %314, i32 0, i32 2
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %315, align 8
  %317 = load i64, i64* %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = load i64, i64* %6, align 8
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  store i32 %313, i32* %322, align 4
  br label %323

323:                                              ; preds = %301, %292
  br label %324

324:                                              ; preds = %323, %270
  br label %325

325:                                              ; preds = %324
  %326 = load i64, i64* %7, align 8
  %327 = add i64 %326, 1
  store i64 %327, i64* %7, align 8
  br label %255

328:                                              ; preds = %255
  br label %405

329:                                              ; preds = %49
  store i64 0, i64* %7, align 8
  br label %330

330:                                              ; preds = %400, %329
  %331 = load i64, i64* %7, align 8
  %332 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %333 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = icmp ult i64 %331, %334
  br i1 %335, label %336, label %403

336:                                              ; preds = %330
  %337 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %338 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %337, i32 0, i32 2
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %338, align 8
  %340 = load i64, i64* %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = icmp eq i32 %343, 125000
  br i1 %344, label %345, label %367

345:                                              ; preds = %336
  %346 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %347 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %346, i32 0, i32 2
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %347, align 8
  %349 = load i64, i64* %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = load i64, i64* %6, align 8
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = and i32 %355, -32
  %357 = or i32 %356, 48
  %358 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %359 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %358, i32 0, i32 2
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %359, align 8
  %361 = load i64, i64* %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = load i64, i64* %6, align 8
  %366 = getelementptr inbounds i32, i32* %364, i64 %365
  store i32 %357, i32* %366, align 4
  br label %399

367:                                              ; preds = %336
  %368 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %369 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %368, i32 0, i32 2
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %369, align 8
  %371 = load i64, i64* %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp eq i32 %374, 137500
  br i1 %375, label %376, label %398

376:                                              ; preds = %367
  %377 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %378 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %377, i32 0, i32 2
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %378, align 8
  %380 = load i64, i64* %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = load i64, i64* %6, align 8
  %385 = getelementptr inbounds i32, i32* %383, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = and i32 %386, -32
  %388 = or i32 %387, 53
  %389 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %5, align 8
  %390 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %389, i32 0, i32 2
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %390, align 8
  %392 = load i64, i64* %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 1
  %395 = load i32*, i32** %394, align 8
  %396 = load i64, i64* %6, align 8
  %397 = getelementptr inbounds i32, i32* %395, i64 %396
  store i32 %388, i32* %397, align 4
  br label %398

398:                                              ; preds = %376, %367
  br label %399

399:                                              ; preds = %398, %345
  br label %400

400:                                              ; preds = %399
  %401 = load i64, i64* %7, align 8
  %402 = add i64 %401, 1
  store i64 %402, i64* %7, align 8
  br label %330

403:                                              ; preds = %330
  br label %405

404:                                              ; preds = %49
  br label %405

405:                                              ; preds = %404, %403, %328, %253, %213, %161, %109
  br label %406

406:                                              ; preds = %405
  %407 = load i64, i64* %6, align 8
  %408 = add i64 %407, 1
  store i64 %408, i64* %6, align 8
  br label %34

409:                                              ; preds = %34
  %410 = load i32, i32* @MC_SEQ_IO_DEBUG_INDEX, align 4
  %411 = call i32 @WREG32(i32 %410, i32 3)
  %412 = load i32, i32* @MC_SEQ_IO_DEBUG_DATA, align 4
  %413 = call i32 @RREG32(i32 %412)
  store i32 %413, i32* %8, align 4
  %414 = load i32, i32* %8, align 4
  %415 = and i32 %414, -458753
  %416 = or i32 %415, 65536
  store i32 %416, i32* %8, align 4
  %417 = load i32, i32* @MC_SEQ_IO_DEBUG_INDEX, align 4
  %418 = call i32 @WREG32(i32 %417, i32 3)
  %419 = load i32, i32* @MC_SEQ_IO_DEBUG_DATA, align 4
  %420 = load i32, i32* %8, align 4
  %421 = call i32 @WREG32(i32 %419, i32 %420)
  br label %422

422:                                              ; preds = %409, %26, %2
  store i32 0, i32* %3, align 4
  br label %423

423:                                              ; preds = %422, %46
  %424 = load i32, i32* %3, align 4
  ret i32 %424
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
