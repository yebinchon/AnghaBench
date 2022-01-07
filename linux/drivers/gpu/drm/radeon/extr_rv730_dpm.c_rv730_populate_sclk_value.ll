; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_populate_sclk_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_populate_sclk_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_power_info = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.atom_clock_dividers = type { i32, i32, i64 }
%struct.radeon_atom_ss = type { i32, i32 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@SPLL_DIVEN = common dso_local global i32 0, align 4
@SPLL_HILEN_MASK = common dso_local global i32 0, align 4
@SPLL_LOLEN_MASK = common dso_local global i32 0, align 4
@SPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@SCLK_MUX_SEL_MASK = common dso_local global i32 0, align 4
@SPLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@SPLL_DITHEN = common dso_local global i32 0, align 4
@ASIC_INTERNAL_ENGINE_SS = common dso_local global i32 0, align 4
@CLK_S_MASK = common dso_local global i32 0, align 4
@SSEN = common dso_local global i32 0, align 4
@CLK_V_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv730_populate_sclk_value(%struct.radeon_device* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.atom_clock_dividers, align 8
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
  %21 = alloca %struct.radeon_atom_ss, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %26 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %25)
  store %struct.rv7xx_power_info* %26, %struct.rv7xx_power_info** %8, align 8
  %27 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %28 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %33 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %38 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  %42 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %43 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %48 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %14, align 4
  %52 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %16, align 4
  %57 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %58 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %57, i32 %58, i32 %59, i32 0, %struct.atom_clock_dividers* %9)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %3
  %64 = load i32, i32* %20, align 4
  store i32 %64, i32* %4, align 4
  br label %224

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 1, %67
  store i32 %68, i32* %17, align 4
  %69 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 4
  %76 = and i32 %75, 15
  %77 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 15
  %80 = add nsw i32 %76, %79
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %18, align 4
  br label %83

82:                                               ; preds = %65
  store i32 1, i32* %18, align 4
  br label %83

83:                                               ; preds = %82, %72
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %17, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %18, align 4
  %88 = mul nsw i32 %86, %87
  %89 = mul nsw i32 %88, 16384
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @do_div(i32 %90, i32 %91)
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %19, align 4
  %94 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %83
  %98 = load i32, i32* @SPLL_DIVEN, align 4
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %106

101:                                              ; preds = %83
  %102 = load i32, i32* @SPLL_DIVEN, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %101, %97
  %107 = load i32, i32* @SPLL_HILEN_MASK, align 4
  %108 = load i32, i32* @SPLL_LOLEN_MASK, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SPLL_REF_DIV_MASK, align 4
  %111 = or i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %10, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %10, align 4
  %115 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @SPLL_REF_DIV(i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 4
  %123 = and i32 %122, 15
  %124 = call i32 @SPLL_HILEN(i32 %123)
  %125 = load i32, i32* %10, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %10, align 4
  %127 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 15
  %130 = call i32 @SPLL_LOLEN(i32 %129)
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* @SCLK_MUX_SEL_MASK, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %11, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %11, align 4
  %137 = call i32 @SCLK_MUX_SEL(i32 2)
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* @SPLL_FB_DIV_MASK, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %12, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %19, align 4
  %145 = call i32 @SPLL_FB_DIV(i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* @SPLL_DITHEN, align 4
  %149 = load i32, i32* %12, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %12, align 4
  %151 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %152 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %199

155:                                              ; preds = %106
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %18, align 4
  %158 = mul nsw i32 %156, %157
  store i32 %158, i32* %22, align 4
  %159 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %160 = load i32, i32* @ASIC_INTERNAL_ENGINE_SS, align 4
  %161 = load i32, i32* %22, align 4
  %162 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %159, %struct.radeon_atom_ss* %21, i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %198

164:                                              ; preds = %155
  %165 = load i32, i32* %16, align 4
  %166 = mul nsw i32 %165, 5
  %167 = load i32, i32* %17, align 4
  %168 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %21, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %167, %169
  %171 = sdiv i32 %166, %170
  store i32 %171, i32* %23, align 4
  %172 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %21, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %19, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load i32, i32* %23, align 4
  %177 = mul nsw i32 %176, 10000
  %178 = sdiv i32 %175, %177
  store i32 %178, i32* %24, align 4
  %179 = load i32, i32* @CLK_S_MASK, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %13, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %23, align 4
  %184 = call i32 @CLK_S(i32 %183)
  %185 = load i32, i32* %13, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* @SSEN, align 4
  %188 = load i32, i32* %13, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* @CLK_V_MASK, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %14, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %14, align 4
  %194 = load i32, i32* %24, align 4
  %195 = call i32 @CLK_V(i32 %194)
  %196 = load i32, i32* %14, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %164, %155
  br label %199

199:                                              ; preds = %198, %106
  %200 = load i32, i32* %6, align 4
  %201 = call i8* @cpu_to_be32(i32 %200)
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 5
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* %10, align 4
  %205 = call i8* @cpu_to_be32(i32 %204)
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 4
  store i8* %205, i8** %207, align 8
  %208 = load i32, i32* %11, align 4
  %209 = call i8* @cpu_to_be32(i32 %208)
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  store i8* %209, i8** %211, align 8
  %212 = load i32, i32* %12, align 4
  %213 = call i8* @cpu_to_be32(i32 %212)
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  store i8* %213, i8** %215, align 8
  %216 = load i32, i32* %13, align 4
  %217 = call i8* @cpu_to_be32(i32 %216)
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  store i8* %217, i8** %219, align 8
  %220 = load i32, i32* %14, align 4
  %221 = call i8* @cpu_to_be32(i32 %220)
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  store i8* %221, i8** %223, align 8
  store i32 0, i32* %4, align 4
  br label %224

224:                                              ; preds = %199, %63
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @SPLL_REF_DIV(i32) #1

declare dso_local i32 @SPLL_HILEN(i32) #1

declare dso_local i32 @SPLL_LOLEN(i32) #1

declare dso_local i32 @SCLK_MUX_SEL(i32) #1

declare dso_local i32 @SPLL_FB_DIV(i32) #1

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
