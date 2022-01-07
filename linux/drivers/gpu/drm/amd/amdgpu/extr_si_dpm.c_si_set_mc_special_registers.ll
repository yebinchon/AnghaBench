; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_set_mc_special_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_set_mc_special_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.si_mc_reg_table = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i8* }

@SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MC_PMG_CMD_EMRS = common dso_local global i8* null, align 8
@MC_SEQ_PMG_CMD_EMRS_LP = common dso_local global i8* null, align 8
@MC_PMG_CMD_MRS = common dso_local global i8* null, align 8
@MC_SEQ_PMG_CMD_MRS_LP = common dso_local global i8* null, align 8
@AMDGPU_VRAM_TYPE_GDDR5 = common dso_local global i32 0, align 4
@MC_PMG_AUTO_CMD = common dso_local global i8* null, align 8
@MC_PMG_CMD_MRS1 = common dso_local global i8* null, align 8
@MC_SEQ_PMG_CMD_MRS1_LP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.si_mc_reg_table*)* @si_set_mc_special_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_set_mc_special_registers(%struct.amdgpu_device* %0, %struct.si_mc_reg_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.si_mc_reg_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.si_mc_reg_table* %1, %struct.si_mc_reg_table** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %11 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %288, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %16 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %291

19:                                               ; preds = %13
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %295

26:                                               ; preds = %19
  %27 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %28 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %286 [
    i32 129, label %34
    i32 128, label %232
  ]

34:                                               ; preds = %26
  %35 = load i8*, i8** @MC_PMG_CMD_EMRS, align 8
  %36 = call i32 @RREG32(i8* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** @MC_PMG_CMD_EMRS, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %40 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %38, i32* %44, align 8
  %45 = load i8*, i8** @MC_SEQ_PMG_CMD_EMRS_LP, align 8
  %46 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %47 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i8* %45, i8** %51, align 8
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %83, %34
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %55 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, -65536
  %61 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %62 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, -65536
  %72 = lshr i32 %71, 16
  %73 = or i32 %60, %72
  %74 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %75 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %73, i32* %82, align 4
  br label %83

83:                                               ; preds = %58
  %84 = load i64, i64* %8, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %52

86:                                               ; preds = %52
  %87 = load i64, i64* %7, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %295

95:                                               ; preds = %86
  %96 = load i8*, i8** @MC_PMG_CMD_MRS, align 8
  %97 = call i32 @RREG32(i8* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i8*, i8** @MC_PMG_CMD_MRS, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %101 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %100, i32 0, i32 3
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 %99, i32* %105, align 8
  %106 = load i8*, i8** @MC_SEQ_PMG_CMD_MRS_LP, align 8
  %107 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %108 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %107, i32 0, i32 3
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  store i8* %106, i8** %112, align 8
  store i64 0, i64* %8, align 8
  br label %113

113:                                              ; preds = %162, %95
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %116 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %119, label %165

119:                                              ; preds = %113
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, -65536
  %122 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %123 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %122, i32 0, i32 2
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 65535
  %133 = or i32 %121, %132
  %134 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %135 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %134, i32 0, i32 2
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %7, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32 %133, i32* %142, align 4
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @AMDGPU_VRAM_TYPE_GDDR5, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %119
  %150 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %151 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %150, i32 0, i32 2
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i64, i64* %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %7, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, 256
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %149, %119
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %8, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %8, align 8
  br label %113

165:                                              ; preds = %113
  %166 = load i64, i64* %7, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %7, align 8
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @AMDGPU_VRAM_TYPE_GDDR5, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %231

174:                                              ; preds = %165
  %175 = load i64, i64* %7, align 8
  %176 = load i64, i64* @SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE, align 8
  %177 = icmp sge i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %295

181:                                              ; preds = %174
  %182 = load i8*, i8** @MC_PMG_AUTO_CMD, align 8
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %185 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %184, i32 0, i32 3
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i64, i64* %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i32 %183, i32* %189, align 8
  %190 = load i8*, i8** @MC_PMG_AUTO_CMD, align 8
  %191 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %192 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %191, i32 0, i32 3
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = load i64, i64* %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  store i8* %190, i8** %196, align 8
  store i64 0, i64* %8, align 8
  br label %197

197:                                              ; preds = %225, %181
  %198 = load i64, i64* %8, align 8
  %199 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %200 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp slt i64 %198, %201
  br i1 %202, label %203, label %228

203:                                              ; preds = %197
  %204 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %205 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %204, i32 0, i32 2
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load i64, i64* %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* %6, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, -65536
  %215 = lshr i32 %214, 16
  %216 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %217 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %216, i32 0, i32 2
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = load i64, i64* %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* %7, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32 %215, i32* %224, align 4
  br label %225

225:                                              ; preds = %203
  %226 = load i64, i64* %8, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %8, align 8
  br label %197

228:                                              ; preds = %197
  %229 = load i64, i64* %7, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %7, align 8
  br label %231

231:                                              ; preds = %228, %165
  br label %287

232:                                              ; preds = %26
  %233 = load i8*, i8** @MC_PMG_CMD_MRS1, align 8
  %234 = call i32 @RREG32(i8* %233)
  store i32 %234, i32* %9, align 4
  %235 = load i8*, i8** @MC_PMG_CMD_MRS1, align 8
  %236 = ptrtoint i8* %235 to i32
  %237 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %238 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %237, i32 0, i32 3
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %238, align 8
  %240 = load i64, i64* %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  store i32 %236, i32* %242, align 8
  %243 = load i8*, i8** @MC_SEQ_PMG_CMD_MRS1_LP, align 8
  %244 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %245 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %244, i32 0, i32 3
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %245, align 8
  %247 = load i64, i64* %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  store i8* %243, i8** %249, align 8
  store i64 0, i64* %8, align 8
  br label %250

250:                                              ; preds = %280, %232
  %251 = load i64, i64* %8, align 8
  %252 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %253 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp slt i64 %251, %254
  br i1 %255, label %256, label %283

256:                                              ; preds = %250
  %257 = load i32, i32* %9, align 4
  %258 = and i32 %257, -65536
  %259 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %260 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %259, i32 0, i32 2
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = load i64, i64* %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i64, i64* %6, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, 65535
  %270 = or i32 %258, %269
  %271 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %272 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %271, i32 0, i32 2
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = load i64, i64* %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i64, i64* %7, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32 %270, i32* %279, align 4
  br label %280

280:                                              ; preds = %256
  %281 = load i64, i64* %8, align 8
  %282 = add nsw i64 %281, 1
  store i64 %282, i64* %8, align 8
  br label %250

283:                                              ; preds = %250
  %284 = load i64, i64* %7, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %7, align 8
  br label %287

286:                                              ; preds = %26
  br label %287

287:                                              ; preds = %286, %283, %231
  br label %288

288:                                              ; preds = %287
  %289 = load i64, i64* %6, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %6, align 8
  br label %13

291:                                              ; preds = %13
  %292 = load i64, i64* %7, align 8
  %293 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %294 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %293, i32 0, i32 0
  store i64 %292, i64* %294, align 8
  store i32 0, i32* %3, align 4
  br label %295

295:                                              ; preds = %291, %178, %92, %23
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

declare dso_local i32 @RREG32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
