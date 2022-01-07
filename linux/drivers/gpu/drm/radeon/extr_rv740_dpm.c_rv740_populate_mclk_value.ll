; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv740_dpm.c_rv740_populate_mclk_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv740_dpm.c_rv740_populate_mclk_value.c"
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
@CLKR_MASK = common dso_local global i32 0, align 4
@YCLK_POST_DIV_MASK = common dso_local global i32 0, align 4
@CLKF_MASK = common dso_local global i32 0, align 4
@CLKFRAC_MASK = common dso_local global i32 0, align 4
@IBIAS_MASK = common dso_local global i32 0, align 4
@VCO_MODE = common dso_local global i32 0, align 4
@ASIC_INTERNAL_MEMORY_SS = common dso_local global i32 0, align 4
@CLKV_MASK = common dso_local global i32 0, align 4
@CLKS_MASK = common dso_local global i32 0, align 4
@DLL_SPEED_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv740_populate_mclk_value(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.rv7xx_power_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.atom_clock_dividers, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.radeon_atom_ss, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %29 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %30 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %29)
  store %struct.rv7xx_power_info* %30, %struct.rv7xx_power_info** %10, align 8
  %31 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %32 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %37 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %42 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %13, align 4
  %46 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %47 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %52 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %15, align 4
  %56 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %57 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  %61 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %62 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %17, align 4
  %66 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %67 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %18, align 4
  %71 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %72 = load i32, i32* @COMPUTE_MEMORY_PLL_PARAM, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %71, i32 %72, i32 %73, i32 0, %struct.atom_clock_dividers* %19)
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %22, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %4
  %78 = load i32, i32* %22, align 4
  store i32 %78, i32* %5, align 4
  br label %307

79:                                               ; preds = %4
  %80 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %81 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @rv770_map_clkf_to_ibias(%struct.radeon_device* %80, i32 %82)
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* @CLKR_MASK, align 4
  %85 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @CLKF_MASK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @CLKFRAC_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @IBIAS_MASK, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @CLKR(i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @YCLK_POST_DIV(i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @CLKF(i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  %111 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @CLKFRAC(i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %20, align 4
  %117 = call i32 @IBIAS(i32 %116)
  %118 = load i32, i32* %11, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %11, align 4
  %120 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %79
  %124 = load i32, i32* @VCO_MODE, align 4
  %125 = load i32, i32* %12, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %12, align 4
  br label %132

127:                                              ; preds = %79
  %128 = load i32, i32* @VCO_MODE, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %12, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %127, %123
  %133 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %134 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %187

137:                                              ; preds = %132
  %138 = load i32, i32* @CLKR_MASK, align 4
  %139 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @CLKF_MASK, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @CLKFRAC_MASK, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @IBIAS_MASK, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %13, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %13, align 4
  %150 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @CLKR(i32 %151)
  %153 = load i32, i32* %13, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %13, align 4
  %155 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @YCLK_POST_DIV(i32 %156)
  %158 = load i32, i32* %13, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %13, align 4
  %160 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @CLKF(i32 %161)
  %163 = load i32, i32* %13, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %13, align 4
  %165 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @CLKFRAC(i32 %166)
  %168 = load i32, i32* %13, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %20, align 4
  %171 = call i32 @IBIAS(i32 %170)
  %172 = load i32, i32* %13, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %137
  %178 = load i32, i32* @VCO_MODE, align 4
  %179 = load i32, i32* %14, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %14, align 4
  br label %186

181:                                              ; preds = %137
  %182 = load i32, i32* @VCO_MODE, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %14, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %181, %177
  br label %187

187:                                              ; preds = %186, %132
  %188 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %189 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %248

192:                                              ; preds = %187
  %193 = load i32, i32* %8, align 4
  %194 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %193, %195
  store i32 %196, i32* %24, align 4
  %197 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %198 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %199 = load i32, i32* %24, align 4
  %200 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %197, %struct.radeon_atom_ss* %23, i32 %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %247

202:                                              ; preds = %192
  %203 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %204 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %25, align 4
  %208 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @rv740_get_decoded_reference_divider(i32 %209)
  store i32 %210, i32* %26, align 4
  %211 = load i32, i32* %25, align 4
  %212 = mul nsw i32 %211, 5
  %213 = load i32, i32* %26, align 4
  %214 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %23, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %213, %215
  %217 = sdiv i32 %212, %216
  store i32 %217, i32* %27, align 4
  %218 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %23, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 262144, %219
  %221 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %19, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = sdiv i32 %224, 8
  %226 = add nsw i32 %222, %225
  %227 = mul nsw i32 %220, %226
  %228 = load i32, i32* %27, align 4
  %229 = mul nsw i32 %228, 10000
  %230 = sdiv i32 %227, %229
  store i32 %230, i32* %28, align 4
  %231 = load i32, i32* @CLKV_MASK, align 4
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %17, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %17, align 4
  %235 = load i32, i32* %28, align 4
  %236 = call i32 @CLKV(i32 %235)
  %237 = load i32, i32* %17, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* @CLKS_MASK, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %18, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %18, align 4
  %243 = load i32, i32* %27, align 4
  %244 = call i32 @CLKS(i32 %243)
  %245 = load i32, i32* %18, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %18, align 4
  br label %247

247:                                              ; preds = %202, %192
  br label %248

248:                                              ; preds = %247, %187
  %249 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %250 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @rv740_get_dll_speed(i64 %251, i32 %252)
  store i32 %253, i32* %21, align 4
  %254 = load i32, i32* @DLL_SPEED_MASK, align 4
  %255 = xor i32 %254, -1
  %256 = load i32, i32* %15, align 4
  %257 = and i32 %256, %255
  store i32 %257, i32* %15, align 4
  %258 = load i32, i32* %21, align 4
  %259 = call i32 @DLL_SPEED(i32 %258)
  %260 = load i32, i32* %15, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %15, align 4
  %262 = load i32, i32* %8, align 4
  %263 = call i8* @cpu_to_be32(i32 %262)
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 8
  store i8* %263, i8** %266, align 8
  %267 = load i32, i32* %11, align 4
  %268 = call i8* @cpu_to_be32(i32 %267)
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 7
  store i8* %268, i8** %271, align 8
  %272 = load i32, i32* %12, align 4
  %273 = call i8* @cpu_to_be32(i32 %272)
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 6
  store i8* %273, i8** %276, align 8
  %277 = load i32, i32* %13, align 4
  %278 = call i8* @cpu_to_be32(i32 %277)
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 5
  store i8* %278, i8** %281, align 8
  %282 = load i32, i32* %14, align 4
  %283 = call i8* @cpu_to_be32(i32 %282)
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 4
  store i8* %283, i8** %286, align 8
  %287 = load i32, i32* %15, align 4
  %288 = call i8* @cpu_to_be32(i32 %287)
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 3
  store i8* %288, i8** %291, align 8
  %292 = load i32, i32* %16, align 4
  %293 = call i8* @cpu_to_be32(i32 %292)
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 2
  store i8* %293, i8** %296, align 8
  %297 = load i32, i32* %17, align 4
  %298 = call i8* @cpu_to_be32(i32 %297)
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 1
  store i8* %298, i8** %301, align 8
  %302 = load i32, i32* %18, align 4
  %303 = call i8* @cpu_to_be32(i32 %302)
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  store i8* %303, i8** %306, align 8
  store i32 0, i32* %5, align 4
  br label %307

307:                                              ; preds = %248, %77
  %308 = load i32, i32* %5, align 4
  ret i32 %308
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @rv770_map_clkf_to_ibias(%struct.radeon_device*, i32) #1

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
