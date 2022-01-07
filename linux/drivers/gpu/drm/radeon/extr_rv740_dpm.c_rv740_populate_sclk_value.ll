; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv740_dpm.c_rv740_populate_sclk_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv740_dpm.c_rv740_populate_sclk_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_power_info = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.atom_clock_dividers = type { i32, i32 }
%struct.radeon_atom_ss = type { i32, i32 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@SPLL_PDIV_A_MASK = common dso_local global i32 0, align 4
@SPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@SCLK_MUX_SEL_MASK = common dso_local global i32 0, align 4
@SPLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@SPLL_DITHEN = common dso_local global i32 0, align 4
@ASIC_INTERNAL_ENGINE_SS = common dso_local global i32 0, align 4
@CLK_S_MASK = common dso_local global i32 0, align 4
@SSEN = common dso_local global i32 0, align 4
@CLK_V_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv740_populate_sclk_value(%struct.radeon_device* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.atom_clock_dividers, align 4
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
  %20 = alloca %struct.radeon_atom_ss, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %25 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %24)
  store %struct.rv7xx_power_info* %25, %struct.rv7xx_power_info** %8, align 8
  %26 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %27 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %32 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %37 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %42 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %47 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %14, align 4
  %51 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %16, align 4
  %56 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %57 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %56, i32 %57, i32 %58, i32 0, %struct.atom_clock_dividers* %9)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %3
  %63 = load i32, i32* %19, align 4
  store i32 %63, i32* %4, align 4
  br label %188

64:                                               ; preds = %3
  %65 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 1, %66
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %17, align 4
  %70 = mul nsw i32 %68, %69
  %71 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %70, %72
  %74 = mul nsw i32 %73, 16384
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @do_div(i32 %75, i32 %76)
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* @SPLL_PDIV_A_MASK, align 4
  %80 = load i32, i32* @SPLL_REF_DIV_MASK, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @SPLL_REF_DIV(i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @SPLL_PDIV_A(i32 %91)
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* @SCLK_MUX_SEL_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %11, align 4
  %99 = call i32 @SCLK_MUX_SEL(i32 2)
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* @SPLL_FB_DIV_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %18, align 4
  %107 = call i32 @SPLL_FB_DIV(i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* @SPLL_DITHEN, align 4
  %111 = load i32, i32* %12, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %12, align 4
  %113 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %114 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %163

117:                                              ; preds = %64
  %118 = load i32, i32* %6, align 4
  %119 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %118, %120
  store i32 %121, i32* %21, align 4
  %122 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %123 = load i32, i32* @ASIC_INTERNAL_ENGINE_SS, align 4
  %124 = load i32, i32* %21, align 4
  %125 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %122, %struct.radeon_atom_ss* %20, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %162

127:                                              ; preds = %117
  %128 = load i32, i32* %16, align 4
  %129 = mul nsw i32 %128, 5
  %130 = load i32, i32* %17, align 4
  %131 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %20, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %130, %132
  %134 = sdiv i32 %129, %133
  store i32 %134, i32* %22, align 4
  %135 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %20, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 4, %136
  %138 = load i32, i32* %18, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %22, align 4
  %141 = mul nsw i32 %140, 10000
  %142 = sdiv i32 %139, %141
  store i32 %142, i32* %23, align 4
  %143 = load i32, i32* @CLK_S_MASK, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %13, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %22, align 4
  %148 = call i32 @CLK_S(i32 %147)
  %149 = load i32, i32* %13, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* @SSEN, align 4
  %152 = load i32, i32* %13, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* @CLK_V_MASK, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %14, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %23, align 4
  %159 = call i32 @CLK_V(i32 %158)
  %160 = load i32, i32* %14, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %127, %117
  br label %163

163:                                              ; preds = %162, %64
  %164 = load i32, i32* %6, align 4
  %165 = call i8* @cpu_to_be32(i32 %164)
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 5
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* %10, align 4
  %169 = call i8* @cpu_to_be32(i32 %168)
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 4
  store i8* %169, i8** %171, align 8
  %172 = load i32, i32* %11, align 4
  %173 = call i8* @cpu_to_be32(i32 %172)
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i8* @cpu_to_be32(i32 %176)
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i8* @cpu_to_be32(i32 %180)
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i8* @cpu_to_be32(i32 %184)
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %163, %62
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @SPLL_REF_DIV(i32) #1

declare dso_local i32 @SPLL_PDIV_A(i32) #1

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
