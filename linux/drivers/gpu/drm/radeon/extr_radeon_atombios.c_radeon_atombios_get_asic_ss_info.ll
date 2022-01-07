; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_asic_ss_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_asic_ss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.radeon_mode_info }
%struct.radeon_mode_info = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.radeon_atom_ss = type { i32, i32, i32, i8* }
%union.asic_ss_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%union.asic_ss_assignment = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@ASIC_InternalSS_Info = common dso_local global i32 0, align 4
@ASIC_INTERNAL_MEMORY_SS = common dso_local global i32 0, align 4
@ATOM_BIOS_INFO_MEMORY_CLOCK_SS_SUPPORT = common dso_local global i32 0, align 4
@ASIC_INTERNAL_ENGINE_SS = common dso_local global i32 0, align 4
@ATOM_BIOS_INFO_ENGINE_CLOCK_SS_SUPPORT = common dso_local global i32 0, align 4
@SS_MODE_V3_PERCENTAGE_DIV_BY_1000_MASK = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unsupported ASIC_InternalSS_Info table: %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %0, %struct.radeon_atom_ss* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_atom_ss*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_mode_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %union.asic_ss_info*, align 8
  %15 = alloca %union.asic_ss_assignment*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_atom_ss* %1, %struct.radeon_atom_ss** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  store %struct.radeon_mode_info* %21, %struct.radeon_mode_info** %10, align 8
  %22 = load i32, i32* @DATA, align 4
  %23 = load i32, i32* @ASIC_InternalSS_Info, align 4
  %24 = call i32 @GetIndexIntoMasterTable(i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATOM_BIOS_INFO_MEMORY_CLOCK_SS_SUPPORT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %319

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ASIC_INTERNAL_ENGINE_SS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ATOM_BIOS_INFO_ENGINE_CLOCK_SS_SUPPORT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %319

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %54 = call i32 @memset(%struct.radeon_atom_ss* %53, i32 0, i32 24)
  %55 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %10, align 8
  %56 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @atom_parse_data_header(%struct.TYPE_14__* %57, i32 %58, i64* %13, i32* %16, i32* %17, i64* %12)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %318

61:                                               ; preds = %52
  %62 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %10, align 8
  %63 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %66, %67
  %69 = inttoptr i64 %68 to %union.asic_ss_info*
  store %union.asic_ss_info* %69, %union.asic_ss_info** %14, align 8
  %70 = load i32, i32* %16, align 4
  switch i32 %70, label %313 [
    i32 1, label %71
    i32 2, label %134
    i32 3, label %213
  ]

71:                                               ; preds = %61
  %72 = load i64, i64* %13, align 8
  %73 = sub i64 %72, 4
  %74 = udiv i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %19, align 4
  %76 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %77 = bitcast %union.asic_ss_info* %76 to %struct.TYPE_8__*
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = bitcast i32* %80 to %union.asic_ss_assignment*
  store %union.asic_ss_assignment* %81, %union.asic_ss_assignment** %15, align 8
  store i32 0, i32* %18, align 4
  br label %82

82:                                               ; preds = %130, %71
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %133

86:                                               ; preds = %82
  %87 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %88 = bitcast %union.asic_ss_assignment* %87 to %struct.TYPE_9__*
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %125

93:                                               ; preds = %86
  %94 = load i32, i32* %9, align 4
  %95 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %96 = bitcast %union.asic_ss_assignment* %95 to %struct.TYPE_9__*
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  %100 = icmp sle i32 %94, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %93
  %102 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %103 = bitcast %union.asic_ss_assignment* %102 to %struct.TYPE_9__*
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le16_to_cpu(i32 %105)
  %107 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %108 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %110 = bitcast %union.asic_ss_assignment* %109 to %struct.TYPE_9__*
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %114 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %116 = bitcast %union.asic_ss_assignment* %115 to %struct.TYPE_9__*
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @le16_to_cpu(i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %122 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %124 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %123, i32 0, i32 2
  store i32 100, i32* %124, align 8
  store i32 1, i32* %5, align 4
  br label %319

125:                                              ; preds = %93, %86
  %126 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %127 = bitcast %union.asic_ss_assignment* %126 to i32*
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = bitcast i32* %128 to %union.asic_ss_assignment*
  store %union.asic_ss_assignment* %129, %union.asic_ss_assignment** %15, align 8
  br label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %82

133:                                              ; preds = %82
  br label %317

134:                                              ; preds = %61
  %135 = load i64, i64* %13, align 8
  %136 = sub i64 %135, 4
  %137 = udiv i64 %136, 4
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %19, align 4
  %139 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %140 = bitcast %union.asic_ss_info* %139 to %struct.TYPE_10__*
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = bitcast i32* %143 to %union.asic_ss_assignment*
  store %union.asic_ss_assignment* %144, %union.asic_ss_assignment** %15, align 8
  store i32 0, i32* %18, align 4
  br label %145

145:                                              ; preds = %209, %134
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %19, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %212

149:                                              ; preds = %145
  %150 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %151 = bitcast %union.asic_ss_assignment* %150 to %struct.TYPE_11__*
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %204

156:                                              ; preds = %149
  %157 = load i32, i32* %9, align 4
  %158 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %159 = bitcast %union.asic_ss_assignment* %158 to %struct.TYPE_11__*
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le32_to_cpu(i32 %161)
  %163 = icmp sle i32 %157, %162
  br i1 %163, label %164, label %204

164:                                              ; preds = %156
  %165 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %166 = bitcast %union.asic_ss_assignment* %165 to %struct.TYPE_11__*
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @le16_to_cpu(i32 %168)
  %170 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %171 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %170, i32 0, i32 3
  store i8* %169, i8** %171, align 8
  %172 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %173 = bitcast %union.asic_ss_assignment* %172 to %struct.TYPE_11__*
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %177 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %179 = bitcast %union.asic_ss_assignment* %178 to %struct.TYPE_11__*
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @le16_to_cpu(i32 %181)
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %185 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %187 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %186, i32 0, i32 2
  store i32 100, i32* %187, align 8
  %188 = load i32, i32* %17, align 4
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %203

190:                                              ; preds = %164
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @ASIC_INTERNAL_ENGINE_SS, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %194, %190
  %199 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %200 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sdiv i32 %201, 100
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %198, %194, %164
  store i32 1, i32* %5, align 4
  br label %319

204:                                              ; preds = %156, %149
  %205 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %206 = bitcast %union.asic_ss_assignment* %205 to i32*
  %207 = getelementptr inbounds i32, i32* %206, i64 4
  %208 = bitcast i32* %207 to %union.asic_ss_assignment*
  store %union.asic_ss_assignment* %208, %union.asic_ss_assignment** %15, align 8
  br label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %18, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %18, align 4
  br label %145

212:                                              ; preds = %145
  br label %317

213:                                              ; preds = %61
  %214 = load i64, i64* %13, align 8
  %215 = sub i64 %214, 4
  %216 = udiv i64 %215, 4
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %19, align 4
  %218 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %219 = bitcast %union.asic_ss_info* %218 to %struct.TYPE_12__*
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = bitcast i32* %222 to %union.asic_ss_assignment*
  store %union.asic_ss_assignment* %223, %union.asic_ss_assignment** %15, align 8
  store i32 0, i32* %18, align 4
  br label %224

224:                                              ; preds = %309, %213
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* %19, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %312

228:                                              ; preds = %224
  %229 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %230 = bitcast %union.asic_ss_assignment* %229 to %struct.TYPE_13__*
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %8, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %304

235:                                              ; preds = %228
  %236 = load i32, i32* %9, align 4
  %237 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %238 = bitcast %union.asic_ss_assignment* %237 to %struct.TYPE_13__*
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @le32_to_cpu(i32 %240)
  %242 = icmp sle i32 %236, %241
  br i1 %242, label %243, label %304

243:                                              ; preds = %235
  %244 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %245 = bitcast %union.asic_ss_assignment* %244 to %struct.TYPE_13__*
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @le16_to_cpu(i32 %247)
  %249 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %250 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %249, i32 0, i32 3
  store i8* %248, i8** %250, align 8
  %251 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %252 = bitcast %union.asic_ss_assignment* %251 to %struct.TYPE_13__*
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %256 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %258 = bitcast %union.asic_ss_assignment* %257 to %struct.TYPE_13__*
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = call i8* @le16_to_cpu(i32 %260)
  %262 = ptrtoint i8* %261 to i32
  %263 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %264 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %266 = bitcast %union.asic_ss_assignment* %265 to %struct.TYPE_13__*
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @SS_MODE_V3_PERCENTAGE_DIV_BY_1000_MASK, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %243
  %273 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %274 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %273, i32 0, i32 2
  store i32 1000, i32* %274, align 8
  br label %278

275:                                              ; preds = %243
  %276 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %277 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %276, i32 0, i32 2
  store i32 100, i32* %277, align 8
  br label %278

278:                                              ; preds = %275, %272
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @ASIC_INTERNAL_ENGINE_SS, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %286, label %282

282:                                              ; preds = %278
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %282, %278
  %287 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %288 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = sdiv i32 %289, 100
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %286, %282
  %292 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %293 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @RADEON_IS_IGP, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %291
  %299 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %300 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %301 = load i32, i32* %8, align 4
  %302 = call i32 @radeon_atombios_get_igp_ss_overrides(%struct.radeon_device* %299, %struct.radeon_atom_ss* %300, i32 %301)
  br label %303

303:                                              ; preds = %298, %291
  store i32 1, i32* %5, align 4
  br label %319

304:                                              ; preds = %235, %228
  %305 = load %union.asic_ss_assignment*, %union.asic_ss_assignment** %15, align 8
  %306 = bitcast %union.asic_ss_assignment* %305 to i32*
  %307 = getelementptr inbounds i32, i32* %306, i64 4
  %308 = bitcast i32* %307 to %union.asic_ss_assignment*
  store %union.asic_ss_assignment* %308, %union.asic_ss_assignment** %15, align 8
  br label %309

309:                                              ; preds = %304
  %310 = load i32, i32* %18, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %18, align 4
  br label %224

312:                                              ; preds = %224
  br label %317

313:                                              ; preds = %61
  %314 = load i32, i32* %16, align 4
  %315 = load i32, i32* %17, align 4
  %316 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %313, %312, %212, %133
  br label %318

318:                                              ; preds = %317, %52
  store i32 0, i32* %5, align 4
  br label %319

319:                                              ; preds = %318, %303, %203, %101, %50, %36
  %320 = load i32, i32* %5, align 4
  ret i32 %320
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_14__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @radeon_atombios_get_igp_ss_overrides(%struct.radeon_device*, %struct.radeon_atom_ss*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
