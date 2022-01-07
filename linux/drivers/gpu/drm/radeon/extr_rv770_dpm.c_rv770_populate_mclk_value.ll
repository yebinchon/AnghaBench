; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_mclk_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_mclk_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_power_info = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.atom_clock_dividers = type { i32, i64, i32 }

@__const.rv770_populate_mclk_value.encoded_reference_dividers = private unnamed_addr constant [5 x i32] [i32 0, i32 16, i32 17, i32 20, i32 21], align 16
@COMPUTE_MEMORY_PLL_PARAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLKR_MASK = common dso_local global i32 0, align 4
@YCLK_POST_DIV_MASK = common dso_local global i32 0, align 4
@CLKF_MASK = common dso_local global i32 0, align 4
@CLKFRAC_MASK = common dso_local global i32 0, align 4
@IBIAS_MASK = common dso_local global i32 0, align 4
@VCO_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, %struct.TYPE_13__*)* @rv770_populate_mclk_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_populate_mclk_value(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.rv7xx_power_info*, align 8
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.atom_clock_dividers, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %26 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %25)
  store %struct.rv7xx_power_info* %26, %struct.rv7xx_power_info** %10, align 8
  %27 = bitcast [5 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([5 x i32]* @__const.rv770_populate_mclk_value.encoded_reference_dividers to i8*), i64 20, i1 false)
  %28 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %29 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  %33 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %34 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %39 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %14, align 4
  %43 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %44 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  %48 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %49 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %16, align 4
  %53 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %54 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %17, align 4
  %58 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %19, align 4
  %63 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %64 = load i32, i32* @COMPUTE_MEMORY_PLL_PARAM, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %63, i32 %64, i32 %65, i32 0, %struct.atom_clock_dividers* %18)
  store i32 %66, i32* %24, align 4
  %67 = load i32, i32* %24, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %4
  %70 = load i32, i32* %24, align 4
  store i32 %70, i32* %5, align 4
  br label %258

71:                                               ; preds = %4
  %72 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 5
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %71
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %258

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %86 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @rv770_calculate_fractional_mpll_feedback_divider(i32 %83, i32 %84, i64 %87, %struct.atom_clock_dividers* %18, i32* %20, i32* %21)
  %89 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @rv770_encode_yclk_post_div(i32 %90, i32* %22)
  store i32 %91, i32* %24, align 4
  %92 = load i32, i32* %24, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* %24, align 4
  store i32 %95, i32* %5, align 4
  br label %258

96:                                               ; preds = %82
  %97 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %98 = load i32, i32* %20, align 4
  %99 = call i32 @rv770_map_clkf_to_ibias(%struct.radeon_device* %97, i32 %98)
  store i32 %99, i32* %23, align 4
  %100 = load i32, i32* @CLKR_MASK, align 4
  %101 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @CLKF_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @CLKFRAC_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @IBIAS_MASK, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %12, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %12, align 4
  %112 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @CLKR(i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @YCLK_POST_DIV(i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %20, align 4
  %126 = call i32 @CLKF(i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %21, align 4
  %130 = call i32 @CLKFRAC(i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %23, align 4
  %134 = call i32 @IBIAS(i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %96
  %141 = load i32, i32* @VCO_MODE, align 4
  %142 = load i32, i32* %13, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %13, align 4
  br label %149

144:                                              ; preds = %96
  %145 = load i32, i32* @VCO_MODE, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %13, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %144, %140
  %150 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %151 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %222

154:                                              ; preds = %149
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %158 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @rv770_calculate_fractional_mpll_feedback_divider(i32 %155, i32 %156, i64 %159, %struct.atom_clock_dividers* %18, i32* %20, i32* %21)
  %161 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %162 = load i32, i32* %20, align 4
  %163 = call i32 @rv770_map_clkf_to_ibias(%struct.radeon_device* %161, i32 %162)
  store i32 %163, i32* %23, align 4
  %164 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @rv770_encode_yclk_post_div(i32 %165, i32* %22)
  store i32 %166, i32* %24, align 4
  %167 = load i32, i32* %24, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %154
  %170 = load i32, i32* %24, align 4
  store i32 %170, i32* %5, align 4
  br label %258

171:                                              ; preds = %154
  %172 = load i32, i32* @CLKR_MASK, align 4
  %173 = load i32, i32* @YCLK_POST_DIV_MASK, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @CLKF_MASK, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @CLKFRAC_MASK, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @IBIAS_MASK, align 4
  %180 = or i32 %178, %179
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %14, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %14, align 4
  %184 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @CLKR(i32 %189)
  %191 = load i32, i32* %14, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %22, align 4
  %194 = call i32 @YCLK_POST_DIV(i32 %193)
  %195 = load i32, i32* %14, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* %20, align 4
  %198 = call i32 @CLKF(i32 %197)
  %199 = load i32, i32* %14, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* %21, align 4
  %202 = call i32 @CLKFRAC(i32 %201)
  %203 = load i32, i32* %14, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %23, align 4
  %206 = call i32 @IBIAS(i32 %205)
  %207 = load i32, i32* %14, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %14, align 4
  %209 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %171
  %213 = load i32, i32* @VCO_MODE, align 4
  %214 = load i32, i32* %15, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %15, align 4
  br label %221

216:                                              ; preds = %171
  %217 = load i32, i32* @VCO_MODE, align 4
  %218 = xor i32 %217, -1
  %219 = load i32, i32* %15, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %15, align 4
  br label %221

221:                                              ; preds = %216, %212
  br label %222

222:                                              ; preds = %221, %149
  %223 = load i32, i32* %8, align 4
  %224 = call i8* @cpu_to_be32(i32 %223)
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 6
  store i8* %224, i8** %227, align 8
  %228 = load i32, i32* %12, align 4
  %229 = call i8* @cpu_to_be32(i32 %228)
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 5
  store i8* %229, i8** %232, align 8
  %233 = load i32, i32* %13, align 4
  %234 = call i8* @cpu_to_be32(i32 %233)
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 4
  store i8* %234, i8** %237, align 8
  %238 = load i32, i32* %14, align 4
  %239 = call i8* @cpu_to_be32(i32 %238)
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 3
  store i8* %239, i8** %242, align 8
  %243 = load i32, i32* %15, align 4
  %244 = call i8* @cpu_to_be32(i32 %243)
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 2
  store i8* %244, i8** %247, align 8
  %248 = load i32, i32* %16, align 4
  %249 = call i8* @cpu_to_be32(i32 %248)
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  store i8* %249, i8** %252, align 8
  %253 = load i32, i32* %17, align 4
  %254 = call i8* @cpu_to_be32(i32 %253)
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  store i8* %254, i8** %257, align 8
  store i32 0, i32* %5, align 4
  br label %258

258:                                              ; preds = %222, %169, %94, %79, %69
  %259 = load i32, i32* %5, align 4
  ret i32 %259
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @rv770_calculate_fractional_mpll_feedback_divider(i32, i32, i64, %struct.atom_clock_dividers*, i32*, i32*) #1

declare dso_local i32 @rv770_encode_yclk_post_div(i32, i32*) #1

declare dso_local i32 @rv770_map_clkf_to_ibias(%struct.radeon_device*, i32) #1

declare dso_local i32 @CLKR(i32) #1

declare dso_local i32 @YCLK_POST_DIV(i32) #1

declare dso_local i32 @CLKF(i32) #1

declare dso_local i32 @CLKFRAC(i32) #1

declare dso_local i32 @IBIAS(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
