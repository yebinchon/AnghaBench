; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_populate_mclk_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_populate_mclk_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_power_info = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_clock_dividers = type { i32, i32, i32, i64, i64 }
%struct.radeon_atom_ss = type { i32, i32 }

@COMPUTE_MEMORY_PLL_PARAM = common dso_local global i32 0, align 4
@MPLL_DIVEN = common dso_local global i32 0, align 4
@MPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@MPLL_HILEN_MASK = common dso_local global i32 0, align 4
@MPLL_LOLEN_MASK = common dso_local global i32 0, align 4
@MPLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@MPLL_DITHEN = common dso_local global i32 0, align 4
@ASIC_INTERNAL_MEMORY_SS = common dso_local global i32 0, align 4
@CLK_S_MASK = common dso_local global i32 0, align 4
@SSEN = common dso_local global i32 0, align 4
@CLK_V_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv730_populate_mclk_value(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.TYPE_13__* %3) #0 {
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
  %18 = alloca %struct.atom_clock_dividers, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.radeon_atom_ss, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %28 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %27)
  store %struct.rv7xx_power_info* %28, %struct.rv7xx_power_info** %10, align 8
  %29 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %30 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %35 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %40 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  %44 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %45 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %50 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %15, align 4
  %54 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %55 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %16, align 4
  %59 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %60 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %17, align 4
  %64 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %65 = load i32, i32* @COMPUTE_MEMORY_PLL_PARAM, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %64, i32 %65, i32 %66, i32 0, %struct.atom_clock_dividers* %18)
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %21, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %4
  %71 = load i32, i32* %21, align 4
  store i32 %71, i32* %5, align 4
  br label %247

72:                                               ; preds = %4
  %73 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %20, align 4
  %76 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 4
  %83 = and i32 %82, 15
  %84 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 15
  %87 = add nsw i32 %83, %86
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %19, align 4
  br label %90

89:                                               ; preds = %72
  store i32 1, i32* %19, align 4
  br label %90

90:                                               ; preds = %89, %79
  %91 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @MPLL_DIVEN, align 4
  %96 = load i32, i32* %13, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %13, align 4
  br label %103

98:                                               ; preds = %90
  %99 = load i32, i32* @MPLL_DIVEN, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %13, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %98, %94
  %104 = load i32, i32* @MPLL_REF_DIV_MASK, align 4
  %105 = load i32, i32* @MPLL_HILEN_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @MPLL_LOLEN_MASK, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %13, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @MPLL_REF_DIV(i32 %113)
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  %117 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 4
  %120 = and i32 %119, 15
  %121 = call i32 @MPLL_HILEN(i32 %120)
  %122 = load i32, i32* %13, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %13, align 4
  %124 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 15
  %127 = call i32 @MPLL_LOLEN(i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* @MPLL_FB_DIV_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %15, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %15, align 4
  %134 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @MPLL_FB_DIV(i32 %135)
  %137 = load i32, i32* %15, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %15, align 4
  %139 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %103
  %143 = load i32, i32* @MPLL_DITHEN, align 4
  %144 = load i32, i32* %15, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %15, align 4
  br label %151

146:                                              ; preds = %103
  %147 = load i32, i32* @MPLL_DITHEN, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %15, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %15, align 4
  br label %151

151:                                              ; preds = %146, %142
  %152 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %153 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %206

156:                                              ; preds = %151
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %19, align 4
  %159 = mul nsw i32 %157, %158
  store i32 %159, i32* %23, align 4
  %160 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %161 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %162 = load i32, i32* %23, align 4
  %163 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %160, %struct.radeon_atom_ss* %22, i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %205

165:                                              ; preds = %156
  %166 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %24, align 4
  %171 = load i32, i32* %24, align 4
  %172 = mul nsw i32 %171, 5
  %173 = load i32, i32* %20, align 4
  %174 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %22, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %173, %175
  %177 = sdiv i32 %172, %176
  store i32 %177, i32* %25, align 4
  %178 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %22, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %18, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = mul nsw i32 %179, %181
  %183 = load i32, i32* %25, align 4
  %184 = mul nsw i32 %183, 10000
  %185 = sdiv i32 %182, %184
  store i32 %185, i32* %26, align 4
  %186 = load i32, i32* @CLK_S_MASK, align 4
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %16, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %16, align 4
  %190 = load i32, i32* %25, align 4
  %191 = call i32 @CLK_S(i32 %190)
  %192 = load i32, i32* %16, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* @SSEN, align 4
  %195 = load i32, i32* %16, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %16, align 4
  %197 = load i32, i32* @CLK_V_MASK, align 4
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %17, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %17, align 4
  %201 = load i32, i32* %26, align 4
  %202 = call i32 @CLK_V(i32 %201)
  %203 = load i32, i32* %16, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %16, align 4
  br label %205

205:                                              ; preds = %165, %156
  br label %206

206:                                              ; preds = %205, %151
  %207 = load i32, i32* %11, align 4
  %208 = call i8* @cpu_to_be32(i32 %207)
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 7
  store i8* %208, i8** %211, align 8
  %212 = load i32, i32* %12, align 4
  %213 = call i8* @cpu_to_be32(i32 %212)
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 6
  store i8* %213, i8** %216, align 8
  %217 = load i32, i32* %8, align 4
  %218 = call i8* @cpu_to_be32(i32 %217)
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 5
  store i8* %218, i8** %221, align 8
  %222 = load i32, i32* %13, align 4
  %223 = call i8* @cpu_to_be32(i32 %222)
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 4
  store i8* %223, i8** %226, align 8
  %227 = load i32, i32* %14, align 4
  %228 = call i8* @cpu_to_be32(i32 %227)
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 3
  store i8* %228, i8** %231, align 8
  %232 = load i32, i32* %15, align 4
  %233 = call i8* @cpu_to_be32(i32 %232)
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  store i8* %233, i8** %236, align 8
  %237 = load i32, i32* %16, align 4
  %238 = call i8* @cpu_to_be32(i32 %237)
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 1
  store i8* %238, i8** %241, align 8
  %242 = load i32, i32* %17, align 4
  %243 = call i8* @cpu_to_be32(i32 %242)
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  store i8* %243, i8** %246, align 8
  store i32 0, i32* %5, align 4
  br label %247

247:                                              ; preds = %206, %70
  %248 = load i32, i32* %5, align 4
  ret i32 %248
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @MPLL_REF_DIV(i32) #1

declare dso_local i32 @MPLL_HILEN(i32) #1

declare dso_local i32 @MPLL_LOLEN(i32) #1

declare dso_local i32 @MPLL_FB_DIV(i32) #1

declare dso_local i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, %struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i32 @CLK_S(i32) #1

declare dso_local i32 @CLK_V(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
