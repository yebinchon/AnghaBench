; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_mclk_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_mclk_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_power_info = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, %struct.TYPE_13__*, i32, i32)* @cypress_populate_mclk_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_populate_mclk_value(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.TYPE_13__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rv7xx_power_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.atom_clock_dividers, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.radeon_atom_ss, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %35 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %34)
  store %struct.rv7xx_power_info* %35, %struct.rv7xx_power_info** %14, align 8
  %36 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %37 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %15, align 4
  %41 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %42 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  %46 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %47 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %17, align 4
  %51 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %52 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %18, align 4
  %56 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %57 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %19, align 4
  %61 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %62 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %20, align 4
  %66 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %67 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %21, align 4
  %71 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %72 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %22, align 4
  %76 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %77 = load i32, i32* @COMPUTE_MEMORY_PLL_PARAM, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %76, i32 %77, i32 %78, i32 %79, %struct.atom_clock_dividers* %23)
  store i32 %80, i32* %26, align 4
  %81 = load i32, i32* %26, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %6
  %84 = load i32, i32* %26, align 4
  store i32 %84, i32* %7, align 4
  br label %377

85:                                               ; preds = %6
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @MC_SEQ_MISC7, align 4
  %90 = call i32 @RREG32(i32 %89)
  store i32 %90, i32* %27, align 4
  %91 = load i32, i32* %27, align 4
  %92 = and i32 %91, 134217728
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %94, %88
  br label %97

97:                                               ; preds = %96, %85
  %98 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %99 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cypress_map_clkf_to_ibias(%struct.radeon_device* %98, i32 %100)
  store i32 %101, i32* %24, align 4
  %102 = load i32, i32* @CLKR_MASK, align 4
  %103 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @CLKF_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @CLKFRAC_MASK, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @IBIAS_MASK, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %15, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %15, align 4
  %114 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @CLKR(i32 %115)
  %117 = load i32, i32* %15, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %15, align 4
  %119 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @YCLK_POST_DIV(i32 %120)
  %122 = load i32, i32* %15, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %15, align 4
  %124 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @CLKF(i32 %125)
  %127 = load i32, i32* %15, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %15, align 4
  %129 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @CLKFRAC(i32 %130)
  %132 = load i32, i32* %15, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %24, align 4
  %135 = call i32 @IBIAS(i32 %134)
  %136 = load i32, i32* %15, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %15, align 4
  %138 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %97
  %142 = load i32, i32* @VCO_MODE, align 4
  %143 = load i32, i32* %16, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %16, align 4
  br label %150

145:                                              ; preds = %97
  %146 = load i32, i32* @VCO_MODE, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %16, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %16, align 4
  br label %150

150:                                              ; preds = %145, %141
  %151 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %152 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %217

155:                                              ; preds = %150
  %156 = load i32, i32* @CLKR_MASK, align 4
  %157 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @CLKF_MASK, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @CLKFRAC_MASK, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @IBIAS_MASK, align 4
  %164 = or i32 %162, %163
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %17, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %17, align 4
  %168 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @CLKR(i32 %169)
  %171 = load i32, i32* %17, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %17, align 4
  %173 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @YCLK_POST_DIV(i32 %174)
  %176 = load i32, i32* %17, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %17, align 4
  %178 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @CLKF(i32 %179)
  %181 = load i32, i32* %17, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %17, align 4
  %183 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @CLKFRAC(i32 %184)
  %186 = load i32, i32* %17, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %24, align 4
  %189 = call i32 @IBIAS(i32 %188)
  %190 = load i32, i32* %17, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %17, align 4
  %192 = load i32, i32* %12, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %155
  %195 = load i32, i32* @PDNB, align 4
  %196 = xor i32 %195, -1
  %197 = load i32, i32* %17, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %17, align 4
  br label %203

199:                                              ; preds = %155
  %200 = load i32, i32* @PDNB, align 4
  %201 = load i32, i32* %17, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %17, align 4
  br label %203

203:                                              ; preds = %199, %194
  %204 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load i32, i32* @VCO_MODE, align 4
  %209 = load i32, i32* %18, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %18, align 4
  br label %216

211:                                              ; preds = %203
  %212 = load i32, i32* @VCO_MODE, align 4
  %213 = xor i32 %212, -1
  %214 = load i32, i32* %18, align 4
  %215 = and i32 %214, %213
  store i32 %215, i32* %18, align 4
  br label %216

216:                                              ; preds = %211, %207
  br label %217

217:                                              ; preds = %216, %150
  %218 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %219 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %278

222:                                              ; preds = %217
  %223 = load i32, i32* %10, align 4
  %224 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 %223, %225
  store i32 %226, i32* %29, align 4
  %227 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %228 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %229 = load i32, i32* %29, align 4
  %230 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %227, %struct.radeon_atom_ss* %28, i32 %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %277

232:                                              ; preds = %222
  %233 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %234 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %30, align 4
  %238 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @rv740_get_decoded_reference_divider(i32 %239)
  store i32 %240, i32* %31, align 4
  %241 = load i32, i32* %30, align 4
  %242 = mul nsw i32 %241, 5
  %243 = load i32, i32* %31, align 4
  %244 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %28, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 %243, %245
  %247 = sdiv i32 %242, %246
  store i32 %247, i32* %32, align 4
  %248 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %28, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = mul nsw i32 16384, %251
  %253 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %23, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = mul nsw i32 2048, %254
  %256 = add nsw i32 %252, %255
  %257 = mul nsw i32 %249, %256
  %258 = load i32, i32* %32, align 4
  %259 = mul nsw i32 %258, 625
  %260 = sdiv i32 %257, %259
  store i32 %260, i32* %33, align 4
  %261 = load i32, i32* @CLKV_MASK, align 4
  %262 = xor i32 %261, -1
  %263 = load i32, i32* %21, align 4
  %264 = and i32 %263, %262
  store i32 %264, i32* %21, align 4
  %265 = load i32, i32* %33, align 4
  %266 = call i32 @CLKV(i32 %265)
  %267 = load i32, i32* %21, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %21, align 4
  %269 = load i32, i32* @CLKS_MASK, align 4
  %270 = xor i32 %269, -1
  %271 = load i32, i32* %22, align 4
  %272 = and i32 %271, %270
  store i32 %272, i32* %22, align 4
  %273 = load i32, i32* %32, align 4
  %274 = call i32 @CLKS(i32 %273)
  %275 = load i32, i32* %22, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %22, align 4
  br label %277

277:                                              ; preds = %232, %222
  br label %278

278:                                              ; preds = %277, %217
  %279 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %280 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i32, i32* %10, align 4
  %283 = call i32 @rv740_get_dll_speed(i64 %281, i32 %282)
  store i32 %283, i32* %25, align 4
  %284 = load i32, i32* @DLL_SPEED_MASK, align 4
  %285 = xor i32 %284, -1
  %286 = load i32, i32* %19, align 4
  %287 = and i32 %286, %285
  store i32 %287, i32* %19, align 4
  %288 = load i32, i32* %25, align 4
  %289 = call i32 @DLL_SPEED(i32 %288)
  %290 = load i32, i32* %19, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %19, align 4
  %292 = load i32, i32* %13, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %312

294:                                              ; preds = %278
  %295 = load i32, i32* @MRDCKA0_PDNB, align 4
  %296 = load i32, i32* @MRDCKA1_PDNB, align 4
  %297 = or i32 %295, %296
  %298 = load i32, i32* @MRDCKB0_PDNB, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @MRDCKB1_PDNB, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @MRDCKC0_PDNB, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @MRDCKC1_PDNB, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* @MRDCKD0_PDNB, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* @MRDCKD1_PDNB, align 4
  %309 = or i32 %307, %308
  %310 = load i32, i32* %19, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %19, align 4
  br label %331

312:                                              ; preds = %278
  %313 = load i32, i32* @MRDCKA0_PDNB, align 4
  %314 = load i32, i32* @MRDCKA1_PDNB, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* @MRDCKB0_PDNB, align 4
  %317 = or i32 %315, %316
  %318 = load i32, i32* @MRDCKB1_PDNB, align 4
  %319 = or i32 %317, %318
  %320 = load i32, i32* @MRDCKC0_PDNB, align 4
  %321 = or i32 %319, %320
  %322 = load i32, i32* @MRDCKC1_PDNB, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* @MRDCKD0_PDNB, align 4
  %325 = or i32 %323, %324
  %326 = load i32, i32* @MRDCKD1_PDNB, align 4
  %327 = or i32 %325, %326
  %328 = xor i32 %327, -1
  %329 = load i32, i32* %19, align 4
  %330 = and i32 %329, %328
  store i32 %330, i32* %19, align 4
  br label %331

331:                                              ; preds = %312, %294
  %332 = load i32, i32* %10, align 4
  %333 = call i8* @cpu_to_be32(i32 %332)
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 8
  store i8* %333, i8** %336, align 8
  %337 = load i32, i32* %15, align 4
  %338 = call i8* @cpu_to_be32(i32 %337)
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 7
  store i8* %338, i8** %341, align 8
  %342 = load i32, i32* %16, align 4
  %343 = call i8* @cpu_to_be32(i32 %342)
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 6
  store i8* %343, i8** %346, align 8
  %347 = load i32, i32* %17, align 4
  %348 = call i8* @cpu_to_be32(i32 %347)
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 5
  store i8* %348, i8** %351, align 8
  %352 = load i32, i32* %18, align 4
  %353 = call i8* @cpu_to_be32(i32 %352)
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 4
  store i8* %353, i8** %356, align 8
  %357 = load i32, i32* %19, align 4
  %358 = call i8* @cpu_to_be32(i32 %357)
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 3
  store i8* %358, i8** %361, align 8
  %362 = load i32, i32* %20, align 4
  %363 = call i8* @cpu_to_be32(i32 %362)
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 2
  store i8* %363, i8** %366, align 8
  %367 = load i32, i32* %21, align 4
  %368 = call i8* @cpu_to_be32(i32 %367)
  %369 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 1
  store i8* %368, i8** %371, align 8
  %372 = load i32, i32* %22, align 4
  %373 = call i8* @cpu_to_be32(i32 %372)
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 0
  store i8* %373, i8** %376, align 8
  store i32 0, i32* %7, align 4
  br label %377

377:                                              ; preds = %331, %83
  %378 = load i32, i32* %7, align 4
  ret i32 %378
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

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
