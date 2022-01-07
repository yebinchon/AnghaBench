; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_calculate_mclk_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_calculate_mclk_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ci_power_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_mpll_param = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, %struct.TYPE_9__*, i32, i32)* @ci_calculate_mclk_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_calculate_mclk_params(%struct.radeon_device* %0, i32 %1, %struct.TYPE_9__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ci_power_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.atom_mpll_param, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.radeon_atom_ss, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %30 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %31 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %30)
  store %struct.ci_power_info* %31, %struct.ci_power_info** %12, align 8
  %32 = load %struct.ci_power_info*, %struct.ci_power_info** %12, align 8
  %33 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %13, align 4
  %36 = load %struct.ci_power_info*, %struct.ci_power_info** %12, align 8
  %37 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.ci_power_info*, %struct.ci_power_info** %12, align 8
  %41 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %15, align 4
  %44 = load %struct.ci_power_info*, %struct.ci_power_info** %12, align 8
  %45 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load %struct.ci_power_info*, %struct.ci_power_info** %12, align 8
  %49 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %17, align 4
  %52 = load %struct.ci_power_info*, %struct.ci_power_info** %12, align 8
  %53 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %18, align 4
  %56 = load %struct.ci_power_info*, %struct.ci_power_info** %12, align 8
  %57 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %19, align 4
  %60 = load %struct.ci_power_info*, %struct.ci_power_info** %12, align 8
  %61 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %20, align 4
  %64 = load %struct.ci_power_info*, %struct.ci_power_info** %12, align 8
  %65 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %21, align 4
  %68 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @radeon_atom_get_memory_pll_dividers(%struct.radeon_device* %68, i32 %69, i32 %70, %struct.atom_mpll_param* %22)
  store i32 %71, i32* %23, align 4
  %72 = load i32, i32* %23, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %5
  %75 = load i32, i32* %23, align 4
  store i32 %75, i32* %6, align 4
  br label %266

76:                                               ; preds = %5
  %77 = load i32, i32* @BWCTRL_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %17, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %17, align 4
  %81 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %22, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @BWCTRL(i32 %82)
  %84 = load i32, i32* %17, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* @CLKF_MASK, align 4
  %87 = load i32, i32* @CLKFRAC_MASK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @VCO_MODE_MASK, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %18, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %18, align 4
  %94 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %22, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @CLKF(i32 %95)
  %97 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %22, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @CLKFRAC(i32 %98)
  %100 = or i32 %96, %99
  %101 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %22, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @VCO_MODE(i32 %102)
  %104 = or i32 %100, %103
  %105 = load i32, i32* %18, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %15, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %15, align 4
  %111 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %22, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @YCLK_POST_DIV(i32 %112)
  %114 = load i32, i32* %15, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %15, align 4
  %116 = load %struct.ci_power_info*, %struct.ci_power_info** %12, align 8
  %117 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %76
  %121 = load i32, i32* @YCLK_SEL_MASK, align 4
  %122 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %16, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %16, align 4
  %127 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %22, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @YCLK_SEL(i32 %128)
  %130 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %22, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @YCLK_POST_DIV(i32 %131)
  %133 = or i32 %129, %132
  %134 = load i32, i32* %16, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %120, %76
  %137 = load %struct.ci_power_info*, %struct.ci_power_info** %12, align 8
  %138 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %210

141:                                              ; preds = %136
  %142 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %27, align 4
  %147 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %22, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %157

150:                                              ; preds = %141
  %151 = load i32, i32* %8, align 4
  %152 = mul nsw i32 %151, 4
  %153 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %22, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 1, %154
  %156 = mul nsw i32 %152, %155
  store i32 %156, i32* %25, align 4
  br label %164

157:                                              ; preds = %141
  %158 = load i32, i32* %8, align 4
  %159 = mul nsw i32 %158, 2
  %160 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %22, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 1, %161
  %163 = mul nsw i32 %159, %162
  store i32 %163, i32* %25, align 4
  br label %164

164:                                              ; preds = %157, %150
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* %27, align 4
  %167 = sdiv i32 %165, %166
  store i32 %167, i32* %26, align 4
  %168 = load i32, i32* %26, align 4
  %169 = load i32, i32* %26, align 4
  %170 = mul nsw i32 %168, %169
  store i32 %170, i32* %26, align 4
  %171 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %172 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %173 = load i32, i32* %25, align 4
  %174 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %171, %struct.radeon_atom_ss* %24, i32 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %209

176:                                              ; preds = %164
  %177 = load i32, i32* %27, align 4
  %178 = mul nsw i32 %177, 5
  %179 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %24, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sdiv i32 %178, %180
  store i32 %181, i32* %28, align 4
  %182 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %24, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 131, %183
  %185 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %24, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %184, %186
  %188 = sdiv i32 %187, 100
  %189 = load i32, i32* %26, align 4
  %190 = mul nsw i32 %188, %189
  %191 = load i32, i32* %25, align 4
  %192 = sdiv i32 %190, %191
  store i32 %192, i32* %29, align 4
  %193 = load i32, i32* @CLKV_MASK, align 4
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %20, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %20, align 4
  %197 = load i32, i32* %29, align 4
  %198 = call i32 @CLKV(i32 %197)
  %199 = load i32, i32* %20, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %20, align 4
  %201 = load i32, i32* @CLKS_MASK, align 4
  %202 = xor i32 %201, -1
  %203 = load i32, i32* %21, align 4
  %204 = and i32 %203, %202
  store i32 %204, i32* %21, align 4
  %205 = load i32, i32* %28, align 4
  %206 = call i32 @CLKS(i32 %205)
  %207 = load i32, i32* %21, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %21, align 4
  br label %209

209:                                              ; preds = %176, %164
  br label %210

210:                                              ; preds = %209, %136
  %211 = load i32, i32* @DLL_SPEED_MASK, align 4
  %212 = xor i32 %211, -1
  %213 = load i32, i32* %14, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %14, align 4
  %215 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %22, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @DLL_SPEED(i32 %216)
  %218 = load i32, i32* %14, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %210
  %223 = load i32, i32* @MRDCK0_PDNB, align 4
  %224 = load i32, i32* @MRDCK1_PDNB, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* %14, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %14, align 4
  br label %235

228:                                              ; preds = %210
  %229 = load i32, i32* @MRDCK0_PDNB, align 4
  %230 = load i32, i32* @MRDCK1_PDNB, align 4
  %231 = or i32 %229, %230
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %14, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %14, align 4
  br label %235

235:                                              ; preds = %228, %222
  %236 = load i32, i32* %8, align 4
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* %17, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* %18, align 4
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* %19, align 4
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %15, align 4
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 4
  %251 = load i32, i32* %16, align 4
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 5
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* %14, align 4
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 6
  store i32 %254, i32* %256, align 4
  %257 = load i32, i32* %13, align 4
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 7
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %20, align 4
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 8
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %21, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 9
  store i32 %263, i32* %265, align 4
  store i32 0, i32* %6, align 4
  br label %266

266:                                              ; preds = %235, %74
  %267 = load i32, i32* %6, align 4
  ret i32 %267
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
