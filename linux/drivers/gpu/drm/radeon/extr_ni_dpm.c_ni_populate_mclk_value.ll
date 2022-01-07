; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_mclk_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_mclk_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_power_info = type { i64, i64 }
%struct.ni_power_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_clock_dividers = type { i32, i32, i32, i32, i64 }
%struct.radeon_atom_ss = type { i32, i32 }

@COMPUTE_MEMORY_PLL_PARAM = common dso_local global i32 0, align 4
@MC_SEQ_MISC7 = common dso_local global i32 0, align 4
@CLKR_MASK = common dso_local global i32 0, align 4
@YCLK_POST_DIV_MASK = common dso_local global i32 0, align 4
@CLKF_MASK = common dso_local global i32 0, align 4
@CLKFRAC_MASK = common dso_local global i32 0, align 4
@IBIAS_MASK = common dso_local global i32 0, align 4
@VCO_MODE = common dso_local global i32 0, align 4
@PDNB = common dso_local global i32 0, align 4
@ASIC_INTERNAL_MEMORY_SS = common dso_local global i32 0, align 4
@CLKV_MASK = common dso_local global i32 0, align 4
@CLKS_MASK = common dso_local global i32 0, align 4
@DLL_SPEED_MASK = common dso_local global i32 0, align 4
@MRDCKA0_PDNB = common dso_local global i32 0, align 4
@MRDCKA1_PDNB = common dso_local global i32 0, align 4
@MRDCKB0_PDNB = common dso_local global i32 0, align 4
@MRDCKB1_PDNB = common dso_local global i32 0, align 4
@MRDCKC0_PDNB = common dso_local global i32 0, align 4
@MRDCKC1_PDNB = common dso_local global i32 0, align 4
@MRDCKD0_PDNB = common dso_local global i32 0, align 4
@MRDCKD1_PDNB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, %struct.TYPE_9__*, i32, i32)* @ni_populate_mclk_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_populate_mclk_value(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.TYPE_9__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rv7xx_power_info*, align 8
  %15 = alloca %struct.ni_power_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.atom_clock_dividers, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.radeon_atom_ss, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %36 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %35)
  store %struct.rv7xx_power_info* %36, %struct.rv7xx_power_info** %14, align 8
  %37 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %38 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %37)
  store %struct.ni_power_info* %38, %struct.ni_power_info** %15, align 8
  %39 = load %struct.ni_power_info*, %struct.ni_power_info** %15, align 8
  %40 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  %43 = load %struct.ni_power_info*, %struct.ni_power_info** %15, align 8
  %44 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %17, align 4
  %47 = load %struct.ni_power_info*, %struct.ni_power_info** %15, align 8
  %48 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %18, align 4
  %51 = load %struct.ni_power_info*, %struct.ni_power_info** %15, align 8
  %52 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %19, align 4
  %55 = load %struct.ni_power_info*, %struct.ni_power_info** %15, align 8
  %56 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %20, align 4
  %59 = load %struct.ni_power_info*, %struct.ni_power_info** %15, align 8
  %60 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %21, align 4
  %63 = load %struct.ni_power_info*, %struct.ni_power_info** %15, align 8
  %64 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %22, align 4
  %67 = load %struct.ni_power_info*, %struct.ni_power_info** %15, align 8
  %68 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %23, align 4
  %71 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %72 = load i32, i32* @COMPUTE_MEMORY_PLL_PARAM, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %71, i32 %72, i32 %73, i32 %74, %struct.atom_clock_dividers* %24)
  store i32 %75, i32* %27, align 4
  %76 = load i32, i32* %27, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %6
  %79 = load i32, i32* %27, align 4
  store i32 %79, i32* %7, align 4
  br label %363

80:                                               ; preds = %6
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* @MC_SEQ_MISC7, align 4
  %85 = call i32 @RREG32(i32 %84)
  store i32 %85, i32* %28, align 4
  %86 = load i32, i32* %28, align 4
  %87 = and i32 %86, 134217728
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 0
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %89, %83
  br label %92

92:                                               ; preds = %91, %80
  %93 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %94 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cypress_map_clkf_to_ibias(%struct.radeon_device* %93, i32 %95)
  store i32 %96, i32* %25, align 4
  %97 = load i32, i32* @CLKR_MASK, align 4
  %98 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @CLKF_MASK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @CLKFRAC_MASK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @IBIAS_MASK, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %16, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %16, align 4
  %109 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @CLKR(i32 %110)
  %112 = load i32, i32* %16, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %16, align 4
  %114 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @YCLK_POST_DIV(i32 %115)
  %117 = load i32, i32* %16, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %16, align 4
  %119 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @CLKF(i32 %120)
  %122 = load i32, i32* %16, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %16, align 4
  %124 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @CLKFRAC(i32 %125)
  %127 = load i32, i32* %16, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %25, align 4
  %130 = call i32 @IBIAS(i32 %129)
  %131 = load i32, i32* %16, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %16, align 4
  %133 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %92
  %137 = load i32, i32* @VCO_MODE, align 4
  %138 = load i32, i32* %17, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %17, align 4
  br label %145

140:                                              ; preds = %92
  %141 = load i32, i32* @VCO_MODE, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %17, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %17, align 4
  br label %145

145:                                              ; preds = %140, %136
  %146 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %147 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %212

150:                                              ; preds = %145
  %151 = load i32, i32* @CLKR_MASK, align 4
  %152 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @CLKF_MASK, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @CLKFRAC_MASK, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @IBIAS_MASK, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %18, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %18, align 4
  %163 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @CLKR(i32 %164)
  %166 = load i32, i32* %18, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %18, align 4
  %168 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @YCLK_POST_DIV(i32 %169)
  %171 = load i32, i32* %18, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %18, align 4
  %173 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @CLKF(i32 %174)
  %176 = load i32, i32* %18, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %18, align 4
  %178 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @CLKFRAC(i32 %179)
  %181 = load i32, i32* %18, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %25, align 4
  %184 = call i32 @IBIAS(i32 %183)
  %185 = load i32, i32* %18, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %150
  %190 = load i32, i32* @PDNB, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %18, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %18, align 4
  br label %198

194:                                              ; preds = %150
  %195 = load i32, i32* @PDNB, align 4
  %196 = load i32, i32* %18, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %18, align 4
  br label %198

198:                                              ; preds = %194, %189
  %199 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32, i32* @VCO_MODE, align 4
  %204 = load i32, i32* %19, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %19, align 4
  br label %211

206:                                              ; preds = %198
  %207 = load i32, i32* @VCO_MODE, align 4
  %208 = xor i32 %207, -1
  %209 = load i32, i32* %19, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %19, align 4
  br label %211

211:                                              ; preds = %206, %202
  br label %212

212:                                              ; preds = %211, %145
  %213 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %214 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %273

217:                                              ; preds = %212
  %218 = load i32, i32* %10, align 4
  %219 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = mul nsw i32 %218, %220
  store i32 %221, i32* %30, align 4
  %222 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %223 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %224 = load i32, i32* %30, align 4
  %225 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %222, %struct.radeon_atom_ss* %29, i32 %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %272

227:                                              ; preds = %217
  %228 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %229 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %31, align 4
  %233 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @rv740_get_decoded_reference_divider(i32 %234)
  store i32 %235, i32* %32, align 4
  %236 = load i32, i32* %31, align 4
  %237 = mul nsw i32 %236, 5
  %238 = load i32, i32* %32, align 4
  %239 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %29, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 %238, %240
  %242 = sdiv i32 %237, %241
  store i32 %242, i32* %33, align 4
  %243 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %29, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 16384, %246
  %248 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %24, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = mul nsw i32 2048, %249
  %251 = add nsw i32 %247, %250
  %252 = mul nsw i32 %244, %251
  %253 = load i32, i32* %33, align 4
  %254 = mul nsw i32 %253, 625
  %255 = sdiv i32 %252, %254
  store i32 %255, i32* %34, align 4
  %256 = load i32, i32* @CLKV_MASK, align 4
  %257 = xor i32 %256, -1
  %258 = load i32, i32* %22, align 4
  %259 = and i32 %258, %257
  store i32 %259, i32* %22, align 4
  %260 = load i32, i32* %34, align 4
  %261 = call i32 @CLKV(i32 %260)
  %262 = load i32, i32* %22, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %22, align 4
  %264 = load i32, i32* @CLKS_MASK, align 4
  %265 = xor i32 %264, -1
  %266 = load i32, i32* %23, align 4
  %267 = and i32 %266, %265
  store i32 %267, i32* %23, align 4
  %268 = load i32, i32* %33, align 4
  %269 = call i32 @CLKS(i32 %268)
  %270 = load i32, i32* %23, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %23, align 4
  br label %272

272:                                              ; preds = %227, %217
  br label %273

273:                                              ; preds = %272, %212
  %274 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %275 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i32, i32* %10, align 4
  %278 = call i32 @rv740_get_dll_speed(i64 %276, i32 %277)
  store i32 %278, i32* %26, align 4
  %279 = load i32, i32* @DLL_SPEED_MASK, align 4
  %280 = xor i32 %279, -1
  %281 = load i32, i32* %20, align 4
  %282 = and i32 %281, %280
  store i32 %282, i32* %20, align 4
  %283 = load i32, i32* %26, align 4
  %284 = call i32 @DLL_SPEED(i32 %283)
  %285 = load i32, i32* %20, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %20, align 4
  %287 = load i32, i32* %13, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %307

289:                                              ; preds = %273
  %290 = load i32, i32* @MRDCKA0_PDNB, align 4
  %291 = load i32, i32* @MRDCKA1_PDNB, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* @MRDCKB0_PDNB, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @MRDCKB1_PDNB, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* @MRDCKC0_PDNB, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* @MRDCKC1_PDNB, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* @MRDCKD0_PDNB, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @MRDCKD1_PDNB, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* %20, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %20, align 4
  br label %326

307:                                              ; preds = %273
  %308 = load i32, i32* @MRDCKA0_PDNB, align 4
  %309 = load i32, i32* @MRDCKA1_PDNB, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @MRDCKB0_PDNB, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* @MRDCKB1_PDNB, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* @MRDCKC0_PDNB, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @MRDCKC1_PDNB, align 4
  %318 = or i32 %316, %317
  %319 = load i32, i32* @MRDCKD0_PDNB, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @MRDCKD1_PDNB, align 4
  %322 = or i32 %320, %321
  %323 = xor i32 %322, -1
  %324 = load i32, i32* %20, align 4
  %325 = and i32 %324, %323
  store i32 %325, i32* %20, align 4
  br label %326

326:                                              ; preds = %307, %289
  %327 = load i32, i32* %10, align 4
  %328 = call i8* @cpu_to_be32(i32 %327)
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 8
  store i8* %328, i8** %330, align 8
  %331 = load i32, i32* %16, align 4
  %332 = call i8* @cpu_to_be32(i32 %331)
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 7
  store i8* %332, i8** %334, align 8
  %335 = load i32, i32* %17, align 4
  %336 = call i8* @cpu_to_be32(i32 %335)
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 6
  store i8* %336, i8** %338, align 8
  %339 = load i32, i32* %18, align 4
  %340 = call i8* @cpu_to_be32(i32 %339)
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 5
  store i8* %340, i8** %342, align 8
  %343 = load i32, i32* %19, align 4
  %344 = call i8* @cpu_to_be32(i32 %343)
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 4
  store i8* %344, i8** %346, align 8
  %347 = load i32, i32* %20, align 4
  %348 = call i8* @cpu_to_be32(i32 %347)
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 3
  store i8* %348, i8** %350, align 8
  %351 = load i32, i32* %21, align 4
  %352 = call i8* @cpu_to_be32(i32 %351)
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 2
  store i8* %352, i8** %354, align 8
  %355 = load i32, i32* %22, align 4
  %356 = call i8* @cpu_to_be32(i32 %355)
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 1
  store i8* %356, i8** %358, align 8
  %359 = load i32, i32* %23, align 4
  %360 = call i8* @cpu_to_be32(i32 %359)
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 0
  store i8* %360, i8** %362, align 8
  store i32 0, i32* %7, align 4
  br label %363

363:                                              ; preds = %326, %78
  %364 = load i32, i32* %7, align 4
  ret i32 %364
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @cypress_map_clkf_to_ibias(%struct.radeon_device*, i32) #1

declare dso_local i32 @CLKR(i32) #1

declare dso_local i32 @YCLK_POST_DIV(i32) #1

declare dso_local i32 @CLKF(i32) #1

declare dso_local i32 @CLKFRAC(i32) #1

declare dso_local i32 @IBIAS(i32) #1

declare dso_local i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, %struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i32 @rv740_get_decoded_reference_divider(i32) #1

declare dso_local i32 @CLKV(i32) #1

declare dso_local i32 @CLKS(i32) #1

declare dso_local i32 @rv740_get_dll_speed(i64, i32) #1

declare dso_local i32 @DLL_SPEED(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
