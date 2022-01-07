; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_mg_phy_ddi_vswing_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_mg_phy_ddi_vswing_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_mg_phy_ddi_buf_trans = type { i32, i32, i32 }
%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@icl_mg_phy_ddi_translations = common dso_local global %struct.icl_mg_phy_ddi_buf_trans* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"DDI translation not found for level %d. Using %d instead.\00", align 1
@CRI_USE_FS32 = common dso_local global i32 0, align 4
@CRI_TXDEEMPH_OVERRIDE_17_12_MASK = common dso_local global i32 0, align 4
@CRI_TXDEEMPH_OVERRIDE_11_6_MASK = common dso_local global i32 0, align 4
@CRI_TXDEEMPH_OVERRIDE_5_0_MASK = common dso_local global i32 0, align 4
@CRI_TXDEEMPH_OVERRIDE_EN = common dso_local global i32 0, align 4
@CFG_LOW_RATE_LKREN_EN = common dso_local global i32 0, align 4
@CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK = common dso_local global i32 0, align 4
@CFG_AMI_CK_DIV_OVERRIDE_EN = common dso_local global i32 0, align 4
@CRI_CALCINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32, i32)* @icl_mg_phy_ddi_vswing_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_mg_phy_ddi_vswing_sequence(%struct.intel_encoder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.icl_mg_phy_ddi_buf_trans*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %7, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.icl_mg_phy_ddi_buf_trans*, %struct.icl_mg_phy_ddi_buf_trans** @icl_mg_phy_ddi_translations, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.icl_mg_phy_ddi_buf_trans* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.icl_mg_phy_ddi_buf_trans*, %struct.icl_mg_phy_ddi_buf_trans** @icl_mg_phy_ddi_translations, align 8
  store %struct.icl_mg_phy_ddi_buf_trans* %23, %struct.icl_mg_phy_ddi_buf_trans** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %40

33:                                               ; preds = %30, %27, %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 2
  %37 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 2
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %33, %30
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %71, %40
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %74

44:                                               ; preds = %41
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @MG_TX1_LINK_PARAMS(i32 %45, i32 %46)
  %48 = call i32 @I915_READ(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @CRI_USE_FS32, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @MG_TX1_LINK_PARAMS(i32 %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @I915_WRITE(i32 %55, i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @MG_TX2_LINK_PARAMS(i32 %58, i32 %59)
  %61 = call i32 @I915_READ(i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @CRI_USE_FS32, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @MG_TX2_LINK_PARAMS(i32 %66, i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @I915_WRITE(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %44
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %41

74:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %123, %74
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %126

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @MG_TX1_SWINGCTRL(i32 %79, i32 %80)
  %82 = call i32 @I915_READ(i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* @CRI_TXDEEMPH_OVERRIDE_17_12_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load %struct.icl_mg_phy_ddi_buf_trans*, %struct.icl_mg_phy_ddi_buf_trans** %9, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %87, i64 %89
  %91 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @CRI_TXDEEMPH_OVERRIDE_17_12(i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @MG_TX1_SWINGCTRL(i32 %96, i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @I915_WRITE(i32 %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @MG_TX2_SWINGCTRL(i32 %101, i32 %102)
  %104 = call i32 @I915_READ(i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* @CRI_TXDEEMPH_OVERRIDE_17_12_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %11, align 4
  %109 = load %struct.icl_mg_phy_ddi_buf_trans*, %struct.icl_mg_phy_ddi_buf_trans** %9, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %109, i64 %111
  %113 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @CRI_TXDEEMPH_OVERRIDE_17_12(i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @MG_TX2_SWINGCTRL(i32 %118, i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @I915_WRITE(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %78
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %75

126:                                              ; preds = %75
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %199, %126
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %202

130:                                              ; preds = %127
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @MG_TX1_DRVCTRL(i32 %131, i32 %132)
  %134 = call i32 @I915_READ(i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* @CRI_TXDEEMPH_OVERRIDE_11_6_MASK, align 4
  %136 = load i32, i32* @CRI_TXDEEMPH_OVERRIDE_5_0_MASK, align 4
  %137 = or i32 %135, %136
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %11, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %11, align 4
  %141 = load %struct.icl_mg_phy_ddi_buf_trans*, %struct.icl_mg_phy_ddi_buf_trans** %9, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %141, i64 %143
  %145 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @CRI_TXDEEMPH_OVERRIDE_5_0(i32 %146)
  %148 = load %struct.icl_mg_phy_ddi_buf_trans*, %struct.icl_mg_phy_ddi_buf_trans** %9, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %148, i64 %150
  %152 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @CRI_TXDEEMPH_OVERRIDE_11_6(i32 %153)
  %155 = or i32 %147, %154
  %156 = load i32, i32* @CRI_TXDEEMPH_OVERRIDE_EN, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %11, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @MG_TX1_DRVCTRL(i32 %160, i32 %161)
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @I915_WRITE(i32 %162, i32 %163)
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @MG_TX2_DRVCTRL(i32 %165, i32 %166)
  %168 = call i32 @I915_READ(i32 %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* @CRI_TXDEEMPH_OVERRIDE_11_6_MASK, align 4
  %170 = load i32, i32* @CRI_TXDEEMPH_OVERRIDE_5_0_MASK, align 4
  %171 = or i32 %169, %170
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %11, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %11, align 4
  %175 = load %struct.icl_mg_phy_ddi_buf_trans*, %struct.icl_mg_phy_ddi_buf_trans** %9, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %175, i64 %177
  %179 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @CRI_TXDEEMPH_OVERRIDE_5_0(i32 %180)
  %182 = load %struct.icl_mg_phy_ddi_buf_trans*, %struct.icl_mg_phy_ddi_buf_trans** %9, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %182, i64 %184
  %186 = getelementptr inbounds %struct.icl_mg_phy_ddi_buf_trans, %struct.icl_mg_phy_ddi_buf_trans* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @CRI_TXDEEMPH_OVERRIDE_11_6(i32 %187)
  %189 = or i32 %181, %188
  %190 = load i32, i32* @CRI_TXDEEMPH_OVERRIDE_EN, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* %11, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @MG_TX2_DRVCTRL(i32 %194, i32 %195)
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @I915_WRITE(i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %130
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  br label %127

202:                                              ; preds = %127
  store i32 0, i32* %12, align 4
  br label %203

203:                                              ; preds = %228, %202
  %204 = load i32, i32* %12, align 4
  %205 = icmp slt i32 %204, 2
  br i1 %205, label %206, label %231

206:                                              ; preds = %203
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @MG_CLKHUB(i32 %207, i32 %208)
  %210 = call i32 @I915_READ(i32 %209)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %5, align 4
  %212 = icmp slt i32 %211, 300000
  br i1 %212, label %213, label %217

213:                                              ; preds = %206
  %214 = load i32, i32* @CFG_LOW_RATE_LKREN_EN, align 4
  %215 = load i32, i32* %11, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %11, align 4
  br label %222

217:                                              ; preds = %206
  %218 = load i32, i32* @CFG_LOW_RATE_LKREN_EN, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %11, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %217, %213
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @MG_CLKHUB(i32 %223, i32 %224)
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @I915_WRITE(i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %222
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %203

231:                                              ; preds = %203
  store i32 0, i32* %12, align 4
  br label %232

232:                                              ; preds = %290, %231
  %233 = load i32, i32* %12, align 4
  %234 = icmp slt i32 %233, 2
  br i1 %234, label %235, label %293

235:                                              ; preds = %232
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @MG_TX1_DCC(i32 %236, i32 %237)
  %239 = call i32 @I915_READ(i32 %238)
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* @CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK, align 4
  %241 = xor i32 %240, -1
  %242 = load i32, i32* %11, align 4
  %243 = and i32 %242, %241
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %5, align 4
  %245 = icmp sle i32 %244, 500000
  br i1 %245, label %246, label %251

246:                                              ; preds = %235
  %247 = load i32, i32* @CFG_AMI_CK_DIV_OVERRIDE_EN, align 4
  %248 = xor i32 %247, -1
  %249 = load i32, i32* %11, align 4
  %250 = and i32 %249, %248
  store i32 %250, i32* %11, align 4
  br label %257

251:                                              ; preds = %235
  %252 = load i32, i32* @CFG_AMI_CK_DIV_OVERRIDE_EN, align 4
  %253 = call i32 @CFG_AMI_CK_DIV_OVERRIDE_VAL(i32 1)
  %254 = or i32 %252, %253
  %255 = load i32, i32* %11, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %11, align 4
  br label %257

257:                                              ; preds = %251, %246
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* %8, align 4
  %260 = call i32 @MG_TX1_DCC(i32 %258, i32 %259)
  %261 = load i32, i32* %11, align 4
  %262 = call i32 @I915_WRITE(i32 %260, i32 %261)
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @MG_TX2_DCC(i32 %263, i32 %264)
  %266 = call i32 @I915_READ(i32 %265)
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* @CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK, align 4
  %268 = xor i32 %267, -1
  %269 = load i32, i32* %11, align 4
  %270 = and i32 %269, %268
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %5, align 4
  %272 = icmp sle i32 %271, 500000
  br i1 %272, label %273, label %278

273:                                              ; preds = %257
  %274 = load i32, i32* @CFG_AMI_CK_DIV_OVERRIDE_EN, align 4
  %275 = xor i32 %274, -1
  %276 = load i32, i32* %11, align 4
  %277 = and i32 %276, %275
  store i32 %277, i32* %11, align 4
  br label %284

278:                                              ; preds = %257
  %279 = load i32, i32* @CFG_AMI_CK_DIV_OVERRIDE_EN, align 4
  %280 = call i32 @CFG_AMI_CK_DIV_OVERRIDE_VAL(i32 1)
  %281 = or i32 %279, %280
  %282 = load i32, i32* %11, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %11, align 4
  br label %284

284:                                              ; preds = %278, %273
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %8, align 4
  %287 = call i32 @MG_TX2_DCC(i32 %285, i32 %286)
  %288 = load i32, i32* %11, align 4
  %289 = call i32 @I915_WRITE(i32 %287, i32 %288)
  br label %290

290:                                              ; preds = %284
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %12, align 4
  br label %232

293:                                              ; preds = %232
  store i32 0, i32* %12, align 4
  br label %294

294:                                              ; preds = %322, %293
  %295 = load i32, i32* %12, align 4
  %296 = icmp slt i32 %295, 2
  br i1 %296, label %297, label %325

297:                                              ; preds = %294
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* %8, align 4
  %300 = call i32 @MG_TX1_PISO_READLOAD(i32 %298, i32 %299)
  %301 = call i32 @I915_READ(i32 %300)
  store i32 %301, i32* %11, align 4
  %302 = load i32, i32* @CRI_CALCINIT, align 4
  %303 = load i32, i32* %11, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %11, align 4
  %305 = load i32, i32* %12, align 4
  %306 = load i32, i32* %8, align 4
  %307 = call i32 @MG_TX1_PISO_READLOAD(i32 %305, i32 %306)
  %308 = load i32, i32* %11, align 4
  %309 = call i32 @I915_WRITE(i32 %307, i32 %308)
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* %8, align 4
  %312 = call i32 @MG_TX2_PISO_READLOAD(i32 %310, i32 %311)
  %313 = call i32 @I915_READ(i32 %312)
  store i32 %313, i32* %11, align 4
  %314 = load i32, i32* @CRI_CALCINIT, align 4
  %315 = load i32, i32* %11, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %11, align 4
  %317 = load i32, i32* %12, align 4
  %318 = load i32, i32* %8, align 4
  %319 = call i32 @MG_TX2_PISO_READLOAD(i32 %317, i32 %318)
  %320 = load i32, i32* %11, align 4
  %321 = call i32 @I915_WRITE(i32 %319, i32 %320)
  br label %322

322:                                              ; preds = %297
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %12, align 4
  br label %294

325:                                              ; preds = %294
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.icl_mg_phy_ddi_buf_trans*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @MG_TX1_LINK_PARAMS(i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @MG_TX2_LINK_PARAMS(i32, i32) #1

declare dso_local i32 @MG_TX1_SWINGCTRL(i32, i32) #1

declare dso_local i32 @CRI_TXDEEMPH_OVERRIDE_17_12(i32) #1

declare dso_local i32 @MG_TX2_SWINGCTRL(i32, i32) #1

declare dso_local i32 @MG_TX1_DRVCTRL(i32, i32) #1

declare dso_local i32 @CRI_TXDEEMPH_OVERRIDE_5_0(i32) #1

declare dso_local i32 @CRI_TXDEEMPH_OVERRIDE_11_6(i32) #1

declare dso_local i32 @MG_TX2_DRVCTRL(i32, i32) #1

declare dso_local i32 @MG_CLKHUB(i32, i32) #1

declare dso_local i32 @MG_TX1_DCC(i32, i32) #1

declare dso_local i32 @CFG_AMI_CK_DIV_OVERRIDE_VAL(i32) #1

declare dso_local i32 @MG_TX2_DCC(i32, i32) #1

declare dso_local i32 @MG_TX1_PISO_READLOAD(i32, i32) #1

declare dso_local i32 @MG_TX2_PISO_READLOAD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
