; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_populate_mclk_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_populate_mclk_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_power_info = type { i64, i64 }
%struct.si_power_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_mpll_param = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_atom_ss = type { i32, i32 }

@BWCTRL_MASK = common dso_local global i32 0, align 4
@CLKF_MASK = common dso_local global i32 0, align 4
@CLKFRAC_MASK = common dso_local global i32 0, align 4
@VCO_MODE_MASK = common dso_local global i32 0, align 4
@YCLK_POST_DIV_MASK = common dso_local global i32 0, align 4
@YCLK_SEL_MASK = common dso_local global i32 0, align 4
@ASIC_INTERNAL_MEMORY_SS = common dso_local global i32 0, align 4
@CLKV_MASK = common dso_local global i32 0, align 4
@CLKS_MASK = common dso_local global i32 0, align 4
@DLL_SPEED_MASK = common dso_local global i32 0, align 4
@MRDCK0_PDNB = common dso_local global i32 0, align 4
@MRDCK1_PDNB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, %struct.TYPE_9__*, i32, i32)* @si_populate_mclk_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_populate_mclk_value(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.TYPE_9__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rv7xx_power_info*, align 8
  %15 = alloca %struct.si_power_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.atom_mpll_param, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.radeon_atom_ss, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %33 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %34 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %33)
  store %struct.rv7xx_power_info* %34, %struct.rv7xx_power_info** %14, align 8
  %35 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %36 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %35)
  store %struct.si_power_info* %36, %struct.si_power_info** %15, align 8
  %37 = load %struct.si_power_info*, %struct.si_power_info** %15, align 8
  %38 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %16, align 4
  %41 = load %struct.si_power_info*, %struct.si_power_info** %15, align 8
  %42 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load %struct.si_power_info*, %struct.si_power_info** %15, align 8
  %46 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %18, align 4
  %49 = load %struct.si_power_info*, %struct.si_power_info** %15, align 8
  %50 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %19, align 4
  %53 = load %struct.si_power_info*, %struct.si_power_info** %15, align 8
  %54 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %20, align 4
  %57 = load %struct.si_power_info*, %struct.si_power_info** %15, align 8
  %58 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %21, align 4
  %61 = load %struct.si_power_info*, %struct.si_power_info** %15, align 8
  %62 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %22, align 4
  %65 = load %struct.si_power_info*, %struct.si_power_info** %15, align 8
  %66 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %23, align 4
  %69 = load %struct.si_power_info*, %struct.si_power_info** %15, align 8
  %70 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %24, align 4
  %73 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @radeon_atom_get_memory_pll_dividers(%struct.radeon_device* %73, i32 %74, i32 %75, %struct.atom_mpll_param* %25)
  store i32 %76, i32* %26, align 4
  %77 = load i32, i32* %26, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %6
  %80 = load i32, i32* %26, align 4
  store i32 %80, i32* %7, align 4
  br label %274

81:                                               ; preds = %6
  %82 = load i32, i32* @BWCTRL_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %20, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %20, align 4
  %86 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %25, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @BWCTRL(i32 %87)
  %89 = load i32, i32* %20, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* @CLKF_MASK, align 4
  %92 = load i32, i32* @CLKFRAC_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @VCO_MODE_MASK, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %21, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %21, align 4
  %99 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %25, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @CLKF(i32 %100)
  %102 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %25, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @CLKFRAC(i32 %103)
  %105 = or i32 %101, %104
  %106 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %25, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @VCO_MODE(i32 %107)
  %109 = or i32 %105, %108
  %110 = load i32, i32* %21, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %18, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %18, align 4
  %116 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %25, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @YCLK_POST_DIV(i32 %117)
  %119 = load i32, i32* %18, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %18, align 4
  %121 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %122 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %81
  %126 = load i32, i32* @YCLK_SEL_MASK, align 4
  %127 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %128 = or i32 %126, %127
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %19, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %19, align 4
  %132 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %25, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @YCLK_SEL(i32 %133)
  %135 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %25, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @YCLK_POST_DIV(i32 %136)
  %138 = or i32 %134, %137
  %139 = load i32, i32* %19, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %19, align 4
  br label %141

141:                                              ; preds = %125, %81
  %142 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %143 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %208

146:                                              ; preds = %141
  %147 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %30, align 4
  %152 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %14, align 8
  %153 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32, i32* %10, align 4
  %158 = mul nsw i32 %157, 4
  store i32 %158, i32* %28, align 4
  br label %162

159:                                              ; preds = %146
  %160 = load i32, i32* %10, align 4
  %161 = mul nsw i32 %160, 2
  store i32 %161, i32* %28, align 4
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32, i32* %28, align 4
  %164 = load i32, i32* %30, align 4
  %165 = sdiv i32 %163, %164
  store i32 %165, i32* %29, align 4
  %166 = load i32, i32* %29, align 4
  %167 = load i32, i32* %29, align 4
  %168 = mul nsw i32 %166, %167
  store i32 %168, i32* %29, align 4
  %169 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %170 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %171 = load i32, i32* %28, align 4
  %172 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %169, %struct.radeon_atom_ss* %27, i32 %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %207

174:                                              ; preds = %162
  %175 = load i32, i32* %30, align 4
  %176 = mul nsw i32 %175, 5
  %177 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %27, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sdiv i32 %176, %178
  store i32 %179, i32* %31, align 4
  %180 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %27, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 131, %181
  %183 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %27, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %182, %184
  %186 = sdiv i32 %185, 100
  %187 = load i32, i32* %29, align 4
  %188 = mul nsw i32 %186, %187
  %189 = load i32, i32* %28, align 4
  %190 = sdiv i32 %188, %189
  store i32 %190, i32* %32, align 4
  %191 = load i32, i32* @CLKV_MASK, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %23, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %23, align 4
  %195 = load i32, i32* %32, align 4
  %196 = call i32 @CLKV(i32 %195)
  %197 = load i32, i32* %23, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %23, align 4
  %199 = load i32, i32* @CLKS_MASK, align 4
  %200 = xor i32 %199, -1
  %201 = load i32, i32* %24, align 4
  %202 = and i32 %201, %200
  store i32 %202, i32* %24, align 4
  %203 = load i32, i32* %31, align 4
  %204 = call i32 @CLKS(i32 %203)
  %205 = load i32, i32* %24, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %24, align 4
  br label %207

207:                                              ; preds = %174, %162
  br label %208

208:                                              ; preds = %207, %141
  %209 = load i32, i32* @DLL_SPEED_MASK, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %17, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %17, align 4
  %213 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %25, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @DLL_SPEED(i32 %214)
  %216 = load i32, i32* %17, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %17, align 4
  %218 = load i32, i32* %13, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %208
  %221 = load i32, i32* @MRDCK0_PDNB, align 4
  %222 = load i32, i32* @MRDCK1_PDNB, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* %17, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %17, align 4
  br label %233

226:                                              ; preds = %208
  %227 = load i32, i32* @MRDCK0_PDNB, align 4
  %228 = load i32, i32* @MRDCK1_PDNB, align 4
  %229 = or i32 %227, %228
  %230 = xor i32 %229, -1
  %231 = load i32, i32* %17, align 4
  %232 = and i32 %231, %230
  store i32 %232, i32* %17, align 4
  br label %233

233:                                              ; preds = %226, %220
  %234 = load i32, i32* %10, align 4
  %235 = call i8* @cpu_to_be32(i32 %234)
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 9
  store i8* %235, i8** %237, align 8
  %238 = load i32, i32* %20, align 4
  %239 = call i8* @cpu_to_be32(i32 %238)
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 8
  store i8* %239, i8** %241, align 8
  %242 = load i32, i32* %21, align 4
  %243 = call i8* @cpu_to_be32(i32 %242)
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 7
  store i8* %243, i8** %245, align 8
  %246 = load i32, i32* %22, align 4
  %247 = call i8* @cpu_to_be32(i32 %246)
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 6
  store i8* %247, i8** %249, align 8
  %250 = load i32, i32* %18, align 4
  %251 = call i8* @cpu_to_be32(i32 %250)
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 5
  store i8* %251, i8** %253, align 8
  %254 = load i32, i32* %19, align 4
  %255 = call i8* @cpu_to_be32(i32 %254)
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 4
  store i8* %255, i8** %257, align 8
  %258 = load i32, i32* %17, align 4
  %259 = call i8* @cpu_to_be32(i32 %258)
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 3
  store i8* %259, i8** %261, align 8
  %262 = load i32, i32* %16, align 4
  %263 = call i8* @cpu_to_be32(i32 %262)
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 2
  store i8* %263, i8** %265, align 8
  %266 = load i32, i32* %23, align 4
  %267 = call i8* @cpu_to_be32(i32 %266)
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  store i8* %267, i8** %269, align 8
  %270 = load i32, i32* %24, align 4
  %271 = call i8* @cpu_to_be32(i32 %270)
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  store i8* %271, i8** %273, align 8
  store i32 0, i32* %7, align 4
  br label %274

274:                                              ; preds = %233, %79
  %275 = load i32, i32* %7, align 4
  ret i32 %275
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_memory_pll_dividers(%struct.radeon_device*, i32, i32, %struct.atom_mpll_param*) #1

declare dso_local i32 @BWCTRL(i32) #1

declare dso_local i32 @CLKF(i32) #1

declare dso_local i32 @CLKFRAC(i32) #1

declare dso_local i32 @VCO_MODE(i32) #1

declare dso_local i32 @YCLK_POST_DIV(i32) #1

declare dso_local i32 @YCLK_SEL(i32) #1

declare dso_local i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, %struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i32 @CLKV(i32) #1

declare dso_local i32 @CLKS(i32) #1

declare dso_local i32 @DLL_SPEED(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
