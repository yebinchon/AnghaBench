; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f15_m30h_match_to_this_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f15_m30h_match_to_this_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRAM_CONT_BASE = common dso_local global i64 0, align 8
@DRAM_CONT_LIMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"(range %d) SystemAddr= 0x%llx Limit=0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Huh? Address is in the MMIO hole: 0x%016llx\0A\00", align 1
@DRAM_CONT_HIGH_OFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"   Normalized DCT addr: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32, i32, i32*)* @f15_m30h_match_to_this_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f15_m30h_match_to_this_node(%struct.amd64_pvt* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %30 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %31 = call i32 @f10_dhar_offset(%struct.amd64_pvt* %30)
  store i32 %31, i32* %24, align 4
  %32 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %33 = call i32 @dct_sel_interleave_addr(%struct.amd64_pvt* %32)
  store i32 %33, i32* %25, align 4
  %34 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dram_dst_node(%struct.amd64_pvt* %34, i32 %35)
  store i32 %36, i32* %26, align 4
  %37 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dram_intlv_en(%struct.amd64_pvt* %37, i32 %38)
  store i32 %39, i32* %27, align 4
  %40 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %41 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @DRAM_CONT_BASE, align 8
  %44 = call i32 @amd64_read_pci_cfg(i32 %42, i64 %43, i32* %16)
  %45 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %46 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @DRAM_CONT_LIMIT, align 8
  %49 = call i32 @amd64_read_pci_cfg(i32 %47, i64 %48, i32* %17)
  %50 = load i32, i32* %16, align 4
  %51 = ashr i32 %50, 3
  %52 = call i32 @BIT(i32 0)
  %53 = and i32 %51, %52
  store i32 %53, i32* %23, align 4
  %54 = load i32, i32* %16, align 4
  %55 = ashr i32 %54, 4
  %56 = and i32 %55, 7
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @get_dram_limit(%struct.amd64_pvt* %59, i32 %60)
  %62 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %61)
  %63 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @get_dram_base(%struct.amd64_pvt* %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %77, label %68

68:                                               ; preds = %4
  %69 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @get_dram_limit(%struct.amd64_pvt* %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %274

77:                                               ; preds = %68, %4
  %78 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %79 = call i64 @dhar_valid(%struct.amd64_pvt* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %83 = call i32 @dhar_base(%struct.amd64_pvt* %82)
  %84 = load i32, i32* %8, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @BIT_64(i32 32)
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @amd64_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %274

95:                                               ; preds = %86, %81, %77
  %96 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %97 = call i64 @dct_sel_baseaddr(%struct.amd64_pvt* %96)
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %17, align 4
  %100 = ashr i32 %99, 11
  %101 = and i32 %100, 8191
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @BIT(i32 0)
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %8, align 4
  %109 = ashr i32 %108, 27
  %110 = icmp sle i32 %107, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 27
  %115 = icmp sge i32 %112, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %111, %106
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %274

119:                                              ; preds = %111, %95
  %120 = load i32, i32* %27, align 4
  %121 = call i64 @hweight8(i32 %120)
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = srem i32 %123, 2
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* %11, align 4
  %128 = icmp sgt i32 %127, 4
  br i1 %128, label %129, label %132

129:                                              ; preds = %126, %119
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %274

132:                                              ; preds = %126
  %133 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %134 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sge i32 %135, 96
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %27, align 4
  %141 = call i32 @f1x_determine_channel(%struct.amd64_pvt* %138, i32 %139, i32 0, i32 %140)
  store i32 %141, i32* %19, align 4
  br label %149

142:                                              ; preds = %132
  %143 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %27, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %22, align 4
  %148 = call i32 @f15_m30h_determine_channel(%struct.amd64_pvt* %143, i32 %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %19, align 4
  br label %149

149:                                              ; preds = %142, %137
  %150 = load i32, i32* %19, align 4
  %151 = icmp sgt i32 %150, 3
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %5, align 4
  br label %274

155:                                              ; preds = %149
  %156 = load i32, i32* %16, align 4
  %157 = ashr i32 %156, 1
  %158 = call i32 @BIT(i32 0)
  %159 = and i32 %157, %158
  store i32 %159, i32* %21, align 4
  %160 = load i32, i32* %21, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @BIT_64(i32 32)
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* %24, align 4
  store i32 %167, i32* %13, align 4
  br label %171

168:                                              ; preds = %162, %155
  %169 = load i32, i32* %14, align 4
  %170 = shl i32 %169, 27
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %168, %166
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %13, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %177, label %202

177:                                              ; preds = %171
  %178 = load i32, i32* %25, align 4
  %179 = icmp eq i32 %178, 4
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i32, i32* %12, align 4
  %182 = ashr i32 %181, 9
  %183 = shl i32 %182, 8
  %184 = load i32, i32* %12, align 4
  %185 = and i32 %184, 255
  %186 = or i32 %183, %185
  store i32 %186, i32* %12, align 4
  br label %201

187:                                              ; preds = %177
  %188 = load i32, i32* %25, align 4
  %189 = icmp eq i32 %188, 5
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load i32, i32* %12, align 4
  %192 = ashr i32 %191, 10
  %193 = shl i32 %192, 9
  %194 = load i32, i32* %12, align 4
  %195 = and i32 %194, 511
  %196 = or i32 %193, %195
  store i32 %196, i32* %12, align 4
  br label %200

197:                                              ; preds = %187
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %5, align 4
  br label %274

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %200, %180
  br label %231

202:                                              ; preds = %171
  %203 = load i32, i32* %11, align 4
  %204 = icmp eq i32 %203, 4
  br i1 %204, label %205, label %230

205:                                              ; preds = %202
  %206 = load i32, i32* %25, align 4
  %207 = icmp eq i32 %206, 4
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load i32, i32* %12, align 4
  %210 = ashr i32 %209, 10
  %211 = shl i32 %210, 8
  %212 = load i32, i32* %12, align 4
  %213 = and i32 %212, 255
  %214 = or i32 %211, %213
  store i32 %214, i32* %12, align 4
  br label %229

215:                                              ; preds = %205
  %216 = load i32, i32* %25, align 4
  %217 = icmp eq i32 %216, 5
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load i32, i32* %12, align 4
  %220 = ashr i32 %219, 11
  %221 = shl i32 %220, 9
  %222 = load i32, i32* %12, align 4
  %223 = and i32 %222, 511
  %224 = or i32 %221, %223
  store i32 %224, i32* %12, align 4
  br label %228

225:                                              ; preds = %215
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %5, align 4
  br label %274

228:                                              ; preds = %218
  br label %229

229:                                              ; preds = %228, %208
  br label %230

230:                                              ; preds = %229, %202
  br label %231

231:                                              ; preds = %230, %201
  %232 = load i32, i32* %23, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %231
  %235 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %236 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i64, i64* @DRAM_CONT_HIGH_OFF, align 8
  %239 = load i32, i32* %19, align 4
  %240 = mul nsw i32 %239, 4
  %241 = sext i32 %240 to i64
  %242 = add nsw i64 %238, %241
  %243 = call i32 @amd64_read_pci_cfg(i32 %237, i64 %242, i32* %18)
  %244 = load i32, i32* %18, align 4
  %245 = ashr i32 %244, 11
  %246 = and i32 %245, 4095
  %247 = shl i32 %246, 27
  %248 = load i32, i32* %12, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %12, align 4
  br label %250

250:                                              ; preds = %234, %231
  %251 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %252 = load i32, i32* %19, align 4
  %253 = call i32 @f15h_select_dct(%struct.amd64_pvt* %251, i32 %252)
  %254 = load i32, i32* %12, align 4
  %255 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* %19, align 4
  %257 = icmp eq i32 %256, 3
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  br label %261

259:                                              ; preds = %250
  %260 = load i32, i32* %19, align 4
  br label %261

261:                                              ; preds = %259, %258
  %262 = phi i32 [ 1, %258 ], [ %260, %259 ]
  store i32 %262, i32* %20, align 4
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %26, align 4
  %265 = load i32, i32* %20, align 4
  %266 = call i32 @f1x_lookup_addr_in_dct(i32 %263, i32 %264, i32 %265)
  store i32 %266, i32* %10, align 4
  %267 = load i32, i32* %10, align 4
  %268 = icmp sge i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %261
  %270 = load i32, i32* %20, align 4
  %271 = load i32*, i32** %9, align 8
  store i32 %270, i32* %271, align 4
  br label %272

272:                                              ; preds = %269, %261
  %273 = load i32, i32* %10, align 4
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %272, %225, %197, %152, %129, %116, %90, %74
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local i32 @f10_dhar_offset(%struct.amd64_pvt*) #1

declare dso_local i32 @dct_sel_interleave_addr(%struct.amd64_pvt*) #1

declare dso_local i32 @dram_dst_node(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dram_intlv_en(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @amd64_read_pci_cfg(i32, i64, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @get_dram_limit(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @get_dram_base(%struct.amd64_pvt*, i32) #1

declare dso_local i64 @dhar_valid(%struct.amd64_pvt*) #1

declare dso_local i32 @dhar_base(%struct.amd64_pvt*) #1

declare dso_local i32 @BIT_64(i32) #1

declare dso_local i32 @amd64_warn(i8*, i32) #1

declare dso_local i64 @dct_sel_baseaddr(%struct.amd64_pvt*) #1

declare dso_local i64 @hweight8(i32) #1

declare dso_local i32 @f1x_determine_channel(%struct.amd64_pvt*, i32, i32, i32) #1

declare dso_local i32 @f15_m30h_determine_channel(%struct.amd64_pvt*, i32, i32, i32, i32) #1

declare dso_local i32 @f15h_select_dct(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @f1x_lookup_addr_in_dct(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
