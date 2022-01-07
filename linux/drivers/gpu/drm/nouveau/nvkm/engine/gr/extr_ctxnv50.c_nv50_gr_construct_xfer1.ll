; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_xfer1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_xfer1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { i32, i32, %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@CP_SET_XFER_POINTER = common dso_local global i32 0, align 4
@CP_SEEK_1 = common dso_local global i32 0, align 4
@CP_XFER_1 = common dso_local global i32 0, align 4
@XFER = common dso_local global i32 0, align 4
@BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv50_gr_construct_xfer1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_construct_xfer1(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %8 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %9 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %8, i32 0, i32 2
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = call i32 @nvkm_rd32(%struct.nvkm_device* %11, i32 5440)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 63
  %17 = and i32 %16, -64
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %20 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %22 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 160
  br i1 %24, label %25, label %206

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %28 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %30 = call i32 @nv50_gr_construct_gene_dispatch(%struct.nvkm_grctx* %29)
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %32 = call i32 @nv50_gr_construct_gene_m2mf(%struct.nvkm_grctx* %31)
  %33 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %34 = call i32 @nv50_gr_construct_gene_unk24xx(%struct.nvkm_grctx* %33)
  %35 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %36 = call i32 @nv50_gr_construct_gene_clipid(%struct.nvkm_grctx* %35)
  %37 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %38 = call i32 @nv50_gr_construct_gene_zcull(%struct.nvkm_grctx* %37)
  %39 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %40 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sdiv i32 %43, 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %25
  %48 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %49 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sdiv i32 %52, 8
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %47, %25
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  %57 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %58 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %60 = call i32 @nv50_gr_construct_gene_vfetch(%struct.nvkm_grctx* %59)
  %61 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %62 = call i32 @nv50_gr_construct_gene_eng2d(%struct.nvkm_grctx* %61)
  %63 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %64 = call i32 @nv50_gr_construct_gene_csched(%struct.nvkm_grctx* %63)
  %65 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %66 = call i32 @nv50_gr_construct_gene_ropm1(%struct.nvkm_grctx* %65)
  %67 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %68 = call i32 @nv50_gr_construct_gene_ropm2(%struct.nvkm_grctx* %67)
  %69 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %70 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sdiv i32 %73, 8
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %54
  %78 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %79 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sdiv i32 %82, 8
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %77, %54
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 2
  %87 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %88 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %90 = call i32 @nv50_gr_construct_gene_ccache(%struct.nvkm_grctx* %89)
  %91 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %92 = call i32 @nv50_gr_construct_gene_unk1cxx(%struct.nvkm_grctx* %91)
  %93 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %94 = call i32 @nv50_gr_construct_gene_strmout(%struct.nvkm_grctx* %93)
  %95 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %96 = call i32 @nv50_gr_construct_gene_unk14xx(%struct.nvkm_grctx* %95)
  %97 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %98 = call i32 @nv50_gr_construct_gene_unk10xx(%struct.nvkm_grctx* %97)
  %99 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %100 = call i32 @nv50_gr_construct_gene_unk34xx(%struct.nvkm_grctx* %99)
  %101 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %102 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sdiv i32 %105, 8
  %107 = load i32, i32* %6, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %84
  %110 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %111 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sdiv i32 %114, 8
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %109, %84
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 3
  %119 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %120 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %135, %116
  %122 = load i32, i32* %4, align 4
  %123 = icmp slt i32 %122, 6
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 16
  %128 = shl i32 1, %127
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %133 = call i32 @nv50_gr_construct_gene_ropc(%struct.nvkm_grctx* %132)
  br label %134

134:                                              ; preds = %131, %124
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %121

138:                                              ; preds = %121
  %139 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %140 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sub nsw i32 %141, %142
  %144 = sdiv i32 %143, 8
  %145 = load i32, i32* %6, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %138
  %148 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %149 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sub nsw i32 %150, %151
  %153 = sdiv i32 %152, 8
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %147, %138
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %202, %154
  %156 = load i32, i32* %4, align 4
  %157 = icmp slt i32 %156, 4
  br i1 %157, label %158, label %205

158:                                              ; preds = %155
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 4
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %160, %161
  %163 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %164 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %4, align 4
  %167 = mul nsw i32 2, %166
  %168 = shl i32 1, %167
  %169 = and i32 %165, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %158
  %172 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %173 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %172)
  br label %174

174:                                              ; preds = %171, %158
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %4, align 4
  %177 = mul nsw i32 2, %176
  %178 = add nsw i32 %177, 1
  %179 = shl i32 1, %178
  %180 = and i32 %175, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %184 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %183)
  br label %185

185:                                              ; preds = %182, %174
  %186 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %187 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sub nsw i32 %188, %189
  %191 = sdiv i32 %190, 8
  %192 = load i32, i32* %6, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %185
  %195 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %196 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sub nsw i32 %197, %198
  %200 = sdiv i32 %199, 8
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %194, %185
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %155

205:                                              ; preds = %155
  br label %501

206:                                              ; preds = %1
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %209 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %211 = call i32 @nv50_gr_construct_gene_dispatch(%struct.nvkm_grctx* %210)
  %212 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %213 = call i32 @nv50_gr_construct_gene_m2mf(%struct.nvkm_grctx* %212)
  %214 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %215 = call i32 @nv50_gr_construct_gene_unk34xx(%struct.nvkm_grctx* %214)
  %216 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %217 = call i32 @nv50_gr_construct_gene_csched(%struct.nvkm_grctx* %216)
  %218 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %219 = call i32 @nv50_gr_construct_gene_unk1cxx(%struct.nvkm_grctx* %218)
  %220 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %221 = call i32 @nv50_gr_construct_gene_strmout(%struct.nvkm_grctx* %220)
  %222 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %223 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sub nsw i32 %224, %225
  %227 = sdiv i32 %226, 8
  %228 = load i32, i32* %6, align 4
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %206
  %231 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %232 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sub nsw i32 %233, %234
  %236 = sdiv i32 %235, 8
  store i32 %236, i32* %6, align 4
  br label %237

237:                                              ; preds = %230, %206
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  %240 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %241 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %243 = call i32 @nv50_gr_construct_gene_unk10xx(%struct.nvkm_grctx* %242)
  %244 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %245 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sub nsw i32 %246, %247
  %249 = sdiv i32 %248, 8
  %250 = load i32, i32* %6, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %237
  %253 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %254 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %5, align 4
  %257 = sub nsw i32 %255, %256
  %258 = sdiv i32 %257, 8
  store i32 %258, i32* %6, align 4
  br label %259

259:                                              ; preds = %252, %237
  %260 = load i32, i32* %5, align 4
  %261 = add nsw i32 %260, 2
  %262 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %263 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  %264 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %265 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 160
  br i1 %267, label %268, label %271

268:                                              ; preds = %259
  %269 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %270 = call i32 @nv50_gr_construct_gene_unk14xx(%struct.nvkm_grctx* %269)
  br label %271

271:                                              ; preds = %268, %259
  %272 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %273 = call i32 @nv50_gr_construct_gene_unk24xx(%struct.nvkm_grctx* %272)
  %274 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %275 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sub nsw i32 %276, %277
  %279 = sdiv i32 %278, 8
  %280 = load i32, i32* %6, align 4
  %281 = icmp sgt i32 %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %271
  %283 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %284 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %5, align 4
  %287 = sub nsw i32 %285, %286
  %288 = sdiv i32 %287, 8
  store i32 %288, i32* %6, align 4
  br label %289

289:                                              ; preds = %282, %271
  %290 = load i32, i32* %5, align 4
  %291 = add nsw i32 %290, 3
  %292 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %293 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 8
  %294 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %295 = call i32 @nv50_gr_construct_gene_vfetch(%struct.nvkm_grctx* %294)
  %296 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %297 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* %5, align 4
  %300 = sub nsw i32 %298, %299
  %301 = sdiv i32 %300, 8
  %302 = load i32, i32* %6, align 4
  %303 = icmp sgt i32 %301, %302
  br i1 %303, label %304, label %311

304:                                              ; preds = %289
  %305 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %306 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %5, align 4
  %309 = sub nsw i32 %307, %308
  %310 = sdiv i32 %309, 8
  store i32 %310, i32* %6, align 4
  br label %311

311:                                              ; preds = %304, %289
  %312 = load i32, i32* %5, align 4
  %313 = add nsw i32 %312, 4
  %314 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %315 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  %316 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %317 = call i32 @nv50_gr_construct_gene_ccache(%struct.nvkm_grctx* %316)
  %318 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %319 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* %5, align 4
  %322 = sub nsw i32 %320, %321
  %323 = sdiv i32 %322, 8
  %324 = load i32, i32* %6, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %326, label %333

326:                                              ; preds = %311
  %327 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %328 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* %5, align 4
  %331 = sub nsw i32 %329, %330
  %332 = sdiv i32 %331, 8
  store i32 %332, i32* %6, align 4
  br label %333

333:                                              ; preds = %326, %311
  %334 = load i32, i32* %5, align 4
  %335 = add nsw i32 %334, 5
  %336 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %337 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %336, i32 0, i32 0
  store i32 %335, i32* %337, align 8
  %338 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %339 = call i32 @nv50_gr_construct_gene_ropm2(%struct.nvkm_grctx* %338)
  %340 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %341 = call i32 @nv50_gr_construct_gene_ropm1(%struct.nvkm_grctx* %340)
  store i32 0, i32* %4, align 4
  br label %342

342:                                              ; preds = %356, %333
  %343 = load i32, i32* %4, align 4
  %344 = icmp slt i32 %343, 8
  br i1 %344, label %345, label %359

345:                                              ; preds = %342
  %346 = load i32, i32* %7, align 4
  %347 = load i32, i32* %4, align 4
  %348 = add nsw i32 %347, 16
  %349 = shl i32 1, %348
  %350 = and i32 %346, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %345
  %353 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %354 = call i32 @nv50_gr_construct_gene_ropc(%struct.nvkm_grctx* %353)
  br label %355

355:                                              ; preds = %352, %345
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %4, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %4, align 4
  br label %342

359:                                              ; preds = %342
  %360 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %361 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* %5, align 4
  %364 = sub nsw i32 %362, %363
  %365 = sdiv i32 %364, 8
  %366 = load i32, i32* %6, align 4
  %367 = icmp sgt i32 %365, %366
  br i1 %367, label %368, label %375

368:                                              ; preds = %359
  %369 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %370 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* %5, align 4
  %373 = sub nsw i32 %371, %372
  %374 = sdiv i32 %373, 8
  store i32 %374, i32* %6, align 4
  br label %375

375:                                              ; preds = %368, %359
  %376 = load i32, i32* %5, align 4
  %377 = add nsw i32 %376, 6
  %378 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %379 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %378, i32 0, i32 0
  store i32 %377, i32* %379, align 8
  %380 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %381 = call i32 @nv50_gr_construct_gene_zcull(%struct.nvkm_grctx* %380)
  %382 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %383 = call i32 @nv50_gr_construct_gene_clipid(%struct.nvkm_grctx* %382)
  %384 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %385 = call i32 @nv50_gr_construct_gene_eng2d(%struct.nvkm_grctx* %384)
  %386 = load i32, i32* %7, align 4
  %387 = and i32 %386, 1
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %375
  %390 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %391 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %390)
  br label %392

392:                                              ; preds = %389, %375
  %393 = load i32, i32* %7, align 4
  %394 = and i32 %393, 2
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %392
  %397 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %398 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %397)
  br label %399

399:                                              ; preds = %396, %392
  %400 = load i32, i32* %7, align 4
  %401 = and i32 %400, 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  %404 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %405 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %404)
  br label %406

406:                                              ; preds = %403, %399
  %407 = load i32, i32* %7, align 4
  %408 = and i32 %407, 8
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %406
  %411 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %412 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %411)
  br label %413

413:                                              ; preds = %410, %406
  %414 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %415 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* %5, align 4
  %418 = sub nsw i32 %416, %417
  %419 = sdiv i32 %418, 8
  %420 = load i32, i32* %6, align 4
  %421 = icmp sgt i32 %419, %420
  br i1 %421, label %422, label %429

422:                                              ; preds = %413
  %423 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %424 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* %5, align 4
  %427 = sub nsw i32 %425, %426
  %428 = sdiv i32 %427, 8
  store i32 %428, i32* %6, align 4
  br label %429

429:                                              ; preds = %422, %413
  %430 = load i32, i32* %5, align 4
  %431 = add nsw i32 %430, 7
  %432 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %433 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %432, i32 0, i32 0
  store i32 %431, i32* %433, align 8
  %434 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %435 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = icmp eq i32 %436, 160
  br i1 %437, label %438, label %481

438:                                              ; preds = %429
  %439 = load i32, i32* %7, align 4
  %440 = and i32 %439, 16
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %438
  %443 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %444 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %443)
  br label %445

445:                                              ; preds = %442, %438
  %446 = load i32, i32* %7, align 4
  %447 = and i32 %446, 32
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %445
  %450 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %451 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %450)
  br label %452

452:                                              ; preds = %449, %445
  %453 = load i32, i32* %7, align 4
  %454 = and i32 %453, 64
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %459

456:                                              ; preds = %452
  %457 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %458 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %457)
  br label %459

459:                                              ; preds = %456, %452
  %460 = load i32, i32* %7, align 4
  %461 = and i32 %460, 128
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %459
  %464 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %465 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %464)
  br label %466

466:                                              ; preds = %463, %459
  %467 = load i32, i32* %7, align 4
  %468 = and i32 %467, 256
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %466
  %471 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %472 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %471)
  br label %473

473:                                              ; preds = %470, %466
  %474 = load i32, i32* %7, align 4
  %475 = and i32 %474, 512
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %480

477:                                              ; preds = %473
  %478 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %479 = call i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx* %478)
  br label %480

480:                                              ; preds = %477, %473
  br label %484

481:                                              ; preds = %429
  %482 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %483 = call i32 @nv50_gr_construct_gene_unk14xx(%struct.nvkm_grctx* %482)
  br label %484

484:                                              ; preds = %481, %480
  %485 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %486 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* %5, align 4
  %489 = sub nsw i32 %487, %488
  %490 = sdiv i32 %489, 8
  %491 = load i32, i32* %6, align 4
  %492 = icmp sgt i32 %490, %491
  br i1 %492, label %493, label %500

493:                                              ; preds = %484
  %494 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %495 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* %5, align 4
  %498 = sub nsw i32 %496, %497
  %499 = sdiv i32 %498, 8
  store i32 %499, i32* %6, align 4
  br label %500

500:                                              ; preds = %493, %484
  br label %501

501:                                              ; preds = %500, %205
  %502 = load i32, i32* %5, align 4
  %503 = load i32, i32* %6, align 4
  %504 = mul nsw i32 %503, 8
  %505 = add nsw i32 %502, %504
  %506 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %507 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %506, i32 0, i32 0
  store i32 %505, i32* %507, align 8
  %508 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %509 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = add nsw i32 %510, 63
  %512 = and i32 %511, -64
  %513 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %514 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %513, i32 0, i32 0
  store i32 %512, i32* %514, align 8
  %515 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %516 = load i32, i32* %5, align 4
  %517 = call i32 @cp_lsr(%struct.nvkm_grctx* %515, i32 %516)
  %518 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %519 = load i32, i32* @CP_SET_XFER_POINTER, align 4
  %520 = call i32 @cp_out(%struct.nvkm_grctx* %518, i32 %519)
  %521 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %522 = load i32, i32* %6, align 4
  %523 = call i32 @cp_lsr(%struct.nvkm_grctx* %521, i32 %522)
  %524 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %525 = load i32, i32* @CP_SEEK_1, align 4
  %526 = call i32 @cp_out(%struct.nvkm_grctx* %524, i32 %525)
  %527 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %528 = load i32, i32* @CP_XFER_1, align 4
  %529 = call i32 @cp_out(%struct.nvkm_grctx* %527, i32 %528)
  %530 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %531 = load i32, i32* @XFER, align 4
  %532 = load i32, i32* @BUSY, align 4
  %533 = call i32 @cp_wait(%struct.nvkm_grctx* %530, i32 %531, i32 %532)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nv50_gr_construct_gene_dispatch(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_m2mf(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_unk24xx(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_clipid(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_zcull(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_vfetch(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_eng2d(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_csched(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_ropm1(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_ropm2(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_ccache(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_unk1cxx(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_strmout(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_unk14xx(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_unk10xx(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_unk34xx(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_gene_ropc(%struct.nvkm_grctx*) #1

declare dso_local i32 @nv50_gr_construct_xfer_tp(%struct.nvkm_grctx*) #1

declare dso_local i32 @cp_lsr(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @cp_out(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @cp_wait(%struct.nvkm_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
