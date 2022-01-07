; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_init_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_init_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.atom_mc_reg_table = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i64 }
%union.vram_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@DATA = common dso_local global i32 0, align 4
@VRAM_Info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"old table version %d, %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VBIOS_MC_REGISTER_ARRAY_SIZE = common dso_local global i32 0, align 4
@ACCESS_PLACEHOLDER = common dso_local global i32 0, align 4
@END_OF_REG_DATA_BLOCK = common dso_local global i32 0, align 4
@VBIOS_MAX_AC_TIMING_ENTRIES = common dso_local global i32 0, align 4
@MEM_ID_MASK = common dso_local global i32 0, align 4
@MEM_ID_SHIFT = common dso_local global i32 0, align 4
@CLOCK_RANGE_MASK = common dso_local global i32 0, align 4
@CLOCK_RANGE_SHIFT = common dso_local global i32 0, align 4
@LOW_NIBBLE_MASK = common dso_local global i32 0, align 4
@DATA_FROM_TABLE = common dso_local global i32 0, align 4
@DATA_EQU_PREV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_init_mc_reg_table(%struct.amdgpu_device* %0, i32 %1, %struct.atom_mc_reg_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atom_mc_reg_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %union.vram_info*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.atom_mc_reg_table* %2, %struct.atom_mc_reg_table** %7, align 8
  %22 = load i32, i32* @DATA, align 4
  %23 = load i32, i32* @VRAM_Info, align 4
  %24 = call i32 @GetIndexIntoMasterTable(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %26 = call i32 @memset(%struct.atom_mc_reg_table* %25, i32 0, i32 24)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_14__* %30, i32 %31, i64* %17, i32* %9, i32* %10, i64* %16)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %306

34:                                               ; preds = %3
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %16, align 8
  %42 = add nsw i64 %40, %41
  %43 = inttoptr i64 %42 to %union.vram_info*
  store %union.vram_info* %43, %union.vram_info** %18, align 8
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %299 [
    i32 1, label %45
    i32 2, label %51
  ]

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %309

51:                                               ; preds = %34
  %52 = load i32, i32* %10, align 4
  switch i32 %52, label %292 [
    i32 1, label %53
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* %6, align 4
  %55 = load %union.vram_info*, %union.vram_info** %18, align 8
  %56 = bitcast %union.vram_info* %55 to %struct.TYPE_9__*
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %288

60:                                               ; preds = %53
  %61 = load %union.vram_info*, %union.vram_info** %18, align 8
  %62 = bitcast %union.vram_info* %61 to i32*
  %63 = load %union.vram_info*, %union.vram_info** %18, align 8
  %64 = bitcast %union.vram_info* %63 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %62, i64 %68
  %70 = bitcast i32* %69 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %19, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %72 = bitcast %struct.TYPE_13__* %71 to i32*
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  store i32* %79, i32** %20, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i64 0
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %21, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = sext i32 %87 to i64
  %89 = udiv i64 %88, 8
  %90 = trunc i64 %89 to i32
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @VBIOS_MC_REGISTER_ARRAY_SIZE, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %60
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %309

98:                                               ; preds = %60
  br label %99

99:                                               ; preds = %111, %98
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %140

103:                                              ; preds = %99
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ACCESS_PLACEHOLDER, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %140

111:                                              ; preds = %103
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le16_to_cpu(i32 %114)
  %116 = sext i32 %115 to i64
  %117 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %118 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %117, i32 0, i32 3
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i64 %116, i64* %123, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %128 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %127, i32 0, i32 3
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32 %126, i32* %133, align 8
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %137 = bitcast %struct.TYPE_12__* %136 to i32*
  %138 = getelementptr inbounds i32, i32* %137, i64 8
  %139 = bitcast i32* %138 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %139, %struct.TYPE_12__** %21, align 8
  br label %99

140:                                              ; preds = %110, %99
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %143 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %267, %140
  %145 = load i32*, i32** %20, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  %148 = load i32, i32* @END_OF_REG_DATA_BLOCK, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @VBIOS_MAX_AC_TIMING_ENTRIES, align 4
  %153 = icmp slt i32 %151, %152
  br label %154

154:                                              ; preds = %150, %144
  %155 = phi i1 [ false, %144 ], [ %153, %150 ]
  br i1 %155, label %156, label %275

156:                                              ; preds = %154
  %157 = load i32*, i32** %20, align 8
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le32_to_cpu(i32 %158)
  %160 = load i32, i32* @MEM_ID_MASK, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @MEM_ID_SHIFT, align 4
  %163 = ashr i32 %161, %162
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %267

167:                                              ; preds = %156
  %168 = load i32*, i32** %20, align 8
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @le32_to_cpu(i32 %169)
  %171 = load i32, i32* @CLOCK_RANGE_MASK, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @CLOCK_RANGE_SHIFT, align 4
  %174 = ashr i32 %172, %173
  %175 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %176 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %175, i32 0, i32 2
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  store i32 %174, i32* %181, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %182

182:                                              ; preds = %261, %167
  %183 = load i32, i32* %14, align 4
  %184 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %185 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %264

188:                                              ; preds = %182
  %189 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %190 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %189, i32 0, i32 3
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @LOW_NIBBLE_MASK, align 4
  %198 = and i32 %196, %197
  %199 = load i32, i32* @DATA_FROM_TABLE, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %221

201:                                              ; preds = %188
  %202 = load i32*, i32** %20, align 8
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @le32_to_cpu(i32 %206)
  %208 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %209 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %208, i32 0, i32 2
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %207, i32* %218, align 4
  %219 = load i32, i32* %15, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %15, align 4
  br label %260

221:                                              ; preds = %188
  %222 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %223 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %222, i32 0, i32 3
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @LOW_NIBBLE_MASK, align 4
  %231 = and i32 %229, %230
  %232 = load i32, i32* @DATA_EQU_PREV, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %259

234:                                              ; preds = %221
  %235 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %236 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %235, i32 0, i32 2
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %14, align 4
  %244 = sub nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %249 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %248, i32 0, i32 2
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %14, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  store i32 %247, i32* %258, align 4
  br label %259

259:                                              ; preds = %234, %221
  br label %260

260:                                              ; preds = %259, %201
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %14, align 4
  br label %182

264:                                              ; preds = %182
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %13, align 4
  br label %267

267:                                              ; preds = %264, %156
  %268 = load i32*, i32** %20, align 8
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @le16_to_cpu(i32 %271)
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %268, i64 %273
  store i32* %274, i32** %20, align 8
  br label %144

275:                                              ; preds = %154
  %276 = load i32*, i32** %20, align 8
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @le32_to_cpu(i32 %277)
  %279 = load i32, i32* @END_OF_REG_DATA_BLOCK, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %275
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %4, align 4
  br label %309

284:                                              ; preds = %275
  %285 = load i32, i32* %13, align 4
  %286 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %7, align 8
  %287 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 4
  br label %291

288:                                              ; preds = %53
  %289 = load i32, i32* @EINVAL, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %4, align 4
  br label %309

291:                                              ; preds = %284
  br label %298

292:                                              ; preds = %51
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* %10, align 4
  %295 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %293, i32 %294)
  %296 = load i32, i32* @EINVAL, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %4, align 4
  br label %309

298:                                              ; preds = %291
  br label %305

299:                                              ; preds = %34
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* %10, align 4
  %302 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %300, i32 %301)
  %303 = load i32, i32* @EINVAL, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %4, align 4
  br label %309

305:                                              ; preds = %298
  store i32 0, i32* %4, align 4
  br label %309

306:                                              ; preds = %3
  %307 = load i32, i32* @EINVAL, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %4, align 4
  br label %309

309:                                              ; preds = %306, %305, %299, %292, %288, %281, %95, %45
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.atom_mc_reg_table*, i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_14__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
