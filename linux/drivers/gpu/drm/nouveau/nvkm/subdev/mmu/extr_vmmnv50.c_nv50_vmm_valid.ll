; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv50.c_nv50_vmm_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv50.c_nv50_vmm_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32* (%struct.TYPE_13__*, i32*)* }
%struct.TYPE_8__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.nvkm_ram* }
%struct.nvkm_ram = type { i32 }
%struct.nvkm_vmm_map = type { i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_11__*, %struct.nvkm_memory*, %struct.nvkm_vmm_page* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.nvkm_memory = type { i32 }
%struct.nvkm_vmm_page = type { i32, i32 }
%union.anon = type { %struct.nv50_vmm_map_v0 }
%struct.nv50_vmm_map_v0 = type { i32, i32, i32, i32 }
%struct.nv50_vmm_map_vn = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"args\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"kind %02x\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"kind %02x bankswz: %d %d\00", align 1
@NVKM_VMM_PAGE_COMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"comp %d %02x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"comp %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_vmm_valid(%struct.nvkm_vmm* %0, i8* %1, i32 %2, %struct.nvkm_vmm_map* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_vmm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_vmm_map*, align 8
  %10 = alloca %struct.nvkm_vmm_page*, align 8
  %11 = alloca %union.anon*, align 8
  %12 = alloca %struct.nvkm_device*, align 8
  %13 = alloca %struct.nvkm_ram*, align 8
  %14 = alloca %struct.nvkm_memory*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_vmm_map* %3, %struct.nvkm_vmm_map** %9, align 8
  %25 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %26 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %25, i32 0, i32 7
  %27 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %26, align 8
  store %struct.nvkm_vmm_page* %27, %struct.nvkm_vmm_page** %10, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %union.anon*
  store %union.anon* %29, %union.anon** %11, align 8
  %30 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %31 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %34, align 8
  store %struct.nvkm_device* %35, %struct.nvkm_device** %12, align 8
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %37 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.nvkm_ram*, %struct.nvkm_ram** %39, align 8
  store %struct.nvkm_ram* %40, %struct.nvkm_ram** %13, align 8
  %41 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %42 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %41, i32 0, i32 6
  %43 = load %struct.nvkm_memory*, %struct.nvkm_memory** %42, align 8
  store %struct.nvkm_memory* %43, %struct.nvkm_memory** %14, align 8
  %44 = load i32, i32* @ENOSYS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %21, align 4
  %46 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %47 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %49 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %51 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 1, %52
  %54 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %55 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %21, align 4
  %57 = load %union.anon*, %union.anon** %11, align 8
  %58 = bitcast %union.anon* %57 to %struct.nv50_vmm_map_v0*
  %59 = bitcast %struct.nv50_vmm_map_v0* %58 to { i64, i64 }*
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 4
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 1
  %63 = load i64, i64* %62, align 4
  %64 = call i32 @nvif_unpack(i32 %56, i8** %7, i32* %8, i64 %61, i64 %63, i32 0, i32 0, i32 0)
  store i32 %64, i32* %21, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %4
  %67 = load %union.anon*, %union.anon** %11, align 8
  %68 = bitcast %union.anon* %67 to %struct.nv50_vmm_map_v0*
  %69 = getelementptr inbounds %struct.nv50_vmm_map_v0, %struct.nv50_vmm_map_v0* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %19, align 4
  %75 = load %union.anon*, %union.anon** %11, align 8
  %76 = bitcast %union.anon* %75 to %struct.nv50_vmm_map_v0*
  %77 = getelementptr inbounds %struct.nv50_vmm_map_v0, %struct.nv50_vmm_map_v0* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %18, align 4
  %83 = load %union.anon*, %union.anon** %11, align 8
  %84 = bitcast %union.anon* %83 to %struct.nv50_vmm_map_v0*
  %85 = getelementptr inbounds %struct.nv50_vmm_map_v0, %struct.nv50_vmm_map_v0* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 127
  store i32 %87, i32* %16, align 4
  %88 = load %union.anon*, %union.anon** %11, align 8
  %89 = bitcast %union.anon* %88 to %struct.nv50_vmm_map_v0*
  %90 = getelementptr inbounds %struct.nv50_vmm_map_v0, %struct.nv50_vmm_map_v0* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 3
  store i32 %92, i32* %17, align 4
  br label %107

93:                                               ; preds = %4
  %94 = load i32, i32* %21, align 4
  %95 = load %union.anon*, %union.anon** %11, align 8
  %96 = bitcast %union.anon* %95 to %struct.nv50_vmm_map_vn*
  %97 = getelementptr inbounds %struct.nv50_vmm_map_vn, %struct.nv50_vmm_map_vn* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @nvif_unvers(i32 %94, i8** %7, i32* %8, i32 %98)
  store i32 %99, i32* %21, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %106

102:                                              ; preds = %93
  %103 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %104 = call i32 (%struct.nvkm_vmm*, i8*, ...) @VMM_DEBUG(%struct.nvkm_vmm* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* %21, align 4
  store i32 %105, i32* %5, align 4
  br label %309

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %66
  %108 = load %struct.nvkm_memory*, %struct.nvkm_memory** %14, align 8
  %109 = call i32 @nvkm_memory_target(%struct.nvkm_memory* %108)
  switch i32 %109, label %127 [
    i32 128, label %110
    i32 130, label %125
    i32 129, label %126
  ]

110:                                              ; preds = %107
  %111 = load %struct.nvkm_ram*, %struct.nvkm_ram** %13, align 8
  %112 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.nvkm_ram*, %struct.nvkm_ram** %13, align 8
  %117 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %120 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  store i32 3, i32* %15, align 4
  br label %124

123:                                              ; preds = %110
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %123, %115
  br label %131

125:                                              ; preds = %107
  store i32 2, i32* %15, align 4
  br label %131

126:                                              ; preds = %107
  store i32 3, i32* %15, align 4
  br label %131

127:                                              ; preds = %107
  %128 = call i32 @WARN_ON(i32 1)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %309

131:                                              ; preds = %126, %125, %124
  %132 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %133 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %132, i32 0, i32 0
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32* (%struct.TYPE_13__*, i32*)*, i32* (%struct.TYPE_13__*, i32*)** %137, align 8
  %139 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %140 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %139, i32 0, i32 0
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = call i32* %138(%struct.TYPE_13__* %141, i32* %20)
  store i32* %142, i32** %22, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %20, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %153, label %146

146:                                              ; preds = %131
  %147 = load i32*, i32** %22, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 127
  br i1 %152, label %153, label %159

153:                                              ; preds = %146, %131
  %154 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %155 = load i32, i32* %16, align 4
  %156 = call i32 (%struct.nvkm_vmm*, i8*, ...) @VMM_DEBUG(%struct.nvkm_vmm* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %5, align 4
  br label %309

159:                                              ; preds = %146
  %160 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %161 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %160, i32 0, i32 5
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = icmp ne %struct.TYPE_11__* %162, null
  br i1 %163, label %164, label %192

164:                                              ; preds = %159
  %165 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %166 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %165, i32 0, i32 5
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %22, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %169, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %164
  %177 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %178 = load i32, i32* %16, align 4
  %179 = load i32*, i32** %22, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %185 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %184, i32 0, i32 5
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (%struct.nvkm_vmm*, i8*, ...) @VMM_DEBUG(%struct.nvkm_vmm* %177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %178, i32 %183, i32 %188)
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %5, align 4
  br label %309

192:                                              ; preds = %164, %159
  %193 = load i32, i32* %17, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %279

195:                                              ; preds = %192
  %196 = load %struct.nvkm_memory*, %struct.nvkm_memory** %14, align 8
  %197 = call i32 @nvkm_memory_size(%struct.nvkm_memory* %196)
  %198 = ashr i32 %197, 16
  %199 = load i32, i32* %17, align 4
  %200 = mul nsw i32 %198, %199
  store i32 %200, i32* %23, align 4
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %195
  %204 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %205 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @NVKM_VMM_PAGE_COMP, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %203, %195
  %211 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %212 = load i32, i32* %15, align 4
  %213 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %214 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (%struct.nvkm_vmm*, i8*, ...) @VMM_DEBUG(%struct.nvkm_vmm* %211, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %212, i32 %215)
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %5, align 4
  br label %309

219:                                              ; preds = %203
  %220 = load %struct.nvkm_memory*, %struct.nvkm_memory** %14, align 8
  %221 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %222 = load i32, i32* %23, align 4
  %223 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %224 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %223, i32 0, i32 4
  %225 = call i32 @nvkm_memory_tags_get(%struct.nvkm_memory* %220, %struct.nvkm_device* %221, i32 %222, i32* null, %struct.TYPE_14__** %224)
  store i32 %225, i32* %21, align 4
  %226 = load i32, i32* %21, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %219
  %229 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %230 = load i32, i32* %21, align 4
  %231 = call i32 (%struct.nvkm_vmm*, i8*, ...) @VMM_DEBUG(%struct.nvkm_vmm* %229, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* %21, align 4
  store i32 %232, i32* %5, align 4
  br label %309

233:                                              ; preds = %219
  %234 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %235 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %234, i32 0, i32 4
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %237, align 8
  %239 = icmp ne %struct.TYPE_12__* %238, null
  br i1 %239, label %240, label %278

240:                                              ; preds = %233
  %241 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %242 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %241, i32 0, i32 4
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %249 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = ashr i32 %250, 16
  %252 = add nsw i32 %247, %251
  store i32 %252, i32* %24, align 4
  %253 = load i32, i32* %17, align 4
  %254 = shl i32 %253, 49
  %255 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %256 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* %17, align 4
  %260 = shl i32 %259, 47
  %261 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %262 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load i32, i32* %24, align 4
  %266 = shl i32 %265, 49
  %267 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %268 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %272 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %275 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %240, %233
  br label %279

279:                                              ; preds = %278, %192
  %280 = call i32 @BIT(i32 0)
  %281 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %282 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 8
  %285 = load i32, i32* %19, align 4
  %286 = shl i32 %285, 3
  %287 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %288 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 8
  %291 = load i32, i32* %15, align 4
  %292 = shl i32 %291, 4
  %293 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %294 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  %297 = load i32, i32* %18, align 4
  %298 = shl i32 %297, 6
  %299 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %300 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 8
  %303 = load i32, i32* %16, align 4
  %304 = shl i32 %303, 40
  %305 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %9, align 8
  %306 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 8
  store i32 0, i32* %5, align 4
  br label %309

309:                                              ; preds = %279, %228, %210, %176, %153, %127, %102
  %310 = load i32, i32* %5, align 4
  ret i32 %310
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #1

declare dso_local i32 @VMM_DEBUG(%struct.nvkm_vmm*, i8*, ...) #1

declare dso_local i32 @nvkm_memory_target(%struct.nvkm_memory*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nvkm_memory_size(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_memory_tags_get(%struct.nvkm_memory*, %struct.nvkm_device*, i32, i32*, %struct.TYPE_14__**) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
