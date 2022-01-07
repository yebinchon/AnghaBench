; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_update_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_update_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_update_params = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_vm_pt_cursor = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@CHIP_VEGA10 = common dso_local global i64 0, align 8
@AMDGPU_PTE_VALID = common dso_local global i32 0, align 4
@AMDGPU_VM_PTB = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_vm_update_params*, i32, i32, i32, i32)* @amdgpu_vm_update_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vm_update_ptes(%struct.amdgpu_vm_update_params* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_vm_update_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.amdgpu_device*, align 8
  %13 = alloca %struct.amdgpu_vm_pt_cursor, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.amdgpu_bo*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.amdgpu_vm_update_params* %0, %struct.amdgpu_vm_update_params** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %27 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %27, i32 0, i32 1
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %28, align 8
  store %struct.amdgpu_device* %29, %struct.amdgpu_device** %12, align 8
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %7, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @amdgpu_vm_fragment(%struct.amdgpu_vm_update_params* %31, i32 %32, i32 %33, i32 %34, i32* %16, i32* %15)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %37 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %7, align 8
  %38 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @amdgpu_vm_pt_start(%struct.amdgpu_device* %36, i32 %39, i32 %40, %struct.amdgpu_vm_pt_cursor* %13)
  br label %42

42:                                               ; preds = %258, %145, %125, %112, %79, %5
  %43 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %259

47:                                               ; preds = %42
  %48 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %7, align 8
  %49 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %48, i32 0, i32 1
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %49, align 8
  %51 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @amdgpu_vm_alloc_pts(%struct.amdgpu_device* %50, i32 %53, %struct.amdgpu_vm_pt_cursor* %13)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %6, align 4
  br label %260

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %63, align 8
  store %struct.amdgpu_bo* %64, %struct.amdgpu_bo** %24, align 8
  %65 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %59
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %74 = call i64 @amdgpu_vm_pt_descendant(%struct.amdgpu_device* %73, %struct.amdgpu_vm_pt_cursor* %13)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %260

79:                                               ; preds = %72
  br label %42

80:                                               ; preds = %59
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %82 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @amdgpu_vm_level_shift(%struct.amdgpu_device* %81, i32 %83)
  store i32 %84, i32* %18, align 4
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %86 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i32 @amdgpu_vm_level_shift(%struct.amdgpu_device* %85, i32 %88)
  store i32 %89, i32* %19, align 4
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CHIP_VEGA10, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %80
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @AMDGPU_PTE_VALID, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @AMDGPU_VM_PTB, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %107 = call i64 @amdgpu_vm_pt_descendant(%struct.amdgpu_device* %106, %struct.amdgpu_vm_pt_cursor* %13)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @ENOENT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %260

112:                                              ; preds = %105
  br label %42

113:                                              ; preds = %100
  br label %148

114:                                              ; preds = %95, %80
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %18, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %120 = call i64 @amdgpu_vm_pt_descendant(%struct.amdgpu_device* %119, %struct.amdgpu_vm_pt_cursor* %13)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %6, align 4
  br label %260

125:                                              ; preds = %118
  br label %42

126:                                              ; preds = %114
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %19, align 4
  %129 = icmp uge i32 %127, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %133, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %130
  %140 = call i32 @amdgpu_vm_pt_ancestor(%struct.amdgpu_vm_pt_cursor* %13)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* @ENOENT, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %260

145:                                              ; preds = %139
  br label %42

146:                                              ; preds = %130, %126
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147, %113
  %149 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %150 = load i32, i32* %18, align 4
  %151 = shl i32 %149, %150
  store i32 %151, i32* %21, align 4
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %153 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @amdgpu_vm_entries_mask(%struct.amdgpu_device* %152, i32 %154)
  store i32 %155, i32* %20, align 4
  %156 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %18, align 4
  %159 = lshr i32 %157, %158
  %160 = load i32, i32* %20, align 4
  %161 = and i32 %159, %160
  %162 = mul i32 %161, 8
  store i32 %162, i32* %23, align 4
  %163 = load i32, i32* %20, align 4
  %164 = add i32 %163, 1
  %165 = load i32, i32* %18, align 4
  %166 = shl i32 %164, %165
  store i32 %166, i32* %22, align 4
  %167 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %22, align 4
  %170 = sub i32 %169, 1
  %171 = xor i32 %170, -1
  %172 = and i32 %168, %171
  %173 = load i32, i32* %22, align 4
  %174 = add i32 %173, %172
  store i32 %174, i32* %22, align 4
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @min(i32 %175, i32 %176)
  store i32 %177, i32* %22, align 4
  br label %178

178:                                              ; preds = %227, %148
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @min(i32 %179, i32 %180)
  store i32 %181, i32* %25, align 4
  %182 = load i32, i32* %25, align 4
  %183 = load i32, i32* %14, align 4
  %184 = sub i32 %182, %183
  %185 = load i32, i32* %18, align 4
  %186 = lshr i32 %184, %185
  store i32 %186, i32* %26, align 4
  %187 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %7, align 8
  %188 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %24, align 8
  %189 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %23, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %26, align 4
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %16, align 4
  %197 = call i32 @AMDGPU_PTE_FRAG(i32 %196)
  %198 = or i32 %195, %197
  %199 = call i32 @amdgpu_vm_update_flags(%struct.amdgpu_vm_update_params* %187, %struct.amdgpu_bo* %188, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %198)
  %200 = load i32, i32* %26, align 4
  %201 = mul i32 %200, 8
  %202 = load i32, i32* %23, align 4
  %203 = add i32 %202, %201
  store i32 %203, i32* %23, align 4
  %204 = load i32, i32* %26, align 4
  %205 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %206 = mul i32 %204, %205
  %207 = load i32, i32* %18, align 4
  %208 = shl i32 %206, %207
  %209 = load i32, i32* %10, align 4
  %210 = add i32 %209, %208
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %25, align 4
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %15, align 4
  %214 = icmp uge i32 %212, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %178
  %216 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %7, align 8
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @amdgpu_vm_fragment(%struct.amdgpu_vm_update_params* %216, i32 %217, i32 %218, i32 %219, i32* %16, i32* %15)
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %18, align 4
  %223 = icmp ult i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %215
  br label %231

225:                                              ; preds = %215
  br label %226

226:                                              ; preds = %225, %178
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %22, align 4
  %230 = icmp ult i32 %228, %229
  br i1 %230, label %178, label %231

231:                                              ; preds = %227, %224
  %232 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %233 = call i64 @amdgpu_vm_pt_descendant(%struct.amdgpu_device* %232, %struct.amdgpu_vm_pt_cursor* %13)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %231
  br label %236

236:                                              ; preds = %241, %235
  %237 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %13, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %14, align 4
  %240 = icmp ult i32 %238, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %236
  %242 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %243 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %7, align 8
  %244 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @amdgpu_vm_free_pts(%struct.amdgpu_device* %242, i32 %245, %struct.amdgpu_vm_pt_cursor* %13)
  %247 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %248 = call i32 @amdgpu_vm_pt_next(%struct.amdgpu_device* %247, %struct.amdgpu_vm_pt_cursor* %13)
  br label %236

249:                                              ; preds = %236
  br label %258

250:                                              ; preds = %231
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* %18, align 4
  %253 = icmp uge i32 %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %250
  %255 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %256 = call i32 @amdgpu_vm_pt_next(%struct.amdgpu_device* %255, %struct.amdgpu_vm_pt_cursor* %13)
  br label %257

257:                                              ; preds = %254, %250
  br label %258

258:                                              ; preds = %257, %249
  br label %42

259:                                              ; preds = %42
  store i32 0, i32* %6, align 4
  br label %260

260:                                              ; preds = %259, %142, %122, %109, %76, %57
  %261 = load i32, i32* %6, align 4
  ret i32 %261
}

declare dso_local i32 @amdgpu_vm_fragment(%struct.amdgpu_vm_update_params*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @amdgpu_vm_pt_start(%struct.amdgpu_device*, i32, i32, %struct.amdgpu_vm_pt_cursor*) #1

declare dso_local i32 @amdgpu_vm_alloc_pts(%struct.amdgpu_device*, i32, %struct.amdgpu_vm_pt_cursor*) #1

declare dso_local i64 @amdgpu_vm_pt_descendant(%struct.amdgpu_device*, %struct.amdgpu_vm_pt_cursor*) #1

declare dso_local i32 @amdgpu_vm_level_shift(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_vm_pt_ancestor(%struct.amdgpu_vm_pt_cursor*) #1

declare dso_local i32 @amdgpu_vm_entries_mask(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @amdgpu_vm_update_flags(%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AMDGPU_PTE_FRAG(i32) #1

declare dso_local i32 @amdgpu_vm_free_pts(%struct.amdgpu_device*, i32, %struct.amdgpu_vm_pt_cursor*) #1

declare dso_local i32 @amdgpu_vm_pt_next(%struct.amdgpu_device*, %struct.amdgpu_vm_pt_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
